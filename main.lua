joysticks = require 'joysticks'
character = require 'character'
char = {}
function love.load()
	love.physics.setMeter(64) 
	world = love.physics.newWorld(0, 0, true)
	
	joyL = love.joystick.getJoysticks()
	--creating splittscreen 
	width = love.graphics.getWidth( )
	height = love.graphics.getHeight( )
	screenSize = {}
	if math.sqrt(#joyL) == math.floor(math.sqrt(#joyL)) then
		--divide height and width with math.sqrt(char#) 
		screenSize.height = height/math.sqrt(#joyL)
		screenSize.width = width/math.sqrt(#joyL)	

	end
	if math.sqrt(#joyL) ~= math.floor(math.sqrt(#joyL)) then
		--divide height by math.floor(math.sqrt(char#)) and width by char#/math.floor(math.sqrt(char#)) 
		screenSize.height = height/math.floor(math.sqrt(#joyL))
		screenSize.width = width/#joyL/math.floor(math.sqrt(#joyL))
	end
	for  i, v in ipairs(joyL) do
		--ID, Controller, maxLife, 	
		char[i] = character.new(i, joyL[i], screenSize)
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
	for i, v in ipairs(char) do 
		love.graphics.draw(v.canvas)
	end
	

end
