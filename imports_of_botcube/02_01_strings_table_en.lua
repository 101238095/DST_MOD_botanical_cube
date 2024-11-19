----------------------------------------------------------------------------------------------------------------------------------
--[[

    英文文本
    
]]--
----------------------------------------------------------------------------------------------------------------------------------


local crrent_language = "en"
if TUNING.BOTCUBE_GET_LANGUAGE() ~= crrent_language then
    return
end

local strings = {   
    --------------------------------------------------------------------
    --- 01_items
        -- ["bogd_item_foundation_establishment_pill"] = {
        --     ["name"] = "Foundation Establishment Pill",
        --     ["inspect_str"] = "Used for breaking through from the Prenatal Stage to the Foundation Establishment Stage.",
        --     ["recipe_desc"] = "Used for breaking through from the Prenatal Stage to the Foundation Establishment Stage.",
        -- },
    --------------------------------------------------------------------
    --- 04_buildings
    ["botanical_cube_building_pinecone_hut"] = {
        ["name"] = "pinecone hut",
        ["inspect_str"] = "Cabin made of pine cones",
        ["recipe_desc"] = "We can sleep in it",
    },










    }

TUNING.BOTCUBE_GET_STRINGS = function(prefab_name1,prefab_name2)
    local prefab_name = "nil"
    if type(prefab_name1) == "string" then
        prefab_name = prefab_name1
    elseif type(prefab_name2) == "string" then
        prefab_name = prefab_name2
    end            
    return strings[prefab_name] or {}
end

TUNING.BOTCUBE_GET_ALL_STRINGS = function()
    return strings
end