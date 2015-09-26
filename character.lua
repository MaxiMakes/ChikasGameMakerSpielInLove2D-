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


