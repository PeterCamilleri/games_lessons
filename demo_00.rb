#Demo Number 0 - Hello World.

#This is a tiny ruby program that displays Hello World. For such a simple
#program it has a lot of comments so that we can explain the code in detail.

#This first line of code makes all the features and resources of the Gosu gem
#available to our program.
require "gosu"

#Next we need to create a class that inherits what we need from the
#Gosu::Window class.
class HelloWorld < Gosu::Window

  #Now initialize the new instance of our application window. Note that
  #sensible defaults are set up for three key parameters. It is these
  #default values that are used in this example.
  def initialize(width=800, height=600, fullscreen=false)

    #Call on the version of initialize that exists in Gosu::Window. This
    #does most of the work for us. The parameter values above are passed
    #to the Gosu::Window initialize code as well.
    super

    #Now some non-default behavior: Set the window's caption!
    self.caption = "Hello World - Press Esc to Exit."

    #Create an image from the text "Hello World"
    @title = Gosu::Image.from_text("Hello World", 100)
  end

  #This method closes the application if the Escape key is pressed.
  def button_down(id)
    close if id == Gosu::KbEscape
  end

  #This method calculates where in the window the text 'Hello World'
  #is to appear. Notice that the value calculated never changes. Thus
  #our "Hello World" will appear stationary on the screen. We will add
  #motion in later versions of the demo program.
  def update
    #The screen center is half the screen width and height. The drawing
    #point is the screen center minus half the image width and height.
    #This is calculated by the following two lines of code.
    #The file Demo_00_origin.png, is a picture showing these relationships
    @x = (self.width-@title.width)/2
    @y = (self.height-@title.height)/2
  end

  #Finally! Draw the "Hello World" image, stored in the @title variable at
  #the calculated position stored in the @x and @y variables. What is the
  #0 on the end for? An option we will explore in later programs.
  def draw
    @title.draw(@x, @y, 0)
  end
end

#Now that we've created our HelloWorld class, the next line of code
#creates an instance of that class and shows it.
HelloWorld.new.show

#That's all there is to it!
