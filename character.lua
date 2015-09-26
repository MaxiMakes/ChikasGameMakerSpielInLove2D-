character = {}
character.speed = 300
local mt = {__index = character}
function character.new(ID, controller, canvasSize,maxLife) 
	new = {}
	function new:update(dt)
		ax, ay, _, ax2, ay2 = self.controller:getAxes()
		--print(ax, ay)
		self.body:setLinearVelocity(ax*character.speed, ay*character.speed)
	
	end
	function new:draw()
		love.graphics.polygon("fill", self.body:getWorldPoints(self.shape:getPoints()))
		love.graphics.setColor(0, 255, 0)
	end
	new.ID = ID
	new.controller = controller
	new.canvas = love.graphics.newCanvas(canvasSize.width, canvasSize.height )
	if maxLife == nil then maxLife = 100 end
	new.maxLife = maxLife
	new.life = maxLife
	new.body = love.physics.newBody(world, 50, 51, "dynamic")
	new.shape = love.physics.newRectangleShape(80,80)
	new.fix = love.physics.newFixture(new.body, new.shape, 1)
	return new
end


return character



--[[

    key_left = -(lefty < -0.25);
    key_right = (lefty > 0.25);
    key_up = (leftx > 0.25);
    key_down = -(leftx < -0.25);
     
    
    move = key_left + key_right;
    hsp = move * movespeed;
    move2 = key_up + key_down;
    vsp = move2 * movespeed;
 
    if (place_meeting(x + hsp, y, oWallParent)){ 
       while(not place_meeting(x + sign(hsp), y, oWallParent)){
           x = x + sign(hsp);
       }
        hsp = 0;
    }
    if (place_meeting(x, y + vsp, oWallParent)){ 
       while(not place_meeting(x, y + sign(vsp), oWallParent)){
           y = y + sign(vsp);
       }
        vsp = 0;
    }
    
    x = x + hsp;
    y = y + vsp;


]]--


