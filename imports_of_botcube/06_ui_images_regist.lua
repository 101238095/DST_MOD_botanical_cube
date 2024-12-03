---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- 统一注册 【 images\ui_images 】 里的所有图标
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

    "botanical_cube_ui", -- 过滤器UI



}

for k, name in pairs(files_name) do
    table.insert(Assets, Asset( "IMAGE", "images/ui_images/".. name ..".tex" ))
    table.insert(Assets, Asset( "ATLAS", "images/ui_images/".. name ..".xml" ))
	RegisterInventoryItemAtlas("images/ui_images/".. name ..".xml", name .. ".tex")
end


