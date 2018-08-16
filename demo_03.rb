#Demo Number 3 - Spinning Hello World with perspective.

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

  def sqr(x)
    x*x
  end

  def update
    view_dist = 3000
    theta = Time.now.to_f/2

    center_x = self.width/2
    center_y = self.height/2

    radius = @title.width/2
    reach  = @title.height/2

    r_cos_theta = radius * Math.cos(theta)
    r_sin_theta = radius * Math.sin(theta)

    projected_radius = r_cos_theta

    left_dist  = Math.sqrt(sqr(r_cos_theta) + sqr(view_dist - r_sin_theta))
    right_dist = Math.sqrt(sqr(r_cos_theta) + sqr(view_dist + r_sin_theta))

    left_reach  = reach * (view_dist/left_dist)
    right_reach = reach * (view_dist/right_dist)

    @x1 = center_x - projected_radius
    @y1 = center_y - left_reach

    @x2 = center_x + projected_radius
    @y2 = center_y - right_reach

    @x3 = center_x + projected_radius
    @y3 = center_y + right_reach

    @x4 = center_x - projected_radius
    @y4 = center_y + left_reach
  end

  def draw
    draw_quad(@x1, @y1, Gosu::Color::YELLOW,
              @x2, @y2, Gosu::Color::CYAN,
              @x3, @y3, Gosu::Color::CYAN,
              @x4, @y4, Gosu::Color::YELLOW,
              0)

    @title.draw_as_quad(@x1, @y1, Gosu::Color::BLUE,
                        @x2, @y2, Gosu::Color::RED,
                        @x3, @y3, Gosu::Color::RED,
                        @x4, @y4, Gosu::Color::BLUE,
                        0)
  end
end

HelloWorld.new.show
