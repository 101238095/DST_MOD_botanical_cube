require "prefabutil"

local assets =
{
    Asset("ANIM", "anim/botanical_cube_building_chest.zip"),
    Asset("ANIM", "anim/ui_botanical_cube_building_chest_5x5.zip"),
}

local prefabs =
{
    "collapse_small",
	"boat_leak",
}

local FISH_BOX_SCALE = 1.3

local function splash(inst)
	if inst.AnimState:IsCurrentAnimation("idle1") then
		inst.AnimState:PlayAnimation("idle1")
		inst.AnimState:PushAnimation("idle1", false)
	end
	inst.splash_task = inst:DoTaskInTime(3 + math.random() * 3, splash)
end

local function startsplashtask(inst)
	if inst.splash_task ~= nil then
		inst.splash_task:Cancel()
	end
	inst.splash_task = inst:DoTaskInTime(3 + math.random() * 3, splash)
end

local function stopsplashtask(inst)
	if inst.splash_task ~= nil then
		inst.splash_task:Cancel()
		inst.splash_task = nil
	end
end

local function onopen(inst)
	inst.AnimState:PlayAnimation("open1")
	inst.AnimState:PushAnimation("idle1", false)
    inst.SoundEmitter:PlaySound("dontstarve/wilson/chest_open")

	startsplashtask(inst)
end

local function onclose(inst)
	inst.AnimState:PlayAnimation("close1")
	inst.AnimState:PushAnimation("idle1", false)
    inst.SoundEmitter:PlaySound("dontstarve/wilson/chest_close")

	stopsplashtask(inst)
end

local function onhammered(inst, worker)
    inst.components.lootdropper:DropLoot()

	local x, y, z = inst.Transform:GetWorldPosition()
	local oceanfish_to_spawn = {}

	for i=1,inst.components.container:GetNumSlots() do
		local item = inst.components.container:GetItemInSlot(i)

		if item ~= nil then
			if item.fish_def ~= nil then
				table.insert(oceanfish_to_spawn, item.fish_def.prefab)
				item:Remove()
			else
				inst.components.container:DropItemBySlot(i)
			end
		end
	end

	if #oceanfish_to_spawn > 0 then
		oceanfish_to_spawn = shuffleArray(oceanfish_to_spawn)

		for i=1,math.min(#oceanfish_to_spawn, 5) do
			local water_fish = SpawnPrefab(oceanfish_to_spawn[i])
			water_fish.Transform:SetPosition(x, y, z)

			water_fish.leaving = true
			water_fish.persists = false
		end
	end

    local fx = SpawnPrefab("collapse_small")
	fx.Transform:SetPosition(x, y, z)
    fx:SetMaterial("metal")

	--[[local boat = inst:GetCurrentPlatform()
	if boat ~= nil then
		boat:PushEvent("spawnnewboatleak", { pt = Vector3(x, y, z), leak_size = "med_leak", playsoundfx = true })
	end--]]----敲坏箱子船会破洞

    inst:Remove()
end

local function onhit(inst, worker)
	if inst.components.container ~= nil then
		if not inst.components.container:IsOpen() then
			inst.AnimState:PlayAnimation("hit1")
			inst.AnimState:PushAnimation("idle1")
		end

		inst.components.container:Close()
	end
end

local function onbuilt(inst)
	inst.AnimState:PlayAnimation("place", false)
	inst.AnimState:PushAnimation("idle1", false)
    inst.SoundEmitter:PlaySound("dontstarve/common/dragonfly_chest_craft")
end

local function OnSink(inst)
	if inst:GetCurrentPlatform() == nil and not TheWorld.Map:IsDockAtPoint(inst.Transform:GetWorldPosition()) then
		inst.components.workable:Destroy(inst)
	end
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddMiniMapEntity()
    inst.entity:AddNetwork()

	inst:SetDeploySmartRadius(0.75) --recipe min_spacing/2

	inst.Transform:SetScale(FISH_BOX_SCALE, FISH_BOX_SCALE, FISH_BOX_SCALE)

	inst.MiniMapEntity:SetPriority(4)
    inst.MiniMapEntity:SetIcon("botanical_cube_building_chest.png")

    inst:AddTag("structure")

    inst.AnimState:SetBank("botanical_cube_building_chest")
    inst.AnimState:SetBuild("botanical_cube_building_chest")
    inst.AnimState:PlayAnimation("idle1")

   -- inst.scrapbook_anim = "idle1"
    --inst.scrapbook_specialinfo = "FISHBOX"

   	MakeSnowCoveredPristine(inst)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")
    inst:AddComponent("lootdropper")

    inst:AddComponent("container")
    inst.components.container:WidgetSetup("botanical_cube_building_chest")
    inst.components.container.onopenfn = onopen
    inst.components.container.onclosefn = onclose
    inst.components.container.skipclosesnd = true
    inst.components.container.skipopensnd = true

	--inst:AddComponent("preserver")反鲜
	--inst.components.preserver:SetPerishRateMultiplier(TUNING.FISH_BOX_PRESERVER_RATE)

    inst:AddComponent("workable")
    inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
    inst.components.workable:SetWorkLeft(6)
    inst.components.workable:SetOnFinishCallback(onhammered)
    inst.components.workable:SetOnWorkCallback(onhit)

    MakeSnowCovered(inst)

    AddHauntableDropItemOrWork(inst)

    inst:ListenForEvent("onbuilt", onbuilt)
	inst:ListenForEvent("onsink", OnSink)

    --[[if TUNING.SMART_SIGN_DRAW_ENABLE then
		SMART_SIGN_DRAW(inst)
	end--]]----兼容小木牌，有点问题所以先注释掉

    return inst
end

return Prefab("botanical_cube_building_chest", fn, assets, prefabs),
    MakePlacer("botanical_cube_building_chest_placer", "botanical_cube_building_chest", "botanical_cube_building_chest", "idle1", nil, nil, nil, FISH_BOX_SCALE)
