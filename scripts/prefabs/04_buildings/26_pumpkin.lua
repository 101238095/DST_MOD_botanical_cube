-------南瓜灯代码
local assets =
{
    Asset("ANIM", "anim/botanical_cube_building_pumpkin.zip"),
}
--需要的预制件

local FADE_FRAMES = 5
local FADE_INTENSITY = .8
local FADE_RADIUS = 1.5
local FADE_FALLOFF = .5

local function OnFinishCallback(inst,worker)
    inst.components.lootdropper:DropLoot()
    local fx = SpawnPrefab("collapse_small") -- 烟雾小的那个
    fx.Transform:SetPosition(inst.Transform:GetWorldPosition())
    inst:Remove()
end
local function workable_install(inst)
    inst:AddComponent("workable")
    inst.components.workable:SetWorkAction(ACTIONS.DIG) -- 是松果做的用铲子挖掘就行了

    inst.components.workable:SetWorkLeft(3)

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

--


--[[local function ondeath(inst)
    if inst._daytask ~= nil then
        inst._daytask:Cancel()
        inst._daytask = nil
    end
    FadeOut(inst, true)
    inst.components.perishable:StopPerishing()
    inst.components.lootdropper:SpawnLootPrefab("fireflies")
    if not inst.AnimState:IsCurrentAnimation("rotten") then
        inst.AnimState:PlayAnimation("broken")
        inst.SoundEmitter:PlaySound("dontstarve/common/vegi_smash")
    end
end--]] 

--[[local function onperish(inst)
    inst.AnimState:PlayAnimation("rotten")
    inst.components.health:Kill()
end--]]

    local function OnLevelChange(inst, current, data)
    local scale = 1 + current * 0.15
    inst.Transform:SetScale(scale, scale, scale)
    end


--[[local function OnDropped(inst)
    if not inst.components.health:IsDead() then
        inst.components.perishable:StartPerishing()
    end
    if inst._daytask ~= nil then
        inst._daytask:Cancel()
        inst._daytask = nil
    end
    if not TheWorld.state.isday and CanFade(inst) then
        FadeIn(inst)
    else
        FadeOut(inst, true)
    end
end--]]

--[[local function OnPutInInventory(inst)
    inst.components.perishable:StopPerishing()
    if inst._daytask ~= nil then
        inst._daytask:Cancel()
        inst._daytask = nil
    end
    FadeOut(inst, true)
end--]]



local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddLight()
    inst.entity:AddNetwork()

    MakeObstaclePhysics(inst, 1)
    inst:SetDeploySmartRadius(0.45)

    --inst:AddTag("veggie")
    inst:AddTag("light")

    MakeInventoryPhysics(inst)

    inst.Light:SetFalloff(FADE_FALLOFF)
    inst.Light:SetIntensity(FADE_INTENSITY)
    inst.Light:SetRadius(FADE_RADIUS)
    inst.Light:SetColour(200/255, 100/255, 170/255)
    inst.Light:Enable(false)
    inst.Light:EnableClientModulation(true)

    inst.AnimState:SetBank("botanical_cube_building_pumpkin")
    inst.AnimState:SetBuild("botanical_cube_building_pumpkin")
    inst.AnimState:PlayAnimation("idle_night_loop",true)

    inst:AddTag("structure")
    inst:AddTag("engineering")


    inst._fade = net_smallbyte(inst.GUID, "botanical_cube_building_pumpkin._fade", "fadedirty")
    inst._fade:set(FADE_FRAMES * 2 + 1)

    --MakeInventoryFloatable(inst, "med", 0.1, 0.78)

    --inst.scrapbook_anim = "idle"
    --inst.scrapbook_specialinfo = "PUMPKINLANTERN"
    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end
    
    inst:AddComponent("botanical_cube_upgrade")
    inst.components.botanical_cube_upgrade.item = "botanical_cube_building_upgradeitem" --用树枝升级
    inst.components.botanical_cube_upgrade.max = 18              --最多可以给予10个
    inst.components.botanical_cube_upgrade.onlevelchange = OnLevelChange

    --inst:AddComponent("inspectable")
    --inst:AddComponent("inventoryitem")
    --inst.components.inventoryitem.nobounce = true

    --inst:AddComponent("combat")
    --inst:AddComponent("health")
    --inst.components.health.canmurder = false
    inst:AddComponent("lootdropper")
    workable_install(inst)
        inst:ListenForEvent("onbuilt",function()  -- 玩家刚刚建立的时候 可以用来播放动画和声音
            -- inst.SoundEmitter:PlaySound("dontstarve/common/chest_trap")
            inst.AnimState:PlayAnimation("idle_night_loop",true)
            -- inst.AnimState:PushAnimation("idle",true)
        
        end)
    --inst.components.health:SetMaxHealth(1)
    --inst:ListenForEvent("death", ondeath)

    --[[inst:AddComponent("perishable")
    inst.components.perishable:SetPerishTime(IsSpecialEventActive(SPECIAL_EVENTS.HALLOWED_NIGHTS) and TUNING.PERISH_SUPERSLOW or TUNING.PERISH_MED)
    inst.components.perishable:SetOnPerishFn(onperish)
    inst.components.perishable:StartPerishing()--]]

    --inst.components.inventoryitem:SetOnDroppedFn(OnDropped)
   -- inst.components.inventoryitem:SetOnPutInInventoryFn(OnPutInInventory)

  

    

    RemovePhysicsColliders(inst)--移除碰撞体积
    inst:AddTag("NOBLOCK")

    MakeHauntableLaunch(inst)

    --inst.OnLoad = OnLoad

    return inst
end

local function placer_postinit_fn(inst)

end

return Prefab("botanical_cube_building_pumpkin", fn, assets),
   MakePlacer("botanical_cube_building_pumpkin_placer", "botanical_cube_building_pumpkin", "botanical_cube_building_pumpkin", "idle_night_loop", nil, nil, nil, nil, nil, nil, placer_postinit_fn)
