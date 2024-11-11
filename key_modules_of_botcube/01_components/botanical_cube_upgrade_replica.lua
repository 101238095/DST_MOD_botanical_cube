local Upgrade = Class(function(self, inst)
    self.inst = inst

    -- 网络变量，定义了网络变量我们才能在客机获取到自己想知道的值
    self.item = net_string(inst.GUID, "botanical_cube_upgrade.item")
    self.current = net_byte(inst.GUID, "botanical_cube_upgrade_replica.current") --[0..255]
    self.max = net_byte(inst.GUID, "botanical_cube_upgrade_replica.max")         --[0..255]
end)

-- 主机设置值
function Upgrade:SetItem(item)
    self.item:set(item) --这个主机一设置，那我们就能在客机获取到这个值了
end

function Upgrade:GetItem()
    return self.item:value()
end

function Upgrade:SetCurrent(current)
    self.current:set(current)
end

function Upgrade:GetCurrent()
    return self.current:value()
end

function Upgrade:SetMax(max)
    self.max:set(max)
end

function Upgrade:GetMax()
    return self.max:value()
end

return Upgrade
