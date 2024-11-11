GLOBAL.setmetatable(env,{__index=function(t,k) return GLOBAL.rawget(GLOBAL,k) end})


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- 语言检查
	--- en  ch
	TUNING.BOTCUBE_LANGUAGE = GetModConfigData("LANGUAGE") --- 语言
	TUNING.BOTCUBE_GET_LANGUAGE = TUNING.BOTCUBE_GET_LANGUAGE or function()
		if TUNING.BOTCUBE_LANGUAGE == "auto" then
			if LOC.GetLanguage() == LANGUAGE.CHINESE_S or LOC.GetLanguage() == LANGUAGE.CHINESE_S_RAIL or LOC.GetLanguage() == LANGUAGE.CHINESE_T then
				TUNING.BOTCUBE_LANGUAGE = "ch"
				return TUNING.BOTCUBE_LANGUAGE
			else
				TUNING.BOTCUBE_LANGUAGE = "en"
				return TUNING.BOTCUBE_LANGUAGE
			end
		else
			return TUNING.BOTCUBE_LANGUAGE
		end
	end
	
	TUNING.BOTCUBE_GET_STRINGS = function()
		return {}
	end
	TUNING.BOTCUBE_GET_ALL_STRINGS = function()
		return {}
	end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- 测试模式
	TUNING.BOTCUBE_DEBUGGING_MODE = GetModConfigData("DEBUGGING_MODE") --- 开发者模式
	TUNING.BOTCUBE_CONFIG = {}
	TUNING.BOTCUBE_CONFIG.modname = modname
	if TUNING.BOTCUBE_DEBUGGING_MODE then
		AddPlayerPostInit(function(player_inst)	---- 玩家进入后再执行。检查。
			if not TheWorld.ismastersim then
				return
			end
			player_inst:DoTaskInTime(2,function()
				TheNet:SystemMessage("植物魔方 测试模式 已开启")
			end)
		end)
	end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--增加升级组件和动作
AddReplicableComponent("botanical_cube_upgrade")

STRINGS.CHARACTERS.GENERIC.ACTIONFAIL.BOTANICAL_CUBE_UPGRADE = {MAX_LEVEL = "已经满级了，无法再升级。"}

-- 创建升级action，BOTANICAL_CUBE_UPGRADE是action的id


AddAction("BOTANICAL_CUBE_UPGRADE", "升级", function(act)
    -- act的参数：doer执行者、target鼠标所指目标、invobject手持的升级道具
    
	if act.target and act.target.components.botanical_cube_upgrade then
		local need = act.target.components.botanical_cube_upgrade.max - act.target.components.botanical_cube_upgrade.current
		local cost = math.min(need,GetStackSize(act.invobject))
		if cost <= 0 then
         --if act.target.components.botanical_cube_upgrade.current >= act.target.components.botanical_cube_upgrade.max then
            return false, "MAX_LEVEL" --已经满级了，不能再升级
        end

        --升级
        --act.target.components.botanical_cube_upgrade:Upgrade()
		for i = 1,cost do
		    act.target.components.botanical_cube_upgrade:Upgrade()
		end

        --升级道具减少一个
		if cost > 1 then
         --if act.invobject.components.stackable then
            act.invobject.components.stackable:Get(cost):Remove() --如果道具时可以堆叠的就拿取一个然后删除(每升一级，需要相应个数的道具)
        else
            act.invobject:Remove()                            --不能堆叠就直接删除
        end


        --升级音效
        if act.doer.SoundEmitter then
            act.doer.SoundEmitter:PlaySound("dontstarve/wilson/equip_item_gold")
        end

        return true --升级成功
    end

    return false --不能升级，应该不会发生这种情况
end)
-- USEITEM类型表示手持某个物品时触发
-- inventoryitem表示手持带有inventoryitem组件的物品才行，因为物品都带有inventoryitem组件，所以这里肯定触发
-- inst为手持物品、doer为玩家、target为鼠标悬停所指的对象、right表示是否右键才能触发
AddComponentAction("USEITEM", "inventoryitem", function(inst, doer, target, actions, right)
    if target.replica.botanical_cube_upgrade                               --目标可以升级
        and target.replica.botanical_cube_upgrade:GetItem() == inst.prefab --手持物品正好是目标升级需要的物品
    then
        table.insert(actions, ACTIONS.BOTANICAL_CUBE_UPGRADE)
    end
end)

-- 当需要执行action时，指定我们的state
AddStategraphActionHandler("wilson", ActionHandler(ACTIONS.BOTANICAL_CUBE_UPGRADE, "dolongaction"))
AddStategraphActionHandler("wilson_client", ActionHandler(ACTIONS.BOTANICAL_CUBE_UPGRADE, "dolongaction")) --这是延迟补偿下会执行的

-- hook显示对象名字的方法，在名字后面追加我们自己的文本
AddClassPostConstruct("widgets/hoverer", function(self)
    local OldSetString = self.text.SetString
    self.text.SetString = function(text, str)
        local target = TheInput:GetHUDEntityUnderMouse()
        target = (target and target.widget and target.widget.parent and target.widget.parent.item)
            or TheInput:GetWorldEntityUnderMouse()
        if not target or not target.replica or not target.components then return OldSetString(text, str) end --好像target有可能不是预制件

        -- 修改str
        if target.replica.botanical_cube_upgrade then
            str = str .. "\n等级: " .. target.replica.botanical_cube_upgrade:GetCurrent() --名字后面换行然后追加等级
        end

        return OldSetString(text, str)
    end
end)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


--- 
	Assets = {	}
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- 加载基础的素材库
	modimport("imports_of_botcube/__all_imports_init.lua")	---- 所有 import  文本库（语言库），素材库

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- 关键函数库
	modimport("key_modules_of_botcube/_all_modules_init.lua")	---- 载入关键功能模块
	
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- 物品prefab
	PrefabFiles = {
		"botcube__all_prefabs"
	}	
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---- debug 模块
	if TUNING.BOTCUBE_DEBUGGING_MODE then
		modimport("test_fn/_Load_All_debug_fn.lua")
	end
	
--皮肤	
	modimport("key_modules_of_botcube/skin")
	
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------