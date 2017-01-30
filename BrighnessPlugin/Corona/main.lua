
__brightness = require("plugin.brightness")
__device = require("device")
require("tools")

--Notice how I have to handle font names per platform !!! please fix this also ;)
fBold = "OpenSans-Bold"
fRegular = "OpenSans-Regular"
fLight = "OpenSans-Light"
if(__device.isApple) then
	fBold = "OpenSans-Bold"
	fRegular = "OpenSans"
	fLight = "OpenSans-Light"
end

---------------------------------------------------------------------------------
--
-- main.lua
--
---------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar( display.HiddenStatusBar )

-- require the composer library
local composer = require "composer"

function getBrightValue(event)
    if (event and event.BRIGHTNESS) then
        print("BRIGHTNESS = "..event.BRIGHTNESS)
        _print_r(tonumber(event.BRIGHTNESS))
        __initialBrightLevel = event.BRIGHTNESS
    else
        print("BRIGHTNESS ERROR : SET DEFAULT TO 0.5")
        __initialBrightLevel = "0.5"
    end
end

__brightness.init(getBrightValue)


-- Add any objects that should appear on all scenes below (e.g. tab bar, hud, etc)


-- Add any system wide event handlers, location, key events, system resume/suspend, memory, etc.

-- load scene1
timer.performWithDelay( 2000, function() composer.gotoScene( "scene0" ) end )
