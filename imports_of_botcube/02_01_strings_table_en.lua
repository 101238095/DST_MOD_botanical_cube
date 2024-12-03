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

    ["botanical_cube_building_paling_item"] = {
            ["name"] = "paling",
            ["inspect_str"] = "Add a bit of pastoral style",
            ["recipe_desc"] = "Upgrade with twigs",
    },
    --------------------------------------------------------------------
    --- 04_buildings
    ["botanical_cube_building_pinecone_hut"] = {
        ["name"] = "pinecone hut",
        ["inspect_str"] = "Cabin made of pine cones",
        ["recipe_desc"] = "We can sleep in it",
    },
   
    ["botanical_cube_building_caladium"] = {
        ["name"] = "caladium",
        ["inspect_str"] = "Beautiful leaves",
        ["recipe_desc"] = "Upgrade with twigs",
    },
    ["botanical_cube_building_bromeliad"] = {
        ["name"] = "bromeliad",
        ["inspect_str"] = "Like flowers",
        ["recipe_desc"] = "Upgrade with twigs",
    },
    ["botanical_cube_building_paling"] = {
        ["name"] = "paling",
        ["inspect_str"] = "Add a bit of pastoral style",
        ["recipe_desc"] = "Upgrade with twigs",
    },
    ["botanical_cube_building_archway"] = {
        ["name"] = "archway",
        ["inspect_str"] = "I need a decorative door",
        ["recipe_desc"] = "It's beautiful",
    },

    ["botanical_cube_building_flowers"] = {
        ["name"] = "flowers",
        ["inspect_str"] = "Cluster by cluster",
        ["recipe_desc"] = "Upgrade with twigs",
    },

    ["botanical_cube_building_arrowroot"] = {
        ["name"] = "arrowroot",
        ["inspect_str"] = "Strange pattern",
        ["recipe_desc"] = "Upgrade with twigs",
    },
    ["botanical_cube_building_hanging_plant"] = {
        ["name"] = "hanging plant",
        ["inspect_str"] = "Was this gnawed by insects?",
        ["recipe_desc"] = "Was this gnawed by insects?",
    },
    ["botanical_cube_building_monstera_hole"] = {
        ["name"] = "monstera hole",
        ["inspect_str"] = "Was this gnawed by insects?",
        ["recipe_desc"] = "Was this gnawed by insects?",
    },
    ["botanical_cube_building_happy_leaf"] = {
        ["name"] = "happy leaf",
        ["inspect_str"] = "Oil painting pattern",
        ["recipe_desc"] = "Oil painting pattern",
    },
    ["botanical_cube_building_cissusdiscolor"] = {
        ["name"] = "cissusdiscolor",
        ["inspect_str"] = "Lines",
        ["recipe_desc"] = "Lines",
    },

    ["botanical_cube_building_monstera"] = {
        ["name"] = "monstera",
        ["inspect_str"] = "Hole",
        ["recipe_desc"] = "Hole",
    },

    ["botanical_cube_building_platycerium"] = {
        ["name"] = "platycerium",
        ["inspect_str"] = "Like antlers",
        ["recipe_desc"] = "Like antlers",
    },

    ["botanical_cube_building_rocking_chair"] = {
        ["name"] = "rocking chair",
        ["inspect_str"] = "Shake and shake",
        ["recipe_desc"] = "Shake and shake",
    },

    ["botanical_cube_building_show_shelf"] = {
        ["name"] = "show shelf",
        ["inspect_str"] = "It's just decoration for now",
        ["recipe_desc"] = "It's just decoration for now",
    },
    ["botanical_cube_building_begonia"] = {
        ["name"] = "begonia",
        ["inspect_str"] = "Beautiful and changeable",
        ["recipe_desc"] = "Beautiful and changeable",
    },

    ["botanical_cube_building_leaf_carpet"] = {
        ["name"] = "leaf carpet",
        ["inspect_str"] = "Elegant and noble",
        ["recipe_desc"] = "Upgrade carpet with cow hair",
    },

    ["botanical_cube_building_myster_carpet"] = {
        ["name"] = "myster carpet",
        ["inspect_str"] = "Elegant and noble",
        ["recipe_desc"] = "So hard to take care of",
    },

    ["botanical_cube_building_daisy"] = {
        ["name"] = "daisy",
        ["inspect_str"] = "Cute little daisy",
        ["recipe_desc"] = "Cute little daisy",
    },

    ["botanical_cube_building_gesneriaceae"] = {
        ["name"] = "gesneriaceae",
        ["inspect_str"] = "Like flowers and like leaves",
        ["recipe_desc"] = "Variety of colors",
    },

    ["botanical_cube_building_lilies"] = {
        ["name"] = "lilies",
        ["inspect_str"] = "It's beautiful",
        ["recipe_desc"] = "It's beautiful",
    },

    ["botanical_cube_building_garland"] = {
        ["name"] = "garland",
        ["inspect_str"] = "Merry Christmas",
        ["recipe_desc"] = "Merry Christmas",
    },

    ["botanical_cube_building_butterflybox"] = {
        ["name"] = "Glowworm Box",
        ["inspect_str"] = "Provide me with lightbulb",
        ["recipe_desc"] = "Provide me with lightbulb",
    },

    ["botanical_cube_building_lilybush"] = {
        ["name"] = "lily",
        ["inspect_str"] = "Can be ripened",
        ["recipe_desc"] = "Provide me with petals",
    },

    ["botanical_cube_others_glowworm"] = {
        ["name"] = "Glowworm",
        ["inspect_str"] = "Provide me with lightbulb",
    },

    ["botanical_cube_building_upgradeitem"] = {
        ["name"] = "Upgrade item",
        ["inspect_str"] = "To Upgrade",
    },

    --[[["botanical_cube_building_pumpkin"] = {
        ["name"] = "Pumpkin decorative lamp",
        ["inspect_str"] = "Halloween atmosphere",
    },--]]

    ["botanical_cube_building_chest"] = {
        ["name"] = "Flowers chest",
        ["inspect_str"] = "big chest",
    },




    }
    STRINGS.SKIN_NAMES.botanical_cube_building_flowers_blue = "蓝色花球"
    STRINGS.SKIN_NAMES.botanical_cube_building_flowers_darkgreen = "深绿花球"
    STRINGS.SKIN_NAMES.botanical_cube_building_flowers_red = "红色花球"
    STRINGS.SKIN_NAMES.botanical_cube_building_flowers_orange = "橙色花球"
    STRINGS.SKIN_NAMES.botanical_cube_building_flowers_purple = "紫色花球"
    STRINGS.SKIN_NAMES.botanical_cube_building_flowers_pink = "粉色花球"
    STRINGS.SKIN_NAMES.botanical_cube_building_flowers_yellow = "黄色花球"
    STRINGS.SKIN_NAMES.botanical_cube_building_flowers_blue2 = "蓝色花球2"
    STRINGS.SKIN_NAMES.botanical_cube_building_flowers_white = "白色花球"
    STRINGS.SKIN_NAMES.botanical_cube_building_flowers_white2 = "白色花球2"
    
    STRINGS.SKIN_NAMES.botanical_cube_building_arrowroot_yellow = "黄色竹芋"
    
    STRINGS.SKIN_NAMES.botanical_cube_building_happy_leafr = "矮的快乐叶子1"
    STRINGS.SKIN_NAMES.botanical_cube_building_happy_leafl = "矮的快乐叶子2"
    
    STRINGS.SKIN_NAMES.botanical_cube_building_leaf_carpet_blue = "蓝色"
    STRINGS.SKIN_NAMES.botanical_cube_building_leaf_carpet_purple = "紫色"
    STRINGS.SKIN_NAMES.botanical_cube_building_leaf_carpet_red = "红色"
    STRINGS.SKIN_NAMES.botanical_cube_building_leaf_carpet_orange = "橙色"
    STRINGS.SKIN_NAMES.botanical_cube_building_leaf_carpet_darkgreen = "深绿"
    
    STRINGS.SKIN_NAMES.botanical_cube_building_myster_carpet_darkgreen = "深绿"
    
    STRINGS.SKIN_NAMES.botanical_cube_building_daisy_green = "绿色雏菊"
    STRINGS.SKIN_NAMES.botanical_cube_building_daisy_purple = "紫色雏菊"
    
    STRINGS.SKIN_NAMES.botanical_cube_building_gesneriaceae_blue = "蓝色苦苣苔"
    STRINGS.SKIN_NAMES.botanical_cube_building_gesneriaceae_darkgreen = "蓝绿苦苣苔"
    STRINGS.SKIN_NAMES.botanical_cube_building_gesneriaceae_green = "绿色苦苣苔"
    STRINGS.SKIN_NAMES.botanical_cube_building_gesneriaceae_purple = "紫色苦苣苔"
    STRINGS.SKIN_NAMES.botanical_cube_building_gesneriaceae_pink = "粉色苦苣苔"
    STRINGS.SKIN_NAMES.botanical_cube_building_gesneriaceae_yellow = "黄色苦苣苔"
    
    STRINGS.SKIN_NAMES.botanical_cube_building_lilies_green = "绿色百合花"
    STRINGS.SKIN_NAMES.botanical_cube_building_lilies_purple = "紫色百合花"
    STRINGS.SKIN_NAMES.botanical_cube_building_lilies_pink = "粉色百合花"
    STRINGS.SKIN_NAMES.botanical_cube_building_lilies_yellow = "黄色百合花"

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