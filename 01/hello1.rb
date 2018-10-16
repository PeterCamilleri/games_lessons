# Spinning Hello World like a windmill.

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
    @theta += 1
    @x = self.width/2
    @y = self.height/2
  end

  def draw
    @title.draw_rot(@x, @y, 0, @theta)
  end
end

HelloWorld.new.show
