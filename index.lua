-- game id, whitelisted
global.VapeDev = {
    6872265039
};

local games = {
    [6872265039] = true
};

local function getScript(URL)
    if global.VapeDev[game.Players.LocalPlayer] and readfile then
        print("[VapeDev] "..URL)
        return readfile('Water/'..URL)
    else
        print("Reading from Repo: "..URL)
        return game:HttpGet("https://raw.githubusercontent.com/Cadez650/Water-Client/main/"..URL, true)
    end
end

local currentGame = game.PlacedId;

print(currentGame .. " : " .. game.Name);
loadstring(getScript("games/"..currentGame..".lua"))();