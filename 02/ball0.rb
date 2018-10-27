# Ball0 - The slowest rolling ball EVER!

require "gosu"

class Ball < Gosu::Window

  def initialize(width=800, height=600, fullscreen=false)
    super

    # Extract the full path to this file, excluding the file part.
    path = File.dirname(File.absolute_path(__FILE__)) + "/"

    # Load up the image of the ball.
    @ball = Gosu::Image.new(path + "images/green-ball_75x75.png")

    self.caption = "A Ball. Press Escape to exit."

    # Place the ball, on the ground.
    @x = (self.width-@ball.width)/2
    @y = self.height-@ball.height
  end

  def button_down(id)
    close if id == Gosu::KB_ESCAPE
  end

  def draw
    @ball.draw(@x, @y, 0)
  end

end

Ball.new.show
