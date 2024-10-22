--------------------------------------------------------------------------------------------------------------------------------------------
---- 松果小屋
--------------------------------------------------------------------------------------------------------------------------------------------
AddRecipeToFilter("botanical_cube_building_pinecone_hut","STRUCTURES")     ---- 添加物品到目标标签
AddRecipe2(
    "botanical_cube_building_pinecone_hut",            --  --  inst.prefab  实体名字
    { Ingredient("pinecone", 10),Ingredient("rope", 2) }, 
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