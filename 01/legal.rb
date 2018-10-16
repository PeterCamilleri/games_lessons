# Display (Legal License Rubbish) Text.

require 'gosu'

class License < Gosu::Window
  def initialize(width=800, height=600, fullscreen=false)
    super
    self.caption = "Gosu License Info - Press Esc to Exit."

    @margin = 20
    @text = Gosu::Image.from_text(Gosu::LICENSES.gsub(/,/, "\n"), 22)
  end

  def button_down(id)
    close if id == Gosu::KbEscape
  end

  def draw
    @text.draw(@margin, @margin, 0)
  end

end

License.new.show
