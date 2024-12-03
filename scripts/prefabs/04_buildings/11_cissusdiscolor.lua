--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local assets =
{
    Asset("ANIM", "anim/botanical_cube_building_cissusdiscolor.zip"),
    
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
    local function OnLevelChange(inst, current, data)
    local scale = 1 + current * 0.2
    inst.Transform:SetScale(scale, scale, scale)
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
    inst:SetDeploySmartRadius(0.45)

    inst.MiniMapEntity:SetIcon("botanical_cube_building_cissusdiscolor.tex")

    inst.AnimState:SetBank("botanical_cube_building_cissusdiscolor")
    inst.AnimState:SetBuild("botanical_cube_building_cissusdiscolor")
    inst.AnimState:PlayAnimation("idle",true)

   

    inst:AddTag("structure")

    inst:AddTag("engineering")

    -- inst:AddTag("engineeringbatterypowered") 

    inst:AddTag("botanical_cube_building_cissusdiscolor")

    -----------------------------------------------------------
    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end
    -----------------------------------------------------------
    inst:AddComponent("botanical_cube_upgrade")
    inst.components.botanical_cube_upgrade.item = "botanical_cube_building_upgradeitem" --用牛毛升级
    inst.components.botanical_cube_upgrade.max = 5              --最多可以给予5个
    inst.components.botanical_cube_upgrade.onlevelchange = OnLevelChange
   
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
            inst.AnimState:PlayAnimation("idle")
            -- inst.AnimState:PushAnimation("idle",true)
        
        end)
    -----------------------------------------------------------
    --- 官方的睡袋系统
      
    -----------------------------------------------------------
    inst.AddBatteryPower = function() end

    RemovePhysicsColliders(inst)--移除碰撞体积
    inst:AddTag("NOBLOCK")
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

return Prefab("botanical_cube_building_cissusdiscolor", fn, assets),
    MakePlacer("botanical_cube_building_cissusdiscolor_placer", "botanical_cube_building_cissusdiscolor", "botanical_cube_building_cissusdiscolor", "idle", nil, nil, nil, nil, nil, nil, placer_postinit_fn)


