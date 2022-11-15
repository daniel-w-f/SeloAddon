local SeloAddon = ...
SeloAddon = {}

function SeloAddon.SlashCmdHandler(msg, editbox)
    print("Hello, WoW2!")
end
SLASH_ADDONSELO1 = "/as";
SlashCmdList["ADDONSELO"] = SeloAddon.SlashCmdHandler;

SLASH_SELOADDON1 = "/sa";
-- SlashCmdList["SELOADDON"] = function(msg, _)
SlashCmdList["SELOADDON"] = function(msg, editbox)
    print("Hello, WoW!")
    if msg ~= "" then
        print("arg1: '".. msg .."'");
    end

    if editbox ~= "" then
        print("arg2: '".. editbox .."'");
    end
end

function SeloAddon_OnLoad()
    -- this:RegisterEvent("VARIABLES_LOADED")

    SLASH_TEST1 = "/test1"
    SLASH_TEST2 = "/addontest1"
    SlashCmdList["TEST"] = function(msg)
        print("Hello World!")
    end 
end

SeloAddon_SlashCommand = function (msg, _)
    print("Hello, WoW2!")
end

-- 1. Pick HELLOWORLD as the unique identifier.
-- 2. Pick /hiw and /hellow as slash commands (/hi and /hello are actual emotes)
SLASH_HELLOWORLD1, SLASH_HELLOWORLD2 = '/hiw', '/hellow'; -- 3.
function SlashCmdList.HELLOWORLD(msg, editbox) -- 4.
    print("Hello, World!");
end
