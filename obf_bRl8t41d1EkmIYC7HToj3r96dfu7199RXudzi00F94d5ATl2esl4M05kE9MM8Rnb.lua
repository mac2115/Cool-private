







function bypass()

local __Namecall
__Namecall = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
    local Args, Method = {...}, getnamecallmethod()
    
    if tostring(self.Name):match('AntiCheat') and tostring(Method):match('FireServer') then
        return
    end
    
    return __Namecall(self, ...)
end))
end



local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()


local Window = Library.CreateLib("Bypass", "DarkTheme")

local Tab = Window:NewTab("Ac bypass")
local Section = Tab:NewSection("Ac bypass")

Section:NewButton("Ac bypass", "Bypasses anti cheat", function()
    bypass()
end)
