--------------------------------------------------------------------------------------------------------------------------------------------
---- 松果小屋
--------------------------------------------------------------------------------------------------------------------------------------------
AddRecipeToFilter("botanical_cube_building_pinecone_hut","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_pinecone_hut",            --  --  inst.prefab  实体名字
    { Ingredient("pinecone", 99),Ingredient("rope", 4),Ingredient("boards", 4) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        -- nounlock=true,
        no_deconstruction=false,
        -- builder_tag = "npng_tag.has_green_amulet",    --------- -- 【builder_tag】只给指定tag的角色能制造这件物品，角色添加/移除 tag 都能立马解锁/隐藏该物品
        placer = "botanical_cube_building_pinecone_hut_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_pinecone_hut.xml",
        image = "botanical_cube_building_pinecone_hut.tex",
    },
    {"MODS"}
)
-- RemoveRecipeFromFilter("fwd_in_pdt_building_paddy_windmill","MODS")                       -- -- 在【模组物品】标签里移除这个。

--------------------------------------------------------------------------------------------------------------------------------------------
AddRecipeToFilter("botanical_cube_building_caladium","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_caladium",            --  --  inst.prefab  实体名字，彩叶芋
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_caladium_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_caladium.xml",
        image = "botanical_cube_building_caladium.tex",
    },
    {"MODS"}
)
--
AddRecipeToFilter("botanical_cube_building_bromeliad","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_bromeliad",            --  --  inst.prefab  实体名字，积水凤梨
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_bromeliad_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_bromeliad.xml",
        image = "botanical_cube_building_bromeliad.tex",
    },
    {"MODS"}
)
----
AddRecipeToFilter("botanical_cube_building_paling","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_paling",            --  --  inst.prefab  实体名字，篱笆墙
    { Ingredient("twigs", 3),Ingredient("rope", 1),Ingredient("boards", 1) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        product = "botanical_cube_building_paling_item",
        numtogive =  6,
       -- placer = "botanical_cube_building_paling_item_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_paling.xml",
        image = "botanical_cube_building_paling.tex",
    },
    {"MODS"}
)
----
AddRecipeToFilter("botanical_cube_building_archway","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_archway",            --  --  inst.prefab  实体名字，拱门装饰
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_archway_item_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_archway.xml",
        image = "botanical_cube_building_archway.tex",
    },
    {"MODS"}
)

AddRecipeToFilter("botanical_cube_building_flowers","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_flowers",            --  --  inst.prefab  实体名字，花球
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_flowers_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_flowers.xml",
        image = "botanical_cube_building_flowers.tex",
    },
    {"MODS"}
)
AddRecipeToFilter("botanical_cube_building_arrowroot","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_arrowroot",            --  --  inst.prefab  实体名字，竹芋
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_arrowroot_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_arrowroot.xml",
        image = "botanical_cube_building_arrowroot.tex",
    },
    {"MODS"}
)
AddRecipeToFilter("botanical_cube_building_hanging_plant","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_hanging_plant",            --  --  inst.prefab  实体名字，仙洞垂吊
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_hanging_plant_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_hanging_plant.xml",
        image = "botanical_cube_building_hanging_plant.tex",
    },
    {"MODS"}
)

AddRecipeToFilter("botanical_cube_building_monstera_hole","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_monstera_hole",            --  --  inst.prefab  实体名字，仙洞龟背竹
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_monstera_hole_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_monstera_hole.xml",
        image = "botanical_cube_building_monstera_hole.tex",
    },
    {"MODS"}
)
AddRecipeToFilter("botanical_cube_building_happy_leaf","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_happy_leaf",            --  --  inst.prefab  实体名字，快乐叶子
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_happy_leaf_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_happy_leaf.xml",
        image = "botanical_cube_building_happy_leaf.tex",
    },
    {"MODS"}
)
AddRecipeToFilter("botanical_cube_building_cissusdiscolor","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_cissusdiscolor",            --  --  inst.prefab  实体名字，锦叶葡萄
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_cissusdiscolor_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_cissusdiscolor.xml",
        image = "botanical_cube_building_cissusdiscolor.tex",
    },
    {"MODS"}
)

