-- name = "Random jokes"
-- description = "official-joke-api.appspot.com"
-- type = "widget"
-- author = "Evgeny Zobnin (zobnin@gmail.com)"
-- version = "1.0"

function on_alarm()
    net:get_text("https://official-joke-api.appspot.com/random_joke") 
end

function on_network_result(result)
    local setup = ajson:get_value(result, "object string:setup")
    local punchline = ajson:get_value(result, "object string:punchline")
    ui:show_lines({setup, punchline})
end
