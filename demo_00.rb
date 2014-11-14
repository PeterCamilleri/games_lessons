#Demo Number 0 - Hello World.
require "gosu"

class HelloWorld < Gosu::Window
  def initialize(width=800, height=600, fullscreen=false)
    super
    self.caption = "Hello World"

    @title = Gosu::Image.from_text(self, "Hello World", Gosu.default_font_name, 100)
  end

  def button_down(id)
    close if id == Gosu::KbEscape
  end

  def update
    @x = (self.width-@title.width)/2
    @y = (self.height-@title.height)/2
  end

  def draw
    @title.draw(@x, @y, 0)
  end
end

HelloWorld.new.show
