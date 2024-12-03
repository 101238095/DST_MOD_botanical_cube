local FN = {}

local SKIN_IDS = {}
local SKINS = {}

local function AddSkin(prefab, skin, data)
    SKINS[prefab] = SKINS[prefab] or {}
    SKINS[prefab][skin] = data
end

----------------------------------------------------------------------------------------------------
AddSkin("botanical_cube_building_flowers", "botanical_cube_building_flowers_blue", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_flowers_blue")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers_blue")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_flowers")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers")--设置build
    end

})

AddSkin("botanical_cube_building_flowers", "botanical_cube_building_flowers_darkgreen", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_flowers_darkgreen")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers_darkgreen")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_flowers")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers")--设置build
    end

})

AddSkin("botanical_cube_building_flowers", "botanical_cube_building_flowers_red", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_flowers_red")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers_red")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_flowers")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers")--设置build
    end

})

AddSkin("botanical_cube_building_flowers", "botanical_cube_building_flowers_orange", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_flowers_orange")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers_orange")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_flowers")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers")--设置build
    end

})

AddSkin("botanical_cube_building_flowers", "botanical_cube_building_flowers_pink", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_flowers_pink")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers_pink")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_flowers")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers")--设置build
    end

})

AddSkin("botanical_cube_building_flowers", "botanical_cube_building_flowers_yellow", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_flowers_yellow")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers_yellow")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_flowers")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers")--设置build
    end

})

AddSkin("botanical_cube_building_flowers", "botanical_cube_building_flowers_purple", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_flowers_purple")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers_purple")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_flowers")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers")--设置build
    end

})

AddSkin("botanical_cube_building_flowers", "botanical_cube_building_flowers_blue2", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_flowers_blue2")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers_blue2")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_flowers")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers")--设置build
    end

})

AddSkin("botanical_cube_building_flowers", "botanical_cube_building_flowers_white", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_flowers_white")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers_white")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_flowers")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers")--设置build
    end

})

AddSkin("botanical_cube_building_flowers", "botanical_cube_building_flowers_white2", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_flowers_white2")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers_white2")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_flowers")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_flowers")--设置build
    end

})

AddSkin("botanical_cube_building_arrowroot", "botanical_cube_building_arrowroot_yellow", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_arrowroot_yellow")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_arrowroot_yellow")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_arrowroot")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_arrowroot")--设置build
    end

})

AddSkin("botanical_cube_building_happy_leaf", "botanical_cube_building_happy_leafr", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_happy_leafr")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_happy_leafr")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_happy_leaf")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_happy_leaf")--设置build
    end

})

AddSkin("botanical_cube_building_happy_leaf", "botanical_cube_building_happy_leafl", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_happy_leafl")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_happy_leafl")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_happy_leaf")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_happy_leaf")--设置build
    end

})

AddSkin("botanical_cube_building_leaf_carpet", "botanical_cube_building_leaf_carpet_blue", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_leaf_carpet_blue")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_leaf_carpet_blue")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_leaf_carpet")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_leaf_carpet")--设置build
    end

})

AddSkin("botanical_cube_building_leaf_carpet", "botanical_cube_building_leaf_carpet_red", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_leaf_carpet_red")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_leaf_carpet_red")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_leaf_carpet")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_leaf_carpet")--设置build
    end

})

AddSkin("botanical_cube_building_leaf_carpet", "botanical_cube_building_leaf_carpet_orange", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_leaf_carpet_orange")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_leaf_carpet_orange")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_leaf_carpet")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_leaf_carpet")--设置build
    end

})

AddSkin("botanical_cube_building_leaf_carpet", "botanical_cube_building_leaf_carpet_purple", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_leaf_carpet_purple")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_leaf_carpet_purple")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_leaf_carpet")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_leaf_carpet")--设置build
    end

})

AddSkin("botanical_cube_building_leaf_carpet", "botanical_cube_building_leaf_carpet_darkgreen", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_leaf_carpet_darkgreen")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_leaf_carpet_darkgreen")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_leaf_carpet")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_leaf_carpet")--设置build
    end

})

