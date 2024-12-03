author = "可爱的小亨"
-- from stringutil.lua

local function ChooseTranslationTable_Test(_table)
  if ChooseTranslationTable then
    return ChooseTranslationTable(_table)
  else
    return _table["zh"]
  end
end


----------------------------------------------------------------------------
--- 版本号管理（暂定）：最后一位为内部开发版本号，或者修复小bug的时候进行增量。
---                   倒数第二位为对外发布的内容量版本号，有新内容的时候进行增量。
---                   第二位为大版本号，进行主题更新、大DLC发布的时候进行增量。
---                   第一位暂时预留。 
----------------------------------------------------------------------------
local the_version = "0.01.00.000006"



local function Check_Mod_is_Internal_Version()
  if folder_name and (folder_name == "DST_MOD_botanical_cube") then
      return true
  end
  return false
end

local function GetName()
  ----------------------------------------------------------------------------
  ---- 参数表： loc.lua 里面的localizations 表，code 为 这里用的index
  local temp_table = {
      "DST_MOD_botanical_cube",                               ----- 默认情况下(英文)
      ["zh"] = "植物魔方",                                 ----- 中文
  }

  local temp_table_internal = {
    "DST_MOD_botanical_cube (BETA)",                               ----- 默认情况下(英文)
    ["zh"] = "植物魔方(BETA)",                                 ----- 中文
  }

  if Check_Mod_is_Internal_Version() then
    return ChooseTranslationTable_Test(temp_table_internal)
  end
  return ChooseTranslationTable_Test(temp_table)
end

local function GetDesc()
    local temp_table = {
      [[
        111
      ]],
      ["zh"] = [[
        1111
      ]]
    }
    local ret = the_version .. "  \n  "..ChooseTranslationTable_Test(temp_table)
    return ret
end

name = GetName()
description = GetDesc()

version = the_version ------ MOD版本，上传的时候必须和已经在工坊的版本不一样

api_version = 10
icon_atlas = "modicon.xml"
icon = "modicon.tex"
forumthread = ""
dont_starve_compatible = true
dst_compatible = true
all_clients_require_mod = true

priority = -10000000000  -- MOD加载优先级 影响某些功能的兼容性，比如官方Com 的 Hook


local function IsChinese()
  if locale == nil then
    return true
  else
    return locale == "zh" or locate == "zht" or locate == "zhr" or false
  end
end
local keys_option = {
  {description = "KEY_A", data = "KEY_A"},
  {description = "KEY_B", data = "KEY_B"},
  {description = "KEY_C", data = "KEY_C"},
  {description = "KEY_D", data = "KEY_D"},
  {description = "KEY_E", data = "KEY_E"},
  {description = "KEY_F", data = "KEY_F"},
  {description = "KEY_G", data = "KEY_G"},
  {description = "KEY_H", data = "KEY_H"},
  {description = "KEY_I", data = "KEY_I"},
  {description = "KEY_J", data = "KEY_J"},
  {description = "KEY_K", data = "KEY_K"},
  {description = "KEY_L", data = "KEY_L"},
  {description = "KEY_M", data = "KEY_M"},
  {description = "KEY_N", data = "KEY_N"},
  {description = "KEY_O", data = "KEY_O"},
  {description = "KEY_P", data = "KEY_P"},
  {description = "KEY_Q", data = "KEY_Q"},
  {description = "KEY_R", data = "KEY_R"},
  {description = "KEY_S", data = "KEY_S"},
  {description = "KEY_T", data = "KEY_T"},
  {description = "KEY_U", data = "KEY_U"},
  {description = "KEY_V", data = "KEY_V"},
  {description = "KEY_W", data = "KEY_W"},
  {description = "KEY_X", data = "KEY_X"},
  {description = "KEY_Y", data = "KEY_Y"},
  {description = "KEY_Z", data = "KEY_Z"},
  {description = "KEY_F1", data = "KEY_F1"},
  {description = "KEY_F2", data = "KEY_F2"},
  {description = "KEY_F3", data = "KEY_F3"},
  {description = "KEY_F4", data = "KEY_F4"},
  {description = "KEY_F5", data = "KEY_F5"},
  {description = "KEY_F6", data = "KEY_F6"},
  {description = "KEY_F7", data = "KEY_F7"},
  {description = "KEY_F8", data = "KEY_F8"},
  {description = "KEY_F9", data = "KEY_F9"},

}
configuration_options =
{
    {
        name = "LANGUAGE",
        label = "Language/语言",
        hover = "Set Language/设置语言",
        options =
        {
          {description = "Auto/自动", data = "auto"},
          {description = "English", data = "en"},
          {description = "中文", data = "ch"},
        },
        default = "auto",
    },
    {
        name = "DEBUGGING_MOD",
        label = Check_Mod_is_Internal_Version() and "开发者模式" or "",
        hover = Check_Mod_is_Internal_Version() and "开发者模式" or "",
        options = Check_Mod_is_Internal_Version() and 
        {
          {description = IsChinese() and "关" or "OFF", data = false},
          {description = IsChinese() and "开" or "ON", data = true},
        } or  {{description = "", data = false}},
        default = false,
    },

----------------------------------------------------------------------------------------------------------

  
}
