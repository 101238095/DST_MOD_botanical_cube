---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- 统一注册 【 images\inventoryimages 】 里的所有图标
--- 每个 xml 里面 只有一个 tex

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

if Assets == nil then
    Assets = {}
end

local files_name = {

	---------------------------------------------------------------------------------------
	-- 00_others
		-- "bogd_item_ice_core"	, 							--- 冰核心
	---------------------------------------------------------------------------------------
	-- -- 04_buildings
	"botanical_cube_building_paling" ,---篱笆
	"botanical_cube_building_paling_item" ,--篱笆
	"botanical_cube_building_archway" ,---拱门装饰
	"botanical_cube_building_flowers" ,---花球
	"botanical_cube_building_flowers_blue" ,
	"botanical_cube_building_flowers_darkgreen" ,
	"botanical_cube_building_flowers_red" ,
	"botanical_cube_building_flowers_orange" ,
	"botanical_cube_building_flowers_purple" ,
	"botanical_cube_building_flowers_pink" ,
	"botanical_cube_building_flowers_yellow" ,
	"botanical_cube_building_upgradeitem" ,



}

for k, name in pairs(files_name) do
    table.insert(Assets, Asset( "IMAGE", "images/inventoryimages/".. name ..".tex" ))
    table.insert(Assets, Asset( "ATLAS", "images/inventoryimages/".. name ..".xml" ))
	RegisterInventoryItemAtlas("images/inventoryimages/".. name ..".xml", name .. ".tex")
end


