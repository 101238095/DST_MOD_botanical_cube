--容器默认坐标
local default_pos={
	
	botanical_cube_building_chest = Vector3(0, 200, 0),

}
--设置容器布局
local containers = require "containers"
local params = containers.params

params.botanical_cube_building_chest = {
	widget =
	{
		slotpos = {},
		animbank = "ui_botanical_cube_building_chest_5x5",
		animbuild = "ui_botanical_cube_building_chest_5x5",
		pos = default_pos.botanical_cube_building_chest,
		side_align_tip = 160,
        --按钮信息
		--[[buttoninfo={
			text = STRINGS.MEDAL_UI.SLOTSSORT,
			position = Vector3(0, -230, 0),
			--fn=slotsSortFn,
			validfn=slotsSortValidFn,
		}--]]
	},
	type = "chest",
}

for y = 4, 0, -1 do
	for x = 0, 4 do
		table.insert(params.botanical_cube_building_chest.widget.slotpos, Vector3(80 * (x - 3) + 80, 80 * (y - 3) + 80, 0))
	end
end

--定义容器最大格子数
for k, v in pairs(params) do
    containers.MAXITEMSLOTS = math.max(containers.MAXITEMSLOTS, v.widget.slotpos ~= nil and #v.widget.slotpos or 0)
end