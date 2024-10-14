----------------------------------------------------------------------------------------------------------------------------------
--[[

    中文文本
    
]]--
----------------------------------------------------------------------------------------------------------------------------------


local crrent_language = "ch"
if TUNING.BOTCUBE_GET_LANGUAGE() ~= crrent_language then
    return
end

local strings = {
    --------------------------------------------------------------------
    --- 01_items
        -- ["bogd_item_foundation_establishment_pill"] = {
        --     ["name"] = "筑基丹",
        --     ["inspect_str"] = "先天期突破到筑基期使用",
        --     ["recipe_desc"] = "先天期突破到筑基期使用",
        -- },

    --------------------------------------------------------------------
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