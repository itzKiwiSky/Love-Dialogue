local Dialogue = require "dialogue"

local myDialogue

function love.load()
    myDialogue = Dialogue.play("dialogue.ld")
end

function love.update(dt)
    if myDialogue then
        myDialogue:update(dt)
    end
    
end

function love.draw()
    if myDialogue then
        myDialogue:draw()
    end
end

function love.keypressed(key)
    if (key == "space" or key == "return") and myDialogue then
        myDialogue:advance()
    end
end