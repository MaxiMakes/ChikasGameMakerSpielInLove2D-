character = {}

function character.new(ID, control, maxLife = 100) 
	new = {}
	new.ID = ID
	new.controller = controller
	new.maxLife = maxLife
	new.life = maxLife
	new.body = love.physics.newBody(50, 51, "dynamic")
	new.shape = love.physics.newRectangleShape(80,80)
	new.fix = love.physics.newFixture(new.body, new.shape)
end
function character.update()

end
function character.draw()

end
return character
