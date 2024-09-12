-- name = "AΙΟ colors"
-- type = "widget"
-- description = "Shows colors returned by aio:colors() function"
--foldable = "true"
-- author = "Theodor Galanis"
-- version = "1"

function on_resume()
  local colors = aio:colors()
  local colors_strings = stringify_table(colors)

  ui:show_lines(colors_strings)
end

function stringify_table(tab)
  local new_tab = {}

  for k,v in pairs(tab) do
    table.insert(new_tab, k..": "..tostring(v))
  end

  return new_tab
end