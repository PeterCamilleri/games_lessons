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

The other area to be examined is that, for this simple program, we want the
bottom of the ball image to line up exactly with the bottom of our window.
Let's take a look at a diagram of the measurements that come into play here:

![ball bounds](./images/bounded_ball.png)

Now, some of these values are given. The origin of the ball image is a point
with an x and a y component. These are set when the image is drawn on the
screen. The height and width are properties of the image itself (these can be
obtained with the height and width methods). Now the other properties are
derived from the given data. While we are interested the bottom of the ball,
let's look at all four boundaries:

```ruby
ball_left   = ball.x
ball_right  = ball.x + ball.width
ball_top    = ball.y
ball_bottom = ball.y + ball.height
```
Note: It may seem strange but the bottom of the ball value is greater than the
top of the ball value . We will deal more with this later, but for now just
accept that in Gosu, things are a bit upside-down.

Now our goal is to have window_bottom == ball_bottom. The rules for the ball
also apply to the window. However, the origin is always 0,0 for the window so
we get:

```ruby
window_left   = 0
window_right  = 0 + window.width = window.width
window_top    = 0
window_bottom = 0 + window.height = window.height
```

So:

```ruby
ball_bottom = window_bottom
```

Substituting what we know from above:

```ruby
ball.y + ball.height = window.height
```

We want to know the ball's y value so we subtract ball.height from both sides:

```ruby
ball.y = window.height - ball.height
```

This simple math lets us control where the bottom of the ball is when all we
can set is the location of the top of the ball. The same math applies for the
x position of the ball, except in this case, we want the ball to be centered
in our window.

The code in question boils down to just these few lines:

```ruby
def update
  # Place the ball, on the ground.
  @x = (self.width-@ball.width)/2
  @y = self.height-@ball.height
end
```
