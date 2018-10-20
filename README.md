# Games/Lessons - Writing Games in Ruby with Gosu

What's with the name "games_lessons"? Well the idea was to have fun with Games
and learn some programming Lessons. I can't put the "/" into my Ruby names so
it turns into just games_lessons. The goal here is to write some really fun
games and be exposed to programming concepts without the need for the stress
and anxiety of a typical school.

So, this package contains several simple demonstration programs for creating
simple games and graphics in Ruby through the Gosu gem. These will illustrate
the aforementioned programming concepts. Taking it to the next level, they
can be the starting point for you to modify and try out your own ideas and
express your creativity. Eventually, you may wish to write your own programs
from scratch, but it's nice to have working code as a starting point especially
when you are just starting out.

Please note: You'll now need Ruby 2.3 or later as Gosu has dropped its support
for versions older than that. That is as far as I know. I am not 100% certain
on this point.

## Installation

(Coming soon --- Oct 16, 2018)

    $ gem install gosu

A good test that all is well would be to run one of the sample programs. See
the section "Running the Sample Programs" for more on that.

## Usage

The games_lessons gem consists of two distinct functions:

1. A program launcher for the various sample programs that come with the
tutorial.
2. A series of classes and modules designed to take some of the boiler-plate
and mathematics out of the programming process.

WIP

#### Running the Sample Programs

This tutorial contains a number of demonstration and utility programs. There
are two ways that these programs can be executed.

---

From the games_lessons folder, in a command line session with access to Ruby
(please see Chapter 00 more on that) enter the following:

    ruby 01\hello0.rb

Naturally substituting the path and name of the program you wish to run.

---

Enter the following from any command line session with access to Ruby:

    games_lessons hello0

Naturally substituting the name of the program you wish to run. (Coming soon --- Oct 16, 2018)


## Contents

This tutorial is set up in chapters with each chapter in its own sub-folder.
Each chapter has its own README.md file that serves as a guide to the contents
of that chapter. This is designed to make it easy to navigate the course using
a combination of GitHub to view the text and running the programs locally. The
following are included.

---
**The Course Material**:
* **Chapter 00** - Getting setup with Ruby and Gosu.
* **Chapter 01** - The traditional "Hello World" with a few fun variations.
* **Chapter 02** - Dimensions of Gosu (or what's "up" Doc?)
---
**Some Helpful Extras**:
* **Appendix A** - Some small utility programs that may be of help.
---
**Soap Box and Rants**:
* **Appendix Z** - Some extra credits about why GUI programming was so awful.
---

More contents are under development at this time. Really!

## More Resources

There are a lot of resources available for Gosu:

* [The Gosu Homepage](https://www.libgosu.org/index.html)
* [The Gosu Gem page](https://rubygems.org/gems/gosu)
* [Gosu Internal Documentation](https://www.rubydoc.info/github/gosu/gosu/master/Gosu)

And here are some videos/blogs that sure inspired me!

* [RubyConf 2016: Attention Rubyists: You can write video games, by Cory Chamblin](https://confreaks.tv/videos/rubyconf2016-attention-rubyists-you-can-write-video-games)
* [2015: An introduction to Ruby/Gosu, by Iván González](http://dreamingechoes.github.io/game/gosu/ruby/become-a-videogame-developer-master-with-gosu-and-ruby/)
* [LA Ruby Conf 2014 - Writing Games with Ruby by Mike Moore](https://www.youtube.com/watch?v=jJhbpY70miE)
* [Ruby on Ales 2014 - Writing Games with Ruby by Mike Moore](https://www.youtube.com/watch?v=VawT9BQr3Wk)
* [Tutorial Series 2013: Conway’s Game of Life with Ruby/Gosu in vim, by Ofcan](https://www.youtube.com/watch?v=iLXO2FLPulI)
* [Ruby Conf 2012: Game Development and Ruby, by Andrew Nordman](https://www.youtube.com/watch?v=H5_Kid3hpRs)

Want more? Many more interesting videos may be found on YouTube by
searching for: [gosu ruby](https://www.youtube.com/results?search_query=gosu+ruby)

## Still More Resources

While all people are creative, we're not all Vincent van Gogh. I mean, who
wants to lose an ear for art? Try this web site as a short cut to getting the
little bits of graphic art needed to create your next game masterpiece:
[opengameart.org](https://opengameart.org/)

And what's a video game without cool, 80s sounds?
What's that you say? You're not Mozart either?  Here for free, a whole gamut
of sounds from simple effects to full musical scores and everything in between:
[freesound](https://freesound.org/browse/) (Free but registration required).

A all round great place to find stuff is:
[Art Assets for Game Developers](https://superdevresources.com/free-music-sound-effects-games/)

Also it may come to pass that the free art you find is close to your needs but
not quite right. If so you may need some tools to tweak or edit things to the
way you need. Here are two free tools that I use to get this done:
* [GIMP](https://www.gimp.org/) for images.
* [Audacity](https://www.audacityteam.org/) for sounds.


## Time Sensitive Information

Modern computer programming environments change at an alarming pace. I recall
attending a meetup where they made a demonstration of running a two year old
web site. Everyone was astonished that it actually worked! They could not
conceive that code as **ancient** as two years old could still run at all!

Or in other (Latin) words: "Sic transit gloria mundi."

To this end, when I make a remark that may easily be swept away by the sands
of time, I tag on "---" and the date I made the observation --- Aug 17, 2018


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

OR...

* Make a suggestion by raising an
 [issue](https://github.com/PeterCamilleri/games_lessons/issues)
. All ideas and comments are welcome.

## License

The project is available as open source under the terms of the
[MIT License](./LICENSE.txt).

## Code of Conduct

Everyone interacting in the Games Lessons project’s codebases, issue trackers,
chat rooms and mailing lists is expected to follow the
[code of conduct](./CODE_OF_CONDUCT.md).
