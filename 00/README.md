# Chapter 0 - Hello World

A silly tradition in the world of computer programming is to have as a first,
simple example a program the displays the text "Hello World". This tutorial is
not going to break with this tradition.

However, before we can run any programs, we need to have some prerequisites
taken care of.

## Step minus 2 First we need Ruby.

All the examples will need a Ruby language system installed correctly. From the
command line you should be able to do the following:

    C:\Sites\games_lessons>ruby -v
    ruby 2.3.3p222 (2016-11-21 revision 56859) [i386-mingw32]

As far as I know, you will need Ruby 2.3 or later. --- Aug 17, 2018

If you don't see a usable version of ruby or worse yet you see:

    C:\Sites\games_lessons>ruby -v
    'ruby' is not recognized as an internal or external command,
    operable program or batch file.

You need to install Ruby on your machine. There is help for this available
from multiple sources:

* Under Windows you can use [RubyInstaller for Windows](https://rubyinstaller.org/) or
  [RailsInstaller](http://www.railsinstaller.org/en)
* On Linux/OS X, you can use the package management system of your
  distribution or third-party tools
  ([rbenv](https://github.com/rbenv/rbenv) or
  [RVM](http://rvm.io/)).

For myself, I use RailsInstaller, not that I care much about Rails, but mostly
because it is a comprehensive installation of Ruby, Rails, the DevKit, and
other useful utilities. However RubyInstaller is more flexible in letting you
install current versions of Ruby.

Item under development --- I am working on a RailsInstaller survival guide
which will try to get the best of both worlds.

## Step minus 1 Install the Gosu gem.

After the scary business of getting the right version of Ruby installed, this
step is an easy one:

    gem install gosu

That should do it!

## Step Zero - Install this tutorial.
