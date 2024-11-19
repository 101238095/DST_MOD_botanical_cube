----------------------------------------------------
--- 本文件单纯返还路径
----------------------------------------------------

-- local function sum(a, b)
--     return a + b
-- end

-- local info = debug.getinfo(sum)

-- for k,v in pairs(info) do
--         print(k,':', info[k])
-- end

--------------------------------------------------------------------------
local addr_test = debug.getinfo(1).source           ---- 找到绝对路径

local temp_str_index = string.find(addr_test, "scripts/prefabs/")
local temp_addr = string.sub(addr_test,temp_str_index,-1)
-- print("fake error 6666666666666:",temp_addr)    ---- 找到本文件所处的相对路径

local temp_str_index2 = string.find(temp_addr,"/__prefabs_list.lua")

local Prefabs_addr_base = string.sub(temp_addr,1,temp_str_index2) .. "/"    --- 得到最终文件夹路径

---------------------------------------------------------------------------
-- local Prefabs_addr_base = "scripts/prefabs/01_bogd_items/"               --- 文件夹路径
local prefabs_name_list = {
    "01_pinecone_hut",
    "02_caladium",--彩叶芋
    "03_bromeliad",--积水凤梨
    "04_paling",--篱笆
    "05_archway",--拱门
    "06_flowers",--花球
    "07_arrowroot",--竹芋
    "08_hanging_plant",--仙洞垂吊
    "09_monstera_hole",
    "10_happy_leaf",
    "11_cissusdiscolor",--锦叶葡萄
    "12_monstera",--龟背竹
    "13_platycerium",--鹿角蕨
    "14_rocking_chair",--摇摇椅
    "15_show_shelf",--展示架
    "16_begonia",--秋海棠
    "17_leaf_carpet",--叶片地毯
    "18_myster_carpet",--神秘地毯
    "19_daisy",--雏菊
    "20_gesneriaceae",--苦苣苔
    "21_lilies",--百合花
    "22_garland",--花环
}


---------------------------------------------------------------------------
---- 正在测试的物品
if TUNING.BOTCUBE_DEBUGGING_MODE == true then
    local debugging_name_list = {



    }
    for k, temp in pairs(debugging_name_list) do
        table.insert(prefabs_name_list,temp)
    end
end
---------------------------------------------------------------------------












local ret_addrs = {}
for i, v in ipairs(prefabs_name_list) do
    table.insert(ret_addrs,Prefabs_addr_base..v..".lua")
end
return ret_addrs