-- tutorial #1
-- the 3 golden love function, lua tables, keyboard input, draw circle

function love.load()
 hero = {} -- new table for the hero
 hero.x = 300    -- x,y coordinates of the hero
 hero.y = 450
 hero.speed = 100
end

function love.update(dt)
 if love.keyboard.isDown("left") then
   hero.x = hero.x - hero.speed*dt
 elseif love.keyboard.isDown("right") then
   hero.x = hero.x + hero.speed*dt
 end
end

function love.draw()
 -- let's draw some ground
 love.graphics.setColor(0,255,0,255)
 love.graphics.rectangle("fill", 0,465,800,150)

 -- let's draw our hero
 love.graphics.setColor(255,255,0,255)
 love.graphics.rectangle("fill", hero.x,hero.y, 30,15)
end