AddRecipeToFilter("botanical_cube_building_monstera","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_monstera",            --  --  inst.prefab  实体名字，龟背竹
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_monstera_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_monstera.xml",
        image = "botanical_cube_building_monstera.tex",
    },
    {"MODS"}
)

AddRecipeToFilter("botanical_cube_building_platycerium","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_platycerium",            --  --  inst.prefab  实体名字，鹿角蕨
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("foliage", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_platycerium_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_platycerium.xml",
        image = "botanical_cube_building_platycerium.tex",
    },
    {"MODS"}
)

AddRecipeToFilter("botanical_cube_building_rocking_chair","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_rocking_chair",            --  --  inst.prefab  实体名字，摇摇椅
    { Ingredient("cutgrass", 9),Ingredient("rope", 1),Ingredient("boards", 2) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_rocking_chair_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_rocking_chair.xml",
        image = "botanical_cube_building_rocking_chair.tex",
    },
    {"MODS"}
)

AddRecipeToFilter("botanical_cube_building_show_shelf","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_show_shelf",            --  --  inst.prefab  实体名字，展示架
    { Ingredient("pinecone", 1),Ingredient("rope", 1),Ingredient("boards", 1) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_show_shelf_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_show_shelf.xml",
        image = "botanical_cube_building_show_shelf.tex",
    },
    {"MODS"}
)

AddRecipeToFilter("botanical_cube_building_begonia","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_begonia",            --  --  inst.prefab  实体名字，秋海棠
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_begonia_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_begonia.xml",
        image = "botanical_cube_building_begonia.tex",
    },
    {"MODS"}
)

AddRecipeToFilter("botanical_cube_building_leaf_carpet","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_leaf_carpet",            --  --  inst.prefab  实体名字，叶片地毯
    { Ingredient("beefalowool", 6),Ingredient("rope", 1),Ingredient("silk", 4)  }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_leaf_carpet_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_leaf_carpet.xml",
        image = "botanical_cube_building_leaf_carpet.tex",
    },
    {"MODS"}
)

AddRecipeToFilter("botanical_cube_building_myster_carpet","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_myster_carpet",            --  --  inst.prefab  实体名字，神秘地毯
    { Ingredient("beefalowool", 6),Ingredient("rope", 1),Ingredient("silk", 4) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_myster_carpet_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_myster_carpet.xml",
        image = "botanical_cube_building_myster_carpet.tex",
    },
    {"MODS"}
)

AddRecipeToFilter("botanical_cube_building_daisy","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_daisy",            --  --  inst.prefab  实体名字，雏菊
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_daisy_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_daisy.xml",
        image = "botanical_cube_building_daisy.tex",
    },
    {"MODS"}
)

AddRecipeToFilter("botanical_cube_building_gesneriaceae","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_gesneriaceae",            --  --  inst.prefab  实体名字，苦苣苔
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_gesneriaceae_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_gesneriaceae.xml",
        image = "botanical_cube_building_gesneriaceae.tex",
    },
    {"MODS"}
)

AddRecipeToFilter("botanical_cube_building_lilies","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_lilies",            --  --  inst.prefab  实体名字，百合花
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_lilies_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_lilies.xml",
        image = "botanical_cube_building_lilies.tex",
    },
    {"MODS"}
)

AddRecipeToFilter("botanical_cube_building_garland","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_garland",            --  --  inst.prefab  实体名字，花环
    { Ingredient("twigs", 2),Ingredient("petals", 3),Ingredient("cutgrass", 3) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        placer = "botanical_cube_building_garland_placer",                       -------- 建筑放置器        
        atlas = "images/map_icons/botanical_cube_building_garland.xml",
        image = "botanical_cube_building_garland.tex",
    },
    {"MODS"}
)