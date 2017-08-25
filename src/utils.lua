--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_utils
--

-- Convert number to float
function toFloat(number)

  return number + 0.0

end

-- Explode string
function stringSplit(string, delimiter)

  if delimiter == nil then
      delimiter = "%s"
  end

  local words = {}
  local explode = string.gmatch(string, "([^".. delimiter .."]+)")

  for key, word in pairs(explode) do
    words[key] = word
  end

  return words

end

-- Get first character
function firstChar(String, Compare)

  if (string.sub(String, 1, string.len(Compare)) == Compare) then
    return true
  else
    return false
  end

end
