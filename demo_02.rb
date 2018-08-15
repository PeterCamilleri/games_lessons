#Demo Number 2 - Spinning Hello World.

require "gosu"

class HelloWorld < Gosu::Window
  def initialize(width=800, height=600, fullscreen=false)
    super
    self.caption = "Hello World"

    @title = Gosu::Image.from_text("Hello World", 100)
  end

  def button_down(id)
    close if id == Gosu::KbEscape
  end

  def update
    @t = Math.sin(Time.now.to_f)
    @x = (self.width-(@title.width * @t))/2
    @y = (self.height-@title.height)/2
  end

  def draw
    @title.draw(@x, @y, 0, @t)
  end
end

HelloWorld.new.show