AddSkin("botanical_cube_building_myster_carpet", "botanical_cube_building_myster_carpet_darkgreen", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_myster_carpet_darkgreen")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_myster_carpet_darkgreen")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_myster_carpet")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_myster_carpet")--设置build
    end

})

AddSkin("botanical_cube_building_myster_carpet", "botanical_cube_building_myster_carpet_marry", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_myster_carpet_marry")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_myster_carpet_marry")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_myster_carpet")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_myster_carpet")--设置build
    end

})

AddSkin("botanical_cube_building_daisy", "botanical_cube_building_daisy_purple", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_daisy_purple")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_daisy_purple")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_daisy")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_daisy")--设置build
    end

})

AddSkin("botanical_cube_building_daisy", "botanical_cube_building_daisy_green", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_daisy_green")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_daisy_green")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_daisy")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_daisy")--设置build
    end

})

AddSkin("botanical_cube_building_gesneriaceae", "botanical_cube_building_gesneriaceae_blue", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_gesneriaceae_blue")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_gesneriaceae_blue")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_gesneriaceae")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_gesneriaceae")--设置build
    end

})

AddSkin("botanical_cube_building_gesneriaceae", "botanical_cube_building_gesneriaceae_darkgreen", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_gesneriaceae_darkgreen")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_gesneriaceae_darkgreen")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_gesneriaceae")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_gesneriaceae")--设置build
    end

})

AddSkin("botanical_cube_building_gesneriaceae", "botanical_cube_building_gesneriaceae_green", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_gesneriaceae_green")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_gesneriaceae_green")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_gesneriaceae")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_gesneriaceae")--设置build
    end

})

AddSkin("botanical_cube_building_gesneriaceae", "botanical_cube_building_gesneriaceae_pink", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_gesneriaceae_pink")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_gesneriaceae_pink")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_gesneriaceae")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_gesneriaceae")--设置build
    end

})

AddSkin("botanical_cube_building_gesneriaceae", "botanical_cube_building_gesneriaceae_yellow", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_gesneriaceae_yellow")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_gesneriaceae_yellow")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_gesneriaceae")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_gesneriaceae")--设置build
    end

})

AddSkin("botanical_cube_building_gesneriaceae", "botanical_cube_building_gesneriaceae_purple", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_gesneriaceae_purple")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_gesneriaceae_purple")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_gesneriaceae")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_gesneriaceae")--设置build
    end

})

AddSkin("botanical_cube_building_lilies", "botanical_cube_building_lilies_green", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_lilies_green")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_lilies_green")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_lilies")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_lilies")--设置build
    end

})

AddSkin("botanical_cube_building_lilies", "botanical_cube_building_lilies_pink", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_lilies_pink")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_lilies_pink")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_lilies")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_lilies")--设置build
    end

})

AddSkin("botanical_cube_building_lilies", "botanical_cube_building_lilies_yellow", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_lilies_yellow")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_lilies_yellow")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_lilies")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_lilies")--设置build
    end

})

AddSkin("botanical_cube_building_lilies", "botanical_cube_building_lilies_purple", {
    type = "base",                                         --类型，base就行
    rarity = "Elegant",                                    --稀有度，会给皮肤字体加不同颜色
    init_fn = function(inst)                               --皮肤初始化函数
        inst.AnimState:SetBank("botanical_cube_building_lilies_purple")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_lilies_purple")--设置build
    end,
    clear_fn = function(inst)                              --不再使用该皮肤时
        inst.AnimState:SetBank("botanical_cube_building_lilies")--设置bank
        inst.AnimState:SetBuild("botanical_cube_building_lilies")--设置build
    end

})
----------------------------------------------------------------------------------------------------

for _, skins in pairs(SKINS) do
    for id, data in pairs(skins) do
        SKIN_IDS[id] = data
    end
end

function FN.GetAllSkins()
    return SKINS
end

---是否是自己定义的皮肤
---@param id string
function FN.GetSkinData(id)
    return id and SKIN_IDS[id]
end

return FN
