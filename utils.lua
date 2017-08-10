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