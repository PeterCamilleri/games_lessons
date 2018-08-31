# Chapter 1 - The traditional "Hello World" with a few fun variations.

A silly tradition in the world of computer programming is to have as a first,
simple example a program the displays the text "Hello World". This tutorial is
not going to break with this tradition.

If you did'nt do so already in chapter 0, lets run the first demo program:

    ruby 01\demo_00.rb

and see the first of the "Hello World" demo programs.

![Demo 00](./images/Demo00.png)

Press escape when we are done being amazed by the awesomeness of it "Hello" and
the worldliness of its "World"

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

So the question before us is simply this: **Why was it so bad?**

Let's identify the key villains:

#### The 'C' language:

WIP

#### That Optimized Code Guy:

WIP

#### The Evil Committee of Taking Over the World:

WIP


## Notes:
* Lawyers stuff. All trademarks are the property of their respective owners.
