local Library = require "CoronaLibrary"
local lib = Library:new{ name='plugin.brightness', publisherId='com.keetiz' }

local function defaultFunction()
  print( "WARNING: The '" .. lib.name .. "' library is not available on this platform." )
end

lib.show = defaultFunction
lib.init = defaultFunction
lib.getBright = defaultFunction
lib.setBright = defaultFunction

return lib
