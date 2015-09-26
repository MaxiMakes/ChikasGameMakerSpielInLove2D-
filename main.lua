joysticks = require 'joysticks'
character = require 'character'
char = {}
function love.load()
	love.physics.setMeter(64) 
	world = love.physics.newWorld(0, 0, true)
	
	joyL = love.joystick.getJoysticks()
	print(love.joystick.getJoysticks( )[1])
	--joyL = joysticks.load()
	for  i, v in ipairs(joyL) do
		--ID, Controller, maxLife, 	
		char[i] = character.new(i, joyL[i])
	end
end
function love.update(dt)
	world:update(dt)
	for i, v in ipairs(char) do 
		v:update(dt)
	end

end


function love.draw()
	for i, v in ipairs(char) do 
		v:draw(dt)
	end

end
