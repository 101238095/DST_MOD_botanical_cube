
-- 定义一个新的过滤器对象
local filter_botanical_cube_buildings_def = {
    name = "Botanical_Cube",
    atlas = "images/ui_images/botanical_cube_ui.xml",
    image = "botanical_cube_ui.tex"
}

-- 添加自定义过滤器
AddRecipeFilter(filter_botanical_cube_buildings_def)
STRINGS.UI.CRAFTING_FILTERS.BOTANICAL_CUBE ="植物魔方" -- 制作栏中显示的名字
--------------------------------------------------------------------------------------------------------------------------------------------
---- 松果小屋
--------------------------------------------------------------------------------------------------------------------------------------------
AddRecipeToFilter("botanical_cube_building_pinecone_hut","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_pinecone_hut",            --  --  inst.prefab  实体名字
    { Ingredient("pinecone", 99),Ingredient("rope", 4),Ingredient("boards", 4) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        -- nounlock=true,
        no_deconstruction=false,
        -- builder_tag = "npng_tag.has_green_amulet",    --------- -- 【builder_tag】只给指定tag的角色能制造这件物品，角色添加/移除 tag 都能立马解锁/隐藏该物品
        placer = "botanical_cube_building_pinecone_hut_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_pinecone_hut.xml",
        image = "botanical_cube_building_pinecone_hut.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_pinecone_hut","MODS")                       -- -- 在【模组物品】标签里移除这个。

--------------------------------------------------------------------------------------------------------------------------------------------
AddRecipeToFilter("botanical_cube_building_caladium","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_caladium",            --  --  inst.prefab  实体名字，彩叶芋
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_caladium_placer", min_spacing=0.9 ,                     -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_caladium.xml",
        image = "botanical_cube_building_caladium.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_caladium","MODS")
--
AddRecipeToFilter("botanical_cube_building_bromeliad","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_bromeliad",            --  --  inst.prefab  实体名字，积水凤梨
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_bromeliad_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_bromeliad.xml",
        image = "botanical_cube_building_bromeliad.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_bromeliad","MODS")  
----
AddRecipeToFilter("botanical_cube_building_paling","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_paling",            --  --  inst.prefab  实体名字，篱笆墙
    { Ingredient("twigs", 1),Ingredient("cutgrass", 1) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        product = "botanical_cube_building_paling_item",
        numtogive =  1,
       -- placer = "botanical_cube_building_paling_item_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_paling.xml",
        image = "botanical_cube_building_paling.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_paling","MODS")  
----
AddRecipeToFilter("botanical_cube_building_archway","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_archway",            --  --  inst.prefab  实体名字，拱门装饰
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_archway_item_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_archway.xml",
        image = "botanical_cube_building_archway.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_archway","MODS")  

AddRecipeToFilter("botanical_cube_building_flowers","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_flowers",            --  --  inst.prefab  实体名字，花球
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_flowers_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_flowers.xml",
        image = "botanical_cube_building_flowers.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_flowers","MODS")  


AddRecipeToFilter("botanical_cube_building_arrowroot","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_arrowroot",            --  --  inst.prefab  实体名字，竹芋
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_arrowroot_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_arrowroot.xml",
        image = "botanical_cube_building_arrowroot.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_arrowroot","MODS")  

AddRecipeToFilter("botanical_cube_building_hanging_plant","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_hanging_plant",            --  --  inst.prefab  实体名字，仙洞垂吊
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_hanging_plant_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_hanging_plant.xml",
        image = "botanical_cube_building_hanging_plant.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_hanging_plant","MODS")  


AddRecipeToFilter("botanical_cube_building_monstera_hole","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_monstera_hole",            --  --  inst.prefab  实体名字，仙洞龟背竹
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_monstera_hole_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_monstera_hole.xml",
        image = "botanical_cube_building_monstera_hole.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_monstera_hole","MODS")  

AddRecipeToFilter("botanical_cube_building_happy_leaf","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_happy_leaf",            --  --  inst.prefab  实体名字，快乐叶子
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_happy_leaf_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_happy_leaf.xml",
        image = "botanical_cube_building_happy_leaf.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_happy_leaf","MODS")  

AddRecipeToFilter("botanical_cube_building_cissusdiscolor","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_cissusdiscolor",            --  --  inst.prefab  实体名字，锦叶葡萄
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_cissusdiscolor_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_cissusdiscolor.xml",
        image = "botanical_cube_building_cissusdiscolor.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_cissusdiscolor","MODS")  

AddRecipeToFilter("botanical_cube_building_monstera","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_monstera",            --  --  inst.prefab  实体名字，龟背竹
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_monstera_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_monstera.xml",
        image = "botanical_cube_building_monstera.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_monstera","MODS")  

AddRecipeToFilter("botanical_cube_building_platycerium","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_platycerium",            --  --  inst.prefab  实体名字，鹿角蕨
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("foliage", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_platycerium_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_platycerium.xml",
        image = "botanical_cube_building_platycerium.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_platycerium","MODS")  

AddRecipeToFilter("botanical_cube_building_rocking_chair","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_rocking_chair",            --  --  inst.prefab  实体名字，摇摇椅
    { Ingredient("cutgrass", 9),Ingredient("rope", 1),Ingredient("boards", 2) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_rocking_chair_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_rocking_chair.xml",
        image = "botanical_cube_building_rocking_chair.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_rocking_chair","MODS")  

AddRecipeToFilter("botanical_cube_building_show_shelf","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_show_shelf",            --  --  inst.prefab  实体名字，展示架
    { Ingredient("pinecone", 1),Ingredient("rope", 1),Ingredient("boards", 1) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_show_shelf_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_show_shelf.xml",
        image = "botanical_cube_building_show_shelf.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_show_shelf","MODS")  

AddRecipeToFilter("botanical_cube_building_begonia","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_begonia",            --  --  inst.prefab  实体名字，秋海棠
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_begonia_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_begonia.xml",
        image = "botanical_cube_building_begonia.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_begonia","MODS")  

AddRecipeToFilter("botanical_cube_building_leaf_carpet","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_leaf_carpet",            --  --  inst.prefab  实体名字，叶片地毯
    { Ingredient("beefalowool", 6),Ingredient("rope", 1),Ingredient("silk", 4)  }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_leaf_carpet_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_leaf_carpet.xml",
        image = "botanical_cube_building_leaf_carpet.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_leaf_carpet","MODS")  

AddRecipeToFilter("botanical_cube_building_myster_carpet","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_myster_carpet",            --  --  inst.prefab  实体名字，神秘地毯
    { Ingredient("beefalowool", 6),Ingredient("rope", 1),Ingredient("silk", 4) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_myster_carpet_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_myster_carpet.xml",
        image = "botanical_cube_building_myster_carpet.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_myster_carpet","MODS")  

AddRecipeToFilter("botanical_cube_building_daisy","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_daisy",            --  --  inst.prefab  实体名字，雏菊
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_daisy_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_daisy.xml",
        image = "botanical_cube_building_daisy.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_daisy","MODS")  

AddRecipeToFilter("botanical_cube_building_gesneriaceae","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_gesneriaceae",            --  --  inst.prefab  实体名字，苦苣苔
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_gesneriaceae_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_gesneriaceae.xml",
        image = "botanical_cube_building_gesneriaceae.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_gesneriaceae","MODS")  

AddRecipeToFilter("botanical_cube_building_lilies","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_lilies",            --  --  inst.prefab  实体名字，百合花
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_lilies_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_lilies.xml",
        image = "botanical_cube_building_lilies.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_lilies","MODS")  

AddRecipeToFilter("botanical_cube_building_garland","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_garland",            --  --  inst.prefab  实体名字，花环
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_garland_placer", min_spacing=0.9,                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_garland.xml",
        image = "botanical_cube_building_garland.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_garland","MODS")  

AddRecipeToFilter("botanical_cube_building_butterflybox","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_butterflybox",            --  --  inst.prefab  实体名字，花环
    { Ingredient("lightflier", 4),Ingredient("lightbulb", 4),Ingredient("bee", 1) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_butterflybox_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_butterflybox.xml",
        image = "botanical_cube_building_butterflybox.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_butterflybox","MODS")  

AddRecipeToFilter("botanical_cube_building_lilybush","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_lilybush",            --  --  inst.prefab  实体名字，花环
    { Ingredient("dug_berrybush", 1),Ingredient("petals", 3),Ingredient("seeds", 1) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_lilybush_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_lilybush.xml",
        image = "botanical_cube_building_lilybush.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_lilybush","MODS")  

AddRecipeToFilter("botanical_cube_building_upgradeitem","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_upgradeitem",            --  --  inst.prefab  实体名字，花环
    { Ingredient("twigs", 1) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        numtogive =  5,
        atlas = "images/map_icons/botanical_cube_building_upgradeitem.xml",
        image = "botanical_cube_building_upgradeitem.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_upgradeitem","MODS")

--[[AddRecipeToFilter("botanical_cube_building_pumpkin","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_pumpkin",            --  --  inst.prefab  实体名字，花球
    { Ingredient("pumpkin", 1),Ingredient("lightbulb", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_pumpkin_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_pumpkin.xml",
        image = "botanical_cube_building_pumpkin.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_pumpkin","MODS")  --]]

AddRecipeToFilter("botanical_cube_building_chest","BOTANICAL_CUBE")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_chest",            --  --  inst.prefab  实体名字，叶箱
    { Ingredient("boards", 9) ,Ingredient("petals", 9)}, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_chest_placer", min_spacing=0.9 ,                      -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_chest.xml",
        image = "botanical_cube_building_chest.tex",
    },
    {"BOTANICAL_CUBE"}
)
RemoveRecipeFromFilter("botanical_cube_building_chest","MODS")  