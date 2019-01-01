# Ball3 - Oh wow, that's such a drag!

require "gosu"

class Ball < Gosu::Window

  def initialize(width=800, height=600, fullscreen=false)
    super

    # Extract the full path to this file, excluding the file part.
    path = File.dirname(File.absolute_path(__FILE__)) + "/"

    # Load up the image of the ball.
    @ball = Gosu::Image.new(path + "images/green-ball_75x75.png")

    self.caption = "A Ball. Press Escape to exit."

    # Place the ball, on the ground. This is the initial position.
    @x = (self.width-@ball.width)/2
    @y = self.height-@ball.height

    # Set up the initial velocity. (In pixels per millisecond.)
    @vx = 1
    @vy = -1

    @gravity = 0.024 # Pixels per millisecond squared.

    @drag = 1 - 0.001 # The drag factor.
  end

  def button_down(id)
    close if id == Gosu::KB_ESCAPE
  end

  # Now actually do some update work!
  def update
    # Compute the passage of time.
    @new = Gosu.milliseconds
    @old ||= @new
    delta = @new - @old
    @old  = @new

    # Compute the drag
    @vx *= @drag
    @vy *= @drag

    #Update for gravity.
    @vy += @gravity

    # Compute the new proposed position.
    @x += @vx * delta
    @y += @vy * delta

    # Compute the boundary limits.
    top = @y
    bottom = @y + @ball.height
    left = @x
    right = @x + @ball.width

    # Check for collision with the left and right walls.
    if left < 0
      @vx *= -1
      @x = -left
    elsif right > self.width
      @vx *= -1
      @x -= 2 * (right-self.width)
    end

    # Check for collision with the top and bottom walls.
    if top < 0
      @vy *= -1
      @y = -top
    elsif bottom > self.height
      @vy *= -1
      @y -= 2 * (bottom-self.height)
    end
  end

  def draw
    @ball.draw(@x, @y, 0)
  end

end

Ball.new.show
