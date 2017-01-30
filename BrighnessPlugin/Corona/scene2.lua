---------------------------------------------------------------------------------
--
-- scene.lua
--
---------------------------------------------------------------------------------

local sceneName = ...

local composer = require( "composer" )

-- Load scene with same root filename as this file
local scene = composer.newScene( sceneName )
---------------------------------------------------------------------------------

local nextSceneButton

function scene:create( event )
    local sceneGroup = self.view

    -- Called when the scene's view does not exist
    --
    -- INSERT code here to initialize the scene
    -- e.g. add display objects to 'sceneGroup', add touch listeners, etc

    text1 = display.newText( sceneGroup, "brightness.setBright(x) -- Here you can, for example, set the bright to the maximum to simplify reading of the QRCode."
        , display.contentCenterX, display.contentCenterY
        , display.actualContentWidth-40,0
        , fRegular ,20 )
    text1:setFillColor( 0,0,0,1 )

    img=display.newImage( sceneGroup, "qrcode.png",display.contentCenterX, display.contentCenterY+100 )

end

function scene:show( event )
    __brightness.setBright(1)
    local sceneGroup = self.view
    local phase = event.phase

    if phase == "will" then
        -- Called when the scene is still off screen and is about to move on screen
        local title = self:getObjectByName( "Title" )
        title.x = display.contentWidth / 2
        title.y = display.contentHeight / 2
        title.size = display.contentWidth / 10
        local goToScene3Btn = self:getObjectByName( "GoToScene3Btn" )
        goToScene3Btn.x = display.contentWidth - 95
        goToScene3Btn.y = display.contentHeight - 35
        local goToScene3Text = self:getObjectByName( "GoToScene3Text" )
        goToScene3Text.x = display.contentWidth - 92
        goToScene3Text.y = display.contentHeight - 35
    elseif phase == "did" then
        -- Called when the scene is now on screen
        --
        -- INSERT code here to make the scene come alive
        -- e.g. start timers, begin animation, play audio, etc
        nextSceneButton = self:getObjectByName( "GoToScene3Btn" )
        if nextSceneButton then
        	-- touch listener for the button
        	function nextSceneButton:touch ( event )
        		local phase = event.phase
        		if "ended" == phase then
              composer.removeScene("scene2")
        			composer.gotoScene( "scene3", { effect = "fade", time = 300 } )
        		end
        	end
        	-- add the touch event listener to the button
        	nextSceneButton:addEventListener( "touch", nextSceneButton )
        end
    end
end

function scene:hide( event )
    local sceneGroup = self.view
    local phase = event.phase

    if event.phase == "will" then
        -- Called when the scene is on screen and is about to move off screen
        --
        -- INSERT code here to pause the scene
        -- e.g. stop timers, stop animation, unload sounds, etc.)
    elseif phase == "did" then
        -- Called when the scene is now off screen
		if nextSceneButton then
			nextSceneButton:removeEventListener( "touch", nextSceneButton )
		end
    end
end


function scene:destroy( event )
    local sceneGroup = self.view

    -- Called prior to the removal of scene's "view" (sceneGroup)
    --
    -- INSERT code here to cleanup the scene
    -- e.g. remove display objects, remove touch listeners, save state, etc
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

---------------------------------------------------------------------------------

return scene
