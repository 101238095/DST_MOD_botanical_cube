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
		"botanical_cube_building_pinecone_hut"						--- 松果小屋

		


}

for k, name in pairs(files_name) do
    table.insert(Assets, Asset( "IMAGE", "images/map_icons/".. name ..".tex" ))
    table.insert(Assets, Asset( "ATLAS", "images/map_icons/".. name ..".xml" ))
	AddMinimapAtlas("images/map_icons/".. name ..".xml")
	RegisterInventoryItemAtlas("images/map_icons/".. name ..".xml",name..".tex")	
end


