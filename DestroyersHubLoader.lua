if game.CoreGui:FindFirstChild("FinityUI") then
    ["FinityUI"]:Destroy()
end


repeat wait() until game.Players.LocalPlayer
wait()
repeat wait() until game.Players.LocalPlayer.Character


getgenv().http_request = http_request or request or (http and http.request) or syn.request 
repeat until http_request


function SendRequest(url)
    local response = http_request(
    {
        Url = url,  -- This website helps debug HTTP requests
        Method = "GET"
    }
    )
    return response
end



local GameTable = {
    ["5985232436"] = "Infectious-Smile",
    [""] = "",
    [""] = "",
    [""] = "",
    [""] = "",
    [""] = "",
    [""] = "",
    [""] = ""
}

local GameFound = false
local ScriptData = nil



local success, response = pcall(function()
    for key, value in pairs(GameTable) do
        if game.PlaceId == tonumber(key) then
            GameFound = true
            ScriptData = SendRequest("https://raw.githubusercontent.com/ErrorTeam011/Finity-Ui-Hub/source/"..value..".lua")
        end
    end
    if not GameFound then
        ScriptData = SendRequest("")
    end
    if ScriptData and ScriptData.Body then
        loadstring(ScriptData.Body)()
    else
        game.Players.LocalPlayer:Kick("\nSomething isnt right")
        wait(2)
        while true do end
    end

end)

