arrow = {}
arrow.speed = 900

local mt = {__index = arrow}

function arrow.new( ID, owner)
	new = {}

	function arrow:update(dt)
		t = t + dt
		if t == 10 then arrow = nil end
	end

	function arrow:draw()
		new.body = love.physics.newBody(world, owner.ax, owner.ay, "dynamic")
		new.shape = love.physics.newRectangleShape(2,20)
		new.fix = love.physics.newFixture(new.body, new.shape, 1)
	end
	new.ID = ID
	return new
end
return arrow


