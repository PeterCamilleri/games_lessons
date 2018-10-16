# Mapper - Show what input a gosu program receives.

require "gosu"

class Mapper < Gosu::Window

  def initialize(width=800, height=600, fullscreen=false)
    super
    self.caption = "A Gosu Input Mapper."
    @buffer = ["Press a key", ""]

    @mapper = { Gosu::KB_0              =>"Gosu::KB_0",
                Gosu::KB_1              =>"Gosu::KB_1",
                Gosu::KB_2              =>"Gosu::KB_2",
                Gosu::KB_3              =>"Gosu::KB_3",
                Gosu::KB_4              =>"Gosu::KB_4",
                Gosu::KB_5              =>"Gosu::KB_5",
                Gosu::KB_6              =>"Gosu::KB_6",
                Gosu::KB_7              =>"Gosu::KB_7",
                Gosu::KB_8              =>"Gosu::KB_8",
                Gosu::KB_9              =>"Gosu::KB_9",
                Gosu::KB_A              =>"Gosu::KB_A",
                Gosu::KB_B              =>"Gosu::KB_B",
                Gosu::KB_C              =>"Gosu::KB_C",
                Gosu::KB_D              =>"Gosu::KB_D",
                Gosu::KB_E              =>"Gosu::KB_E",
                Gosu::KB_F              =>"Gosu::KB_F",
                Gosu::KB_G              =>"Gosu::KB_G",
                Gosu::KB_H              =>"Gosu::KB_H",
                Gosu::KB_I              =>"Gosu::KB_I",
                Gosu::KB_J              =>"Gosu::KB_J",
                Gosu::KB_K              =>"Gosu::KB_K",
                Gosu::KB_L              =>"Gosu::KB_L",
                Gosu::KB_M              =>"Gosu::KB_M",
                Gosu::KB_N              =>"Gosu::KB_N",
                Gosu::KB_O              =>"Gosu::KB_O",
                Gosu::KB_P              =>"Gosu::KB_P",
                Gosu::KB_Q              =>"Gosu::KB_Q",
                Gosu::KB_R              =>"Gosu::KB_R",
                Gosu::KB_S              =>"Gosu::KB_S",
                Gosu::KB_T              =>"Gosu::KB_T",
                Gosu::KB_U              =>"Gosu::KB_U",
                Gosu::KB_V              =>"Gosu::KB_V",
                Gosu::KB_W              =>"Gosu::KB_W",
                Gosu::KB_X              =>"Gosu::KB_X",
                Gosu::KB_Y              =>"Gosu::KB_Y",
                Gosu::KB_Z              =>"Gosu::KB_Z",
                Gosu::KB_APOSTROPHE     =>"Gosu::KB_APOSTROPHE",
                Gosu::KB_BACKSLASH      =>"Gosu::KB_BACKSLASH",
                Gosu::KB_BACKSPACE      =>"Gosu::KB_BACKSPACE",
                Gosu::KB_BACKTICK       =>"Gosu::KB_BACKTICK",
                Gosu::KB_DELETE         =>"Gosu::KB_DELETE",
                Gosu::KB_COMMA          =>"Gosu::KB_COMMA",
                Gosu::KB_DOWN           =>"Gosu::KB_DOWN",
                Gosu::KB_END            =>"Gosu::KB_END",
                Gosu::KB_ENTER          =>"Gosu::KB_ENTER",
                Gosu::KB_EQUALS         =>"Gosu::KB_EQUALS",
                Gosu::KB_ESCAPE         =>"Gosu::KB_ESCAPE",
                Gosu::KB_F1             =>"Gosu::KB_F1",
                Gosu::KB_F2             =>"Gosu::KB_F2",
                Gosu::KB_F3             =>"Gosu::KB_F3",
                Gosu::KB_F4             =>"Gosu::KB_F4",
                Gosu::KB_F5             =>"Gosu::KB_F5",
                Gosu::KB_F6             =>"Gosu::KB_F6",
                Gosu::KB_F7             =>"Gosu::KB_F7",
                Gosu::KB_F8             =>"Gosu::KB_F8",
                Gosu::KB_F9             =>"Gosu::KB_F9",
                Gosu::KB_F10            =>"Gosu::KB_F10",
                Gosu::KB_F11            =>"Gosu::KB_F11",
                Gosu::KB_F12            =>"Gosu::KB_F12",
                Gosu::KB_HOME           =>"Gosu::KB_HOME",
                Gosu::KB_INSERT         =>"Gosu::KB_INSERT",
                Gosu::KB_ISO            =>"Gosu::KB_ISO",
                Gosu::KB_LEFT           =>"Gosu::KB_LEFT",
                Gosu::KB_LEFT_ALT       =>"Gosu::KB_LEFT_ALT",
                Gosu::KB_LEFT_BRACKET   =>"Gosu::KB_LEFT_BRACKET",
                Gosu::KB_LEFT_CONTROL   =>"Gosu::KB_LEFT_CONTROL",
                Gosu::KB_LEFT_META      =>"Gosu::KB_LEFT_META",
                Gosu::KB_LEFT_SHIFT     =>"Gosu::KB_LEFT_SHIFT",
                Gosu::KB_MINUS          =>"Gosu::KB_MINUS",
                Gosu::KB_NUMPAD_0       =>"Gosu::KB_NUMPAD_0",
                Gosu::KB_NUMPAD_1       =>"Gosu::KB_NUMPAD_1",
                Gosu::KB_NUMPAD_2       =>"Gosu::KB_NUMPAD_2",
                Gosu::KB_NUMPAD_3       =>"Gosu::KB_NUMPAD_3",
                Gosu::KB_NUMPAD_4       =>"Gosu::KB_NUMPAD_4",
                Gosu::KB_NUMPAD_5       =>"Gosu::KB_NUMPAD_5",
                Gosu::KB_NUMPAD_6       =>"Gosu::KB_NUMPAD_6",
                Gosu::KB_NUMPAD_7       =>"Gosu::KB_NUMPAD_7",
                Gosu::KB_NUMPAD_8       =>"Gosu::KB_NUMPAD_8",
                Gosu::KB_NUMPAD_9       =>"Gosu::KB_NUMPAD_9",
                Gosu::KB_NUMPAD_DIVIDE  =>"Gosu::KB_NUMPAD_DIVIDE",
                Gosu::KB_NUMPAD_MINUS   =>"Gosu::KB_NUMPAD_MINUS",
                Gosu::KB_NUMPAD_MULTIPLY=>"Gosu::KB_NUMPAD_MULTIPLY",
                Gosu::KB_NUMPAD_PLUS    =>"Gosu::KB_NUMPAD_PLUS",
                Gosu::KB_PAGE_DOWN      =>"Gosu::KB_PAGE_DOWN",
                Gosu::KB_PAGE_UP        =>"Gosu::KB_PAGE_UP",
                Gosu::KB_PERIOD         =>"Gosu::KB_PERIOD",
                Gosu::KB_RETURN         =>"Gosu::KB_RETURN",
                Gosu::KB_RIGHT          =>"Gosu::KB_RIGHT",
                Gosu::KB_RIGHT_ALT      =>"Gosu::KB_RIGHT_ALT",
                Gosu::KB_RIGHT_BRACKET  =>"Gosu::KB_RIGHT_BRACKET",
                Gosu::KB_RIGHT_CONTROL  =>"Gosu::KB_RIGHT_CONTROL",
                Gosu::KB_RIGHT_META     =>"Gosu::KB_RIGHT_META",
                Gosu::KB_RIGHT_SHIFT    =>"Gosu::KB_RIGHT_SHIFT",
                Gosu::KB_SEMICOLON      =>"Gosu::KB_SEMICOLON",
                Gosu::KB_SLASH          =>"Gosu::KB_SLASH",
                Gosu::KB_SPACE          =>"Gosu::KB_SPACE",
                Gosu::KB_TAB            =>"Gosu::KB_TAB",
                Gosu::KB_UP             =>"Gosu::KB_UP",

                Gosu::MS_LEFT           =>"Gosu::MS_LEFT",
                Gosu::MS_MIDDLE         =>"Gosu::MS_MIDDLE",
                Gosu::MS_RIGHT          =>"Gosu::MS_RIGHT",
                Gosu::MS_WHEEL_DOWN     =>"Gosu::MS_WHEEL_DOWN",
                Gosu::MS_WHEEL_UP       =>"Gosu::MS_WHEEL_UP"}
  end

  def button_down(id)
    @buffer[0] = "button_down: #{id.inspect} #{@mapper[id]}"
  end

  def button_up(id)
    @buffer[1] = "button_up: #{id.inspect}  #{@mapper[id]}"
  end

  def update
    @title = Gosu::Image.from_text(@buffer.join("\n"), 40)

    @x = (self.width-@title.width)/2
    @y = (self.height-@title.height)/2
  end

  def draw
    @title.draw(@x, @y, 0)
  end
end

Mapper.new.show
