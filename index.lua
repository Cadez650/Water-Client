-- game id, whitelisted
global.VapeDev = {
    6872265039
};

local games = {
    [6872265039] = true
};

local function getScript(URL)
    if global.VapeDev[game.Players.LocalPlayer] then
        print("[VapeDev] "..URL)
        return readfile('Water/'..URL)
    else
        print("Reading from Repo: "..URL)
        return 
    end
end

local currentGame = game.PlacedId;

print(currentGame);