# Ball0 - The slowest rolling ball EVER!

require "gosu"

class Ball < Gosu::Window

  def initialize(width=800, height=600, fullscreen=false)
    super

    path = File.dirname(File.absolute_path(__FILE__)) + "/"

    self.caption = "A Ball. Press Escape to exit."
    @ball = Gosu::Image.new(path + "images/green-ball_75x75.png")
  end

  def button_down(id)
    close if id == Gosu::KB_ESCAPE
  end

  def update
    @x = (self.width-@ball.width)/2
    @y = self.height-@ball.height
  end

  def draw
    @ball.draw(@x, @y, 0)
  end

end

Ball.new.show
