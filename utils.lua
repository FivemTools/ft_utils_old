--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_utils
--

--
function toFloat(number)
  return number + 0.0
end

-- Explode string
function stringSplit(string, delimiter)
  if sep == nil then
      sep = "%s"
  end
  local t={} ; i=1
  for word in string.gmatch(string, "([^"..sep.."]+)") do
      t[i] = word
      i = i + 1
  end
  return t
end

-- Get SteamId
function getSteamId(source)

  local identifiers = GetPlayerIdentifiers(source)
  return identifiers[1]

end

-- Get first character
function firstChar(String, Compare)

  if (string.sub(String, 1, string.len(Compare)) == Compare) then
    return true
  else
    return false
  end

end

-- Print table
function tprint (tbl, indent)

  if type(tbl) == "table" then
    if not indent then indent = 0 end
    for k, v in pairs(tbl) do
      formatting = string.rep("  ", indent) .. k .. ": "
      if type(v) == "table" then
        print(formatting)
        tprint(v, indent + 1)
      elseif type(v) == "boolean" then
        if v then
          print(formatting .. "true")
        else
          print(formatting .. "false")
        end
      elseif type(v) == "nil" then
        print(formatting .. "nil")
      elseif type(v) == "function" then
        print(formatting .. "function")
      else
        print(formatting .. tostring(v))
      end
    end
  else
    print(tb1)
  end

end
