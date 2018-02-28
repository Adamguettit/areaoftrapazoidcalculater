-----------------------------------------------------------------------------------------
--
-- main.lua
-- created on : feb 26
-- createb by : Adam
-----------------------------------------------------------------------------------------

display.setDefault( "background", 0.2, 0.2, 0.2 )


-- the text boxes

local lengthOffirstbaseTextField = native.newTextField( display.contentCenterX - 400, display.contentCenterY - 300, 450, 90 )
lengthOffirstbaseTextField.id = "length textField"

local lengthOfsecondbaseTextField = native.newTextField( display.contentCenterX - 400, display.contentCenterY - 100, 450, 90 )
lengthOfsecondbaseTextField.id = "length textField"

local lengthOfheightTextField = native.newTextField( display.contentCenterX - 400, display.contentCenterY +100, 450, 90 )
lengthOfheightTextField.id = "length textField"

local areaOfTrapzoidTextField = display.newText( "(Answer will be here after all variables are writen)", display.contentCenterX - 10, display.contentCenterY + 300, native.systemFont, 75 )
areaOfTrapzoidTextField.id = "areaOfTrapzoidTextField"



-- the click button

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 400, 157 )
calculateButton.x = display.contentCenterX + 100
calculateButton.y = display.contentCenterY -50
calculateButton.id = "calculate button"

local function calculateButtonTouch( event )

    -- this function calculates the area of a trapizoid given the length of one of its sides

 

local lengthOffirstbase

local lengthOfsecondbase

local lengthOfheight

local areaOfTrapzoid

 

    lengthOffirstbase = lengthOffirstbaseTextField.text

    lengthOfsecondbase = lengthOfsecondbaseTextField.text

    lengthOfheight = lengthOfheightTextField.text

    areaOfTrapzoid = (lengthOffirstbase + lengthOfsecondbase) / 2 * lengthOfheight

    -- print( area of trapizoid )

    areaOfTrapzoidTextField.text = "The area is " .. areaOfTrapzoid




    return true

end

calculateButton:addEventListener( "touch", calculateButtonTouch )

--this shows the names of which value we should put in each textbox

local lenghtOffirstbaseTextField = display.newText( "first base", display.contentCenterX - 825, display.contentCenterY - 300, native.systemFont, 65 )
lenghtOffirstbaseTextField:setFillColor( 1, 1, 1 )

local lenghtOfsecondbaseTextField = display.newText( "second base", display.contentCenterX - 825, display.contentCenterY - 100, native.systemFont, 65 )
lenghtOfsecondbaseTextField:setFillColor( 1, 1, 1 )

local lenghtOfheightTextField = display.newText( "height", display.contentCenterX - 825, display.contentCenterY + 100, native.systemFont, 65 )
lenghtOfheightTextField:setFillColor( 1, 1, 1 )

display.newText( "Please enter a numarical value in each textbox:", display.contentCenterX - 300, display.contentCenterY -400, native.systemFont, 65 )

display.newText( "Area of Trapzoid calculater", display.contentCenterX , display.contentCenterY - 600, native.systemFont, 90 )
