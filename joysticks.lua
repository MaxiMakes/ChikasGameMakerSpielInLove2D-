local joysticks = {}

function joysticks.load()
	return love.joystick.getJoysticks( )
end

return joysticks
