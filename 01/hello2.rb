# Spinning Hello World.

require "gosu"

class HelloWorld < Gosu::Window
  def initialize(width=800, height=600, fullscreen=false)
    super
    self.caption = "Hello World - Press Esc to Exit."

    @title = Gosu::Image.from_text("Hello World", 100)
    @theta = 0
  end

  def button_down(id)
    close if id == Gosu::KbEscape
  end

  def update
    @scale_x = Math.cos(@theta/60.0)
    @theta += 1
    @x = (self.width-(@title.width * @scale_x))/2
    @y = (self.height-@title.height)/2
  end

  def draw
    @title.draw(@x, @y, 0, @scale_x)
  end
end

HelloWorld.new.show
