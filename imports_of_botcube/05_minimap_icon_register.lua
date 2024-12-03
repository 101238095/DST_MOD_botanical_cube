---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- 统一注册 【 images\map_icons 】 里的所有图标
--- 每个 xml 里面 只有一个 tex

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

if Assets == nil then
    Assets = {}
end

local files_name = {
	-------------------------------------------------------------------------------------------------

	-------------------------------------------------------------------------------------------------
	---- 06_buildings
		-- "bogd_building_treasure_table",										--- 灵宝台
	-------------------------------------------------------------------------------------------------
	-- 04_buildings
		"botanical_cube_building_pinecone_hut",						--- 松果小屋
		"botanical_cube_building_caladium",--------彩叶芋
		"botanical_cube_building_bromeliad",--------积水凤梨
		"botanical_cube_building_paling",--------篱笆
		"botanical_cube_building_archway",--------拱门装饰
		"botanical_cube_building_flowers",--------花球\
		"botanical_cube_building_arrowroot",--------竹芋
		"botanical_cube_building_hanging_plant",--------仙洞垂吊
		"botanical_cube_building_monstera_hole",--------仙洞龟背竹
		"botanical_cube_building_happy_leaf",------快乐叶子
		"botanical_cube_building_cissusdiscolor",--------锦叶葡萄
		"botanical_cube_building_leaf_carpet",-------叶片地毯
		"botanical_cube_building_platycerium",-------鹿角蕨
		"botanical_cube_building_rocking_chair",-------摇摇椅
		"botanical_cube_building_show_shelf",-------展示架
		"botanical_cube_building_begonia",-------秋海棠
		"botanical_cube_building_myster_carpet",-------神秘地毯
		"botanical_cube_building_monstera",-------龟背竹
		"botanical_cube_building_daisy",-------雏菊
		"botanical_cube_building_gesneriaceae",-------苦苣苔
		"botanical_cube_building_lilies",-------百合花
		"botanical_cube_building_garland",-------花环
		"botanical_cube_building_butterflybox",-------蝴蝶箱
		"botanical_cube_building_lilybush",-------百合灌木
		"botanical_cube_building_upgradeitem",-------升级球
       -- "botanical_cube_building_pumpkin",-------南瓜装饰灯
		"botanical_cube_building_chest",-------花箱

		





		


}

for k, name in pairs(files_name) do
    table.insert(Assets, Asset( "IMAGE", "images/map_icons/".. name ..".tex" ))
    table.insert(Assets, Asset( "ATLAS", "images/map_icons/".. name ..".xml" ))
	AddMinimapAtlas("images/map_icons/".. name ..".xml")
	RegisterInventoryItemAtlas("images/map_icons/".. name ..".xml",name..".tex")	
end


