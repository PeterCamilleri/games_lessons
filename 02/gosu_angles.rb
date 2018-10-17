# Angular data in Gosu

require "gosu"

class Angles < Gosu::Window
  def initialize(width=800, height=600, fullscreen=false)
    super
    self.caption = "Hello World - Press Esc to Exit."

    @margin  = 20
    @counter = 0
    @limit   = 20
    @buffer = ["", "", "", ""]

    @arrow = Gosu::Image.from_text("→", 400)
    @degrees = 0
  end

  def button_down(id)
    close if id == Gosu::KbEscape
  end

  def update
    if @counter == @limit
      @counter = 0
      @degrees = (@degrees + 5) % 360
    else
      @counter += 1
    end

    @gosu   = -@degrees
    radians = @degrees.degrees_to_radians
    pi_rads = (radians/Math::PI).rationalize(0.01)

    @buffer = ["Degrees: #{@degrees}",
               "Radians: #{radians}",
               "PI Rads: #{pi_rads}",
               "Gosu: #{@gosu}"]

    @legend = Gosu::Image.from_text(@buffer.join("\n"), 32)

    @x = self.width/2
    @y = self.height/2
  end

  def draw
    @legend.draw(@margin, @margin, 0)
    @arrow.draw_rot(@x, @y, 0, @gosu)
  end
end

Angles.new.show
