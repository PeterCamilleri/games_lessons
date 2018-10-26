# Chapter 02 - Getting the ball rolling.

OK, now a lot of games have a ball. Well I'm sure the games themselves don't
have a ball as they are just programs and cannot experience emotions like
joy or frustration... well not YET. Further, while the players may have a ball,
many games, contain one or more balls.

While some of you may have your minds in the gutter, I am going with balls as
spherical (or ellipsoid in some cases) rubber or plastic sports equipment
objects with various sizes and elasticity. Standing up for your beliefs and
principles in the face of severe adversity and opposition isn't bad either but
that is off topic.

Were going to use the ball to get our game past the still life phase and into
some sort of movement and eventually our first interactive manipulation of
objects in our nascent game.

## Ball 0

Let's start with the first of the ball programs. It's number zero and that's a
clue as to how much it does. try:

    ruby 01\ball0.rb
    or
    games_lessons ball0

and you will get:

![ball0](./images/ball0_image.png)

No, you're not missing anything. Just a ball, motionless "on the ground" at the
bottom of the screen. What has been added that is of interest here? Let's look.

**Ball#initialize** - this method still sets things up for our ball window. One
difference compared to our hello0 program is that here the image comes from a
file rather than some text.

```ruby
def initialize(width=800, height=600, fullscreen=false)
  super

  # Extract the full path to this file, excluding the file part.
  path = File.dirname(File.absolute_path(__FILE__)) + "/"

  # Load up the image of the ball.
  @ball = Gosu::Image.new(path + "images/green-ball_75x75.png")

  self.caption = "A Ball. Press Escape to exit."
end
```

Ruby has wonderful mechanisms for determining where things exist for its
"require" and "require_relative" commands. Gosu is simpler and needs some help
to find the right path. The line of code

```ruby
  # Extract the full path to this file, excluding the file part.
  path = File.dirname(File.absolute_path(__FILE__)) + "/"
```
computes the full path to the folder containing the ball0.rb (\_\_FILE\_\_).
This allows us to access resources relative to that folder without having to
worry about where the current working directory is or other things that can
make our code more brittle than it needs to be.
