#Demo Number 1 - Spinning Hello World like a windmill.

require "gosu"

class HelloWorld < Gosu::Window
  def initialize(width=800, height=600, fullscreen=false)
    super
    self.caption = "Hello World - Press Esc to Exit."

    @title = Gosu::Image.from_text("Hello World", 100)
  end

  def button_down(id)
    close if id == Gosu::KbEscape
  end

  def update
    @t = Time.now.to_f.radians_to_gosu
    @x = self.width/2
    @y = self.height/2
  end

  def draw
    @title.draw_rot(@x, @y, 0, @t)
  end
end

HelloWorld.new.show
