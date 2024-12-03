local assets =
{
    Asset("ANIM", "anim/botanical_cube_building_upgradeitem.zip"),
}

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("botanical_cube_building_upgradeitem")
    inst.AnimState:SetBuild("botanical_cube_building_upgradeitem")
    inst.AnimState:PlayAnimation("idle")

    inst.pickupsound = "wood"

    MakeInventoryFloatable(inst, "med", .15, {1.15, .8, 1.15})

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end


    inst:AddComponent("stackable")
    --inst.components.stackable.maxsize = TUNING.STACK_SIZE_LARGEITEM--木板的堆叠，个
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM--种子的堆叠，40个

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")

    return inst
end

return Prefab("botanical_cube_building_upgradeitem", fn, assets)
