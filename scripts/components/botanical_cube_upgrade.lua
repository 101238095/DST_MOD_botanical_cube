local function onitem(self, item)
    self.inst.replica.botanical_cube_upgrade:SetItem(item)
end

local function oncurrent(self, current)
    self.inst.replica.botanical_cube_upgrade:SetCurrent(current) --主机修改自己副件的值
end

local function onmax(self, max)
    self.inst.replica.botanical_cube_upgrade:SetMax(max)
end

-- 加载的时候根据当前等级初始化一下
local function Init(inst, self)
    self.onlevelchange(self.inst, self.current, self.data)
end

-- 升级组件
local Upgrade = Class(function(self, inst)
    self.inst = inst

    self.item = ""                   --可以升级的物品预制件名
    self.current = 0                 --当前给予的个数
    self.max = 0                     --最多可给予的个数

    self.onlevelchange = nil         --当等级改变时
    self.data = {}                   --只是标记使用，存储一些标记

    inst:DoTaskInTime(0, Init, self) --初始化，延迟一下再执行
end, nil, {
    -- 当值发生改变时会调用
    item = onitem,
    current = oncurrent,
    max = onmax
})

--- 升级
function Upgrade:Upgrade()
    if self.current >= self.max then return end            --已经满级

    self.current = self.current + 1                        --等级加1
    self.onlevelchange(self.inst, self.current, self.data) --当等级改变时
end

function Upgrade:OnSave()
    return {
        current = self.current,
    }
end

function Upgrade:OnLoad(data)
    if not data then return end

    self.current = data.current or self.current
end

return Upgrade
