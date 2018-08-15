# Encoding: UTF-8

require 'gosu'


class License < Gosu::Window
  WIDTH   = 800
  HEIGHT  = 600
  PADDING = 20

  def initialize
    super WIDTH, HEIGHT

    self.caption = "Gosu License Info - Press Esc to Exit."

    text = Gosu::LICENSES.split(",").join("\n")

    @text = Gosu::Image.from_text(text, 22)
  end

  def button_down(id)
    close if id == Gosu::KbEscape
  end

  def draw
    @text.draw(PADDING, PADDING, 0)
  end

end

License.new.show
