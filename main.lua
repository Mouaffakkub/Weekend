-----------------------------------------------------------------------------------------
-- Created by: Mouaffak Koubeisy
-- Created on: Mar 19 2018
-- This code determines wether the day imputed by the user is a weekday or not
-----------------------------------------------------------------------------------------

local dayTextField = native.newTextField( display.contentCenterX , display.contentCenterY - 300, 450, 75 )
dayTextField.id = "day textField"

local chooseDayField = display.newText( " Name a day ", display.contentCenterX , display.contentCenterY - 500, native.systemFont, 85 )
chooseDayField.id = "choose day textField"
chooseDayField:setFillColor( 1, 1, 1 )

local weekendDayField = display.newText( " It's the weekend! ", display.contentCenterX , display.contentCenterY - 500, native.systemFont, 85 )
weekendDayField.id = "weekend textField"
weekendDayField:setFillColor( 1, 1, 1 )
weekendDayField.alpha = 0.0

local weekdayField = display.newText( " It's a weekday! ", display.contentCenterX , display.contentCenterY - 500, native.systemFont, 85 )
weekdayField.id = "weekday textField"
weekdayField:setFillColor( 1, 1, 1 )
weekdayField.alpha = 0.0

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.jpg", 425, 251 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"

-- local varaibles
local dayToGuess 



local function calculateButtonTouch( event )
	-- xbnxcvnxcvn

	dayToGuess = chooseDayField.text

	if dayToGuess == "sunday" then
		dayTextField.alpha = 0.0
		chooseDayField.alpha = 0.0
		weekendDayField.alpha = 1.0
		calculateButton.alpha = 0.0
	elseif dayToGuess == "saturday" then
			dayTextField.alpha = 0.0
		    chooseDayField.alpha = 0.0
		    weekendDayField.alpha = 1.0
		    calculateButton.alpha = 0.0
	else dayTextField.alpha = 0.0
		chooseDayField.alpha = 0.0
		weekdayField.alpha = 1.0
		calculateButton.alpha = 0.0
	end

    return true
end


calculateButton:addEventListener( "touch", calculateButtonTouch )