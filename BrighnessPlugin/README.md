# BRIGHTNESS: Plugin API Docs

|                      | &nbsp;
| -------------------- | ---------------------------------------------------------------
| __Corona Store__     | [Brightness](http://store.coronalabs.com/plugin/Brightness)

## Overview

The Brightness plugin can be used in your [Corona](https://coronalabs.com/products/corona-sdk/) project. It enables you to change your device's brightness


## Syntax

	local brightness = require "plugin.brightness"

### Functions

##### [brightness.init()](init.md)

##### [brightness.getBright()](get.md)

##### [brightness.setBright()](set.md)



## Project Configuration

### Corona Store Activation

In order to use this plugin, you must activate the plugin at the [Corona Store](http://store.coronalabs.com/plugin/Brightness).


### SDK

When you build using the Corona Simulator, the server automatically takes care of integrating the plugin into your project.

All you need to do is add an entry into a `plugins` table of your `build.settings`. The following is an example of a minimal `build.settings` file:

``````
settings =
{
	plugins =
	{
		-- key is the name passed to Lua's 'require()'
		["plugin.brightness"] =
		{
			-- required
			publisherId = "com.keetiz",
		},
	},
}
``````

### Enterprise

If you have activated this plugin, you can download this plugin from the corresponding plugin page in the [Corona Store](http://store.coronalabs.com/plugin/Brightness).



### Support

More support is available from the KEETIZ team:

* [E-mail](mailto:bancel@keetiz.com)
* [Plugin Publisher](https://www.keetiz.com)


## Compatibility

| Platform                     | Supported
| ---------------------------- | ----------------------------
| iOS                          | Yes
| Android                      | Yes
| Android (GameStick)          | Yes
| Android (Kindle)             | Yes
| Android (NOOK)               | Yes
| Android (Ouya)               | Yes
| Mac App                      | No
| Win32 App                    | No
| Windows Phone 8              | No
| Corona Simulator (Mac)       | No
| Corona Simulator (Win)       | No
