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
     ["botanical_cube_building_paling_item"] = {
            ["name"] = "篱笆",
            ["inspect_str"] = "增加一点田园风情",
            ["recipe_desc"] = "精美又费劲",
        },
    --------------------------------------------------------------------
    --- 04_buildings
    ["botanical_cube_building_pinecone_hut"] = {
            ["name"] = "松果小屋",
            ["inspect_str"] = "松果制作而成的小屋",
            ["recipe_desc"] = "可以在这个小屋里面睡觉",
        },
    ["botanical_cube_building_caladium"] = {
            ["name"] = "彩叶芋",
            ["inspect_str"] = "美丽的叶子",
            ["recipe_desc"] = "令人惊叹的叶片",
        },
    ["botanical_cube_building_bromeliad"] = {
            ["name"] = "积水凤梨",
            ["inspect_str"] = "像花一样",
            ["recipe_desc"] = "进的都是水",
        },
    ["botanical_cube_building_paling"] = {
            ["name"] = "篱笆墙",
            ["inspect_str"] = "增加一点田园风情",
            ["recipe_desc"] = "精美又费劲",
        },
    ["botanical_cube_building_archway"] = {
            ["name"] = "拱门装饰",
            ["inspect_str"] = "我需要一个装饰门",
            ["recipe_desc"] = "太漂亮了",
        },

    ["botanical_cube_building_flowers"] = {
            ["name"] = "花球",
            ["inspect_str"] = "一簇一簇的",
            ["recipe_desc"] = "升级球升级变大变高",
        },

    ["botanical_cube_building_arrowroot"] = {
            ["name"] = "竹芋",
            ["inspect_str"] = "奇怪的花纹",
            ["recipe_desc"] = "升级球升级后变小",
        },
    ["botanical_cube_building_hanging_plant"] = {
            ["name"] = "仙洞垂吊",
            ["inspect_str"] = "这是被虫啃的？",
            ["recipe_desc"] = "一个洞一个洞的",
        },
    ["botanical_cube_building_monstera_hole"] = {
            ["name"] = "仙洞龟背竹",
            ["inspect_str"] = "一个一个窟窿",
            ["recipe_desc"] = "令人惊叹的叶片",
        },
    ["botanical_cube_building_happy_leaf"] = {
            ["name"] = "快乐叶子",
            ["inspect_str"] = "油画一般的花纹",
            ["recipe_desc"] = "好看爱看",
        },
    ["botanical_cube_building_cissusdiscolor"] = {
            ["name"] = "锦叶葡萄",
            ["inspect_str"] = "美丽的纹路",
            ["recipe_desc"] = "好多叶片",
        },

    ["botanical_cube_building_monstera"] = {
            ["name"] = "龟背竹",
            ["inspect_str"] = "开洞了",
            ["recipe_desc"] = "开洞了",
        },

    ["botanical_cube_building_platycerium"] = {
            ["name"] = "鹿角蕨",
            ["inspect_str"] = "像鹿角一样",
            ["recipe_desc"] = "像鹿角一样",
        },

   ["botanical_cube_building_rocking_chair"] = {
            ["name"] = "摇摇椅",
            ["inspect_str"] = "摇啊摇",
            ["recipe_desc"] = "摇啊摇",
        },

        ["botanical_cube_building_show_shelf"] = {
            ["name"] = "展示架",
            ["inspect_str"] = "展示我的战绩",
            ["recipe_desc"] = "展示我的战绩",
        },
        ["botanical_cube_building_begonia"] = {
            ["name"] = "秋海棠",
            ["inspect_str"] = "千变万化",
            ["recipe_desc"] = "美丽又多变",
        },

        ["botanical_cube_building_leaf_carpet"] = {
            ["name"] = "叶片地毯",
            ["inspect_str"] = "我喜欢厚厚的地毯",
            ["recipe_desc"] = "用牛毛升级地毯",
        },

        ["botanical_cube_building_myster_carpet"] = {
            ["name"] = "神秘地毯",
            ["inspect_str"] = "优雅又高贵",
            ["recipe_desc"] = "真难打理",
        },

        ["botanical_cube_building_daisy"] = {
            ["name"] = "雏菊盆栽",
            ["inspect_str"] = "可爱的小雏菊",
            ["recipe_desc"] = "需要很多花瓣",
        },

        ["botanical_cube_building_gesneriaceae"] = {
            ["name"] = "苦苣苔",
            ["inspect_str"] = "像花又像叶",
            ["recipe_desc"] = "颜色多样",
        },

        ["botanical_cube_building_lilies"] = {
            ["name"] = "百合花盆栽",
            ["inspect_str"] = "这是小仙女吗",
            ["recipe_desc"] = "花花",
        },

        ["botanical_cube_building_garland"] = {
            ["name"] = "圣诞花环",
            ["inspect_str"] = "圣诞快乐！",
            ["recipe_desc"] = "增加节日氛围",
        },

        ["botanical_cube_building_butterflybox"] = {
            ["name"] = "荧光箱",
            ["inspect_str"] = "再也不用为了几个荧光果去地下了",
            ["recipe_desc"] = "荧光果的可持续发展道路",
        },

        ["botanical_cube_building_lilybush"] = {
            ["name"] = "百合花丛",
            ["inspect_str"] = "可以给我很多花瓣吗",
            ["recipe_desc"] = "花瓣的可持续发展",
        },

        ["botanical_cube_others_glowworm"] = {
            ["name"] = "荧光飞虫",
            ["inspect_str"] = "荧光果的可持续发展道路",
        },

        ["botanical_cube_building_upgradeitem"] = {
            ["name"] = "升级球",
            ["inspect_str"] = "让物体升级变大",
        },

       --[[ ["botanical_cube_building_pumpkin"] = {
            ["name"] = "南瓜装饰灯",
            ["inspect_str"] = "万圣节的氛围拉满辣",
        },--]]
        ["botanical_cube_building_chest"] = {
            ["name"] = "花箱",
            ["inspect_str"] = "大箱子",
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
STRINGS.SKIN_NAMES.botanical_cube_building_myster_carpet_marry = "圣诞快乐！"


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