joysticks = require 'joysticks'
character = require 'character'
char = {}
function love.load()
	love.physics.setMeter(64) 
	world = love.physics.newWorld(0, 0, true)

	joyL = joysticks.load()
	for  i, v in ipairs(joyL) do
		--ID, Controller, maxLife, 	
		char[i] = character.new(i, joyL[i])
	end
end
function love.update(dt)
	world:update(dt)

end


function love.draw()


end
