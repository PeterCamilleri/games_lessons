# Chapter 1 - The traditional "Hello World" with a few fun variations.

A silly tradition in the world of computer programming is to have as a first,
simple example a program the displays the text "Hello World". This tutorial is
not going to break with this tradition.

If you did'nt do so already in chapter 0, lets run the first demo program:

    ruby 01\demo_00.rb

and see the first of the "Hello World" demo programs.

![Demo 00](./images/Demo00.png)

Press escape when we are done being amazed by the awesomeness of its "Hello"
and the worldliness of its "World"

## High level overview:

Now we crack into the code that makes this trivial program tick. The Gosu
version of Hello World is a lot longer than the Ruby CLI version. It's hard to
beat:

```ruby
puts "Hello World"
```

So, let's retire to our luxury jet plane and look at the code from an altitude
of about 10,000 feet:

```ruby
require "gosu"

class HelloWorld < Gosu::Window
  # Classy details go here!
end

HelloWorld.new.show
```

The line require "gosu" is the standard way to extend Ruby with the new
features of the gosu gem. In object oriented programming, creating classes is
the most common way to define new behaviors. Our HelloWorld class however
inherits behaviors from the Gosu::Window class. This inheritance is a major
way that Ruby avoids so much of the boilerplate code of older systems.

The final line of code creates an instance of our HelloWorld class with new
and sends the show method to that instance. This show method is just one of
many methods we get to inherit from Gosu::Window with no effort on our part.

## What's all this classy stuff anyway?

WIP

## What does it do?

WIP

## Extra Credits

This section is only of interest to historian types and those who'd rather not
be doomed to repeating the dumb mistakes of the past.

In ancient times, I recall the 1989 Charles Petzold book:
[Programming the OS/2 Presentation Manager](https://www.amazon.ca/Programming-Presentation-Manager-Applications-Environment/dp/1556151705/ref=sr_1_29?ie=UTF8&qid=1535567521&sr=8-29&keywords=charles+petzold).
In particular I recall the Hello Word program. If memory serves, it was a
massive chunk of 'C' code running about six pages long. It was also convoluted,
difficult to understand, and full of cryptic Presentation Manager API calls.
I have memories of struggling to put together applications using those same
programming tools and it was pure frustration. In case you think that this was
kust an OS/2 thing, Windows 3.1 was much worse and Win32 started in Window 95
did little to really help out the situation.

So the question before us is simply this: **Why was it so bad?** Let's identify
the key villains:

#### The 'C' language:

Way back in 1989, the 'C' programming language was the undisputed king of the
programming languages. While some primitive Luddites clung to the wretched
assembly language, most recognized that high level languages, like 'C',
promoted better results through improved code clarity, fewer code defects, and
enhanced code portability. That is, except when it didn't.

Windowed graphical user interfaces (GUI) were the one of the original use cases for
the entire concept of object oriented programming (OOP). On a basic level, a
GUI entity on the screen is an object that responds to input signals or
messages from the user and other entities. In OOP, objects are entities that
are defined by how they respond to inputs or messages.

Messages sent to a window or object, have no strictly ordained order. They
occur as needed or are generated by user activity.

In 'C' this is not the case. Here things are strictly ordered by the structure
of the code. Steps occur as laid out in the code. So much so that this approach
is called "structured programming". To create a windowed environment in 'C', one
must create a message handling emulator. The responsibility for creating and
maintaining this emulator falls squarely on the programmer. Time wasted here is
time not available for doing useful, application oriented work.

In case anyone should think that this is a diatribe against 'C', it is not. I
have used that language numerous times in many embedded systems projects where
resource constraints required a lean and compact solution and the task at hand
lent itself to a structured approach. 'C' was in its element. Using it in a GUI
is akin to using scissors to mow the lawn. It can be made to work; It's just
not a good idea.

#### The Really Awful Hardware:

WIP

#### That Optimized Code Guy:

WIP

#### The Evil Committee of Taking Over the World:

WIP


## Notes:
* All trademarks are the property of their respective owners.