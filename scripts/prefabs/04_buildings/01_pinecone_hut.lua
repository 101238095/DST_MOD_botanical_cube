-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[
        松果小屋 完全调用帐篷的参数
]]--
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local assets =
{
    Asset("ANIM", "anim/botanical_cube_building_pinecone_hut.zip"),
    
}

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- workable

    local function OnFinishCallback(inst,worker)
        inst.components.lootdropper:DropLoot()
        local fx = SpawnPrefab("collapse_small") -- 烟雾小的那个
        fx.Transform:SetPosition(inst.Transform:GetWorldPosition())
        inst:Remove()
    end
    local function workable_install(inst)
        inst:AddComponent("workable")
        inst.components.workable:SetWorkAction(ACTIONS.DIG) -- 是松果做的用铲子挖掘就行了

        inst.components.workable:SetWorkLeft(6)

        inst.components.workable:SetOnFinishCallback(OnFinishCallback)



        local old_WorkedBy = inst.components.workable.WorkedBy
        inst.components.workable.WorkedBy = function(self,worker, numworks,...)
            if worker and worker:HasTag("player") then
                return old_WorkedBy(self,worker, numworks,...)
            end
        end
        local old_WorkedBy_Internal = inst.components.workable.WorkedBy_Internal
        inst.components.workable.WorkedBy_Internal = function(self,worker, numworks,...)
            if worker and worker:HasTag("player") then
                return old_WorkedBy_Internal(self,worker, numworks,...)
            end
        end
    end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    local function sleeping_task_in_player(inst,player) --- 玩家周期性任务
        --------------------------------------------------------------------------
        --- 切换检查参数
            if player:HasTag("player") then
                inst.components.sleepingbag.hunger_tick = TUNING.SLEEP_HUNGER_PER_TICK
                inst.components.sleepingbag.health_tick = TUNING.SLEEP_HEALTH_PER_TICK
                inst.components.sleepingbag.sanity_tick = TUNING.SLEEP_SANITY_PER_TICK
            end
        --------------------------------------------------------------------------
        --- 血量上限
            if player.components.health then
                player.components.health:DeltaPenalty(-0.05)
            end
        --------------------------------------------------------------------------
    end
    local function onignite(inst)
        inst.components.sleepingbag:DoWakeUp()
    end
    local function onwake(inst, sleeper, nostatechange) --- 玩家醒来
        sleeper:RemoveEventCallback("onignite", onignite, inst)
        if inst.sleepingbag_task[sleeper] then
            inst.sleepingbag_task[sleeper]:Cancel()
            inst.sleepingbag_task[sleeper] = nil
        end
    end
    local function onsleep(inst, sleeper)       --- 玩家入睡
        sleeper:ListenForEvent("onignite", onignite, inst)

        if inst.sleepingbag_task[sleeper] then
            inst.sleepingbag_task[sleeper]:Cancel()
        end
        ---- 重新初始化帐篷的参数
        inst.components.sleepingbag.hunger_tick = TUNING.SLEEP_HUNGER_PER_TICK
        inst.components.sleepingbag.health_tick = TUNING.SLEEP_HEALTH_PER_TICK
        inst.components.sleepingbag.sanity_tick = TUNING.SLEEP_SANITY_PER_TICK
        inst.sleepingbag_task[sleeper] = inst:DoPeriodicTask(1,function()

            sleeping_task_in_player(inst,sleeper)

        end)
    end
    
    local function temperaturetick(inst, sleeper)  --- 温度控制
        if sleeper.components.temperature ~= nil then
            if inst.is_cooling then
                if sleeper.components.temperature:GetCurrent() > TUNING.SLEEP_TARGET_TEMP_TENT then
                    sleeper.components.temperature:SetTemperature(sleeper.components.temperature:GetCurrent() - TUNING.SLEEP_TEMP_PER_TICK)
                end
            elseif sleeper.components.temperature:GetCurrent() < TUNING.SLEEP_TARGET_TEMP_TENT then
                sleeper.components.temperature:SetTemperature(sleeper.components.temperature:GetCurrent() + TUNING.SLEEP_TEMP_PER_TICK)
            end
        end
    end
    local function sleepingbag_install(inst)
        inst:AddComponent("sleepingbag")
        inst.components.sleepingbag.onsleep = onsleep
        inst.components.sleepingbag.onwake = onwake
        ------------------------------------------------------------------
        -- 让帐篷全天候可进去
            local function GetPhase()
                if TheWorld.state.phase == "day" then
                    inst:AddTag("siestahut")
                    return "day"
                end
                inst:RemoveTag("siestahut")
                return "night"
            end
            inst.components.sleepingbag.GetSleepPhase = function()
                return TheWorld.state.phase
            end
            inst:DoTaskInTime(0,function()
                inst.components.sleepingbag:SetSleepPhase(GetPhase())
            end)
            inst:WatchWorldState("phase",function()
                inst.components.sleepingbag:SetSleepPhase(GetPhase())                
            end)
        ------------------------------------------------------------------

        --convert wetness delta to drying rate
        inst.components.sleepingbag.dryingrate = math.max(0, -TUNING.SLEEP_WETNESS_PER_TICK / TUNING.SLEEP_TICK_PERIOD)
        inst.components.sleepingbag:SetTemperatureTickFn(temperaturetick)
        -----------------------------------------------------------
        --- 因意外移除而取消任务
            inst.sleepingbag_task = {}
        -----------------------------------------------------------
    end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddLight()
    inst.entity:AddSoundEmitter()
    inst.entity:AddMiniMapEntity()
    inst.entity:AddNetwork()

    MakeObstaclePhysics(inst, 1)


    inst.MiniMapEntity:SetIcon("botanical_cube_building_pinecone_hut.tex")

    inst.AnimState:SetBank("botanical_cube_building_pinecone_hut")
    inst.AnimState:SetBuild("botanical_cube_building_pinecone_hut")
    inst.AnimState:PlayAnimation("idle",true)

    inst:AddTag("tent")

    inst:AddTag("structure")

    inst:AddTag("engineering")
    inst:AddTag("NOBLOCK")
    -- inst:AddTag("engineeringbatterypowered") 

    inst:AddTag("botanical_cube_building_pinecone_hut")

    -----------------------------------------------------------
    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end
    -----------------------------------------------------------
    --- 
    -----------------------------------------------------------
    --- 
        inst:AddComponent("inspectable")
    -----------------------------------------------------------
    --- 
        inst:AddComponent("lootdropper")
    -----------------------------------------------------------
    --- 官方的workable
        workable_install(inst)
        inst:ListenForEvent("onbuilt",function()  -- 玩家刚刚建立的时候 可以用来播放动画和声音
            -- inst.SoundEmitter:PlaySound("dontstarve/common/chest_trap")
            inst.AnimState:PlayAnimation("place")
            -- inst.AnimState:PushAnimation("idle",true)
        
        end)
    -----------------------------------------------------------
    --- 官方的睡袋系统
        sleepingbag_install(inst)
    -----------------------------------------------------------
    inst.AddBatteryPower = function() end
    -----------------------------------------------------------

    MakeHauntableLaunch(inst)

    return inst
end

----------------------------------------------------------------------------------------------------------------------
--- placer
    -- local function CreatePlacerSpotlight()
    --     local inst = CreateEntity()

    --     --[[Non-networked entity]]
    --     inst.entity:SetCanSleep(false)
    --     inst.persists = false

    --     inst.entity:AddTransform()
    --     inst.entity:AddAnimState()

    --     inst:AddTag("CLASSIFIED")
    --     inst:AddTag("NOCLICK")
    --     inst:AddTag("placer")

    --     inst.Transform:SetTwoFaced()

    --     inst.AnimState:SetBank("loramia_building_mysterious_creation")
    --     inst.AnimState:SetBuild("loramia_building_mysterious_creation")
    --     inst.AnimState:PlayAnimation("idle")
    --     inst.AnimState:SetLightOverride(1)

    --     return inst
    -- end
    local function placer_postinit_fn(inst)

    end
----------------------------------------------------------------------------------------------------------------------

return Prefab("botanical_cube_building_pinecone_hut", fn, assets),
    MakePlacer("botanical_cube_building_pinecone_hut_placer", "botanical_cube_building_pinecone_hut", "botanical_cube_building_pinecone_hut", "idle", nil, nil, nil, nil, nil, nil, placer_postinit_fn)


