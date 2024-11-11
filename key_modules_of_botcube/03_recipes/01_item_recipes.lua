

-- ---- 金丹---- 

--[[
AddRecipeToFilter("botanical_cube_building_paling_item","CHARACTER")     ---- 添加物品到目标标签
 AddRecipe2(
     "botanical_cube_building_paling_item",            --  --  inst.prefab  实体名字
    { Ingredient("lavae_egg", 1),Ingredient("purplegem", 5),Ingredient("orangegem", 5),Ingredient("moonrocknugget", 10) }, 
     TECH.MAGIC_THREE, --- TECH.NONE
     {
         nounlock = true,
        no_deconstruction = false,
        atlas = "images/inventoryimages/botanical_cube_building_paling_item.xml",
         image = "botanical_cube_building_paling_item.tex",
     },
    {"CHARACTER","MAGIC"}
 )
 RemoveRecipeFromFilter("botanical_cube_building_paling_item","MODS")  -- 在【模组物品】标签里移除这个。
  
--]]

-- ---- 栅栏物品---- 
--[[
AddRecipeToFilter("botanical_cube_building_paling_item","CHARACTER")     ---- 添加物品到目标标签
 AddRecipe2(
     "botanical_cube_building_paling_item",            --  --  inst.prefab  实体名字
    { 
        Ingredient("pinecone", 1),
        Ingredient("rope", 1),
        Ingredient("boards", 1)
    }, 
     TECH.SCIENCE_TWO, --- TECH.NONE
    {
        nounlock = true,
        no_deconstruction = false,
        placer = "botanical_cube_building_paling_item_placer", 
        atlas = "images/map_icons/botanical_cube_building_paling.xml",
        image = "botanical_cube_building_paling.tex",
    }
 )
 RemoveRecipeFromFilter("botanical_cube_building_paling_item","MODS")  -- 在【模组物品】标签里移除这个。

AddRecipeToFilter("botanical_cube_building_paling_item","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_paling_item",            --  --  inst.prefab  实体名字
    { Ingredient("pinecone", 1),Ingredient("rope", 1),Ingredient("boards", 1) }, 
    TECH.SCIENCE_TWO, --- TECH.二本科技
    {
        no_deconstruction=false,
        product = "botanical_cube_building_paling_item",
        numtogive =  6,
        --placer = "botanical_cube_building_paling_item_placer",                       -------- 建筑放置器        
        atlas = "images/inventoryimages/botanical_cube_building_paling_item.xml",
        image = "botanical_cube_building_paling_item.tex",
    },
    {"MODS"}
)--]]