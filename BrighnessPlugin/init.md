# Brightness.init()

|                      | &nbsp;
| -------------------- | ---------------------------------------------------------------
| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [Brightness.*](Readme.markdown)


## Overview

This function is to init brightness plugin, it takes callback as parameter, in order to know what is device brightness value.


## Syntax

	Brightness.loadTable( callback )

##### callback <small>(required)</small>
_[Constant](http://docs.coronalabs.com/api/type/Function.html)._ Function callback in order to know what is device brightness value


## Examples

``````lua
brightness = require("plugin.brightness")
function getBrightValue(event)
    if (event and event.BRIGHTNESS) then
        print("BRIGHTNESS = "..event.BRIGHTNESS)
    end
end
brightness.init(getBrightValue)
``````
