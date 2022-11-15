local SeloAddon = ...
SeloAddon = {}

function SeloAddon.SlashCmdHandler(msg, editbox)
    print("Hello, WoW2!")
    -- pattern matching that skips leading whitespace and whitespace between cmd and args
    -- any whitespace at end of args is retained
    local _, _, cmd, args = string.find(msg, "%s?(%w+)%s?(.*)")
        
    if cmd == "add" and args ~= "" then
        print("adding " .. args)
        -- Handle adding of the contents of rest... to something.
    elseif cmd == "remove" and args ~= "" then
        print("removing " .. args)
        -- Handle removing of the contents of rest... to something.   
    else
        -- If not handled above, display some sort of help message
        print("Syntax: /hellow (add|remove) someIdentifier");
    end
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

    if editbox then
        print("arg2: '");
        print(editbox);
        -- change the text on the editBox.
        -- Why do I get this nullpoint exception if I check `if editbox then`?!
        -- SeloAddon\SeloAddon.lua:36: attempt to index global 'editBox' (a nil value)
        editBox:Show()
        editBox:SetText("Blah blah blah!")
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
