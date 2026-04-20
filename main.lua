function love.load()
  love.window.setMode(800, 600, {
    borderless = true
  })
  
  love.graphics.setBackgroundColor(0, 0.3, 0.6)
  
  mathstate = "Test Window"
  mathtype = "none"
  first_num = 0
  second_num = 0
  output = 0
end

  domath = {}  

  function domath.add()
    output = first_num + second_num
  end

  function domath.minus()
    output = first_num - second_num
  end

  function domath.div()
    output = first_num / second_num
  end

  function domath.mul()
    output = first_num * second_num
  end
end

function love.update(dt)
   function inputNum()
    if mathstate == "first" then
      first_num = tonumber(love.keyboard.getTextInput())
    elseif mathstate == "second" then
      second_num = tonumber(love.keyboard.getTextInput())
    end
end

canEsc = true
fscreen = false

function love.keypressed(key)
    if key == "f11" then
        if fscreen == false then
            love.window.setFullscreen(true)
            fscreen = true
        else
            love.window.setFullscreen(false)
            fscreen = false
        end
    end

    if key == "escape" then
        if canEsc then
            love.event.quit()
        end
    end
end

function love.draw()
  if mathstate == "Test Window" do
  love.graphics.print("Welcome to CalcuLua Test Window!", 0 , 0)
    love.graphics.print("This is just a window test so it doesnt do anything yet", 0, 10)
    love.graphics.print("Press esc to close the window, f11 to toggle fullscreen", 0, 20)
  end
end
