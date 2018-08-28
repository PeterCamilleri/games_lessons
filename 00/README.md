# Chapter 0 - Getting setup with Ruby and Gosu.

Before we can run any programs in this tutorial, we need to have some
prerequisites taken care of. If your system is already properly configured you
can skip ahead to Chapter 1, but if you are not absolutely certain, it
wouldn't hurt to review the following.

## Step 1 Do you have Ruby?

All the examples will need a Ruby language system installed correctly. From the
command line you should be able to do the following:

    C:\Sites\games_lessons>ruby -v
    ruby 2.3.3p222 (2016-11-21 revision 56859) [i386-mingw32]

As far as I know, you will need Ruby 2.3 or later. --- Aug 17, 2018

If you don't see a usable version of ruby or worse yet you see something like:

    C:\Sites\games_lessons>ruby -v
    'ruby' is not recognized as an internal or external command,
    operable program or batch file.

## Step 2 Installing Ruby

If step 1 gave good results, skip to step 3. Otherwise, You need to install
Ruby on your machine. There is help for this available from multiple sources:

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

#### Step2A - A Brief RailsInstaller Survival Guide

The RailsInstaller generally creates two major trees of folders when it
installs in a system. These are typically

    C:\RailsInstaller
    C:\Sites

It also creates a shortcut to a special command line window called:
Command Prompt with Ruby and Rails

You must always use this command window while interacting with Ruby.

First: The Sites folder contains the todo folder which is supposed to be a
starting point for Rails development. Do yourself a favor and delete this
folder as it is so out-of-date as to require major amounts of repair work. You
do not want to start a course on first aid with brain surgery. You are better
off following the current Rails tutorials online. While this is not really
germane to the topic of this series, this advice will help avoid pain so is
worth mentioning.

Second: The most common issue encountered is that the Ruby installed is too
old to be useful. Currently the version 2.3.3 is OK for now, so we can skip
this issue for now --- Aug 28, 2018. Things are not trouble free however. An
important tool installed is git. The version of git installed by RailsInstaller
is:

    git version 1.9.4.msysgit.2

This is so old it no longer works. You can tell if you try a git command and
get something like:

    C:\Sites\full_clone>git pull
    fatal: unable to access 'https://github.com/PeterCamilleri/deep_clone.git/': error:1407742E:SSL routines:SSL23_GET_SERVER_HELLO:tlsv1 alert protocol version

This is due to the fact that the old git uses a communications protocol that
is no longer supported. I will show how I was able to fix this problem.

1. Go to the web site: [git](https://git-scm.com/) and download and install the latest
git client for windows. For the sake of sanity, install this on the same drive
as the RailsInstaller folder.

2. Find where git was installed. In my case this is: C:\Program Files\Git

3. Open the file C:\RailsInstaller\Ruby2.3.3\setup_environment.bat for edit.

Around line 26 you will see the line:

    IF EXIST %ROOT_DIR%\Git\cmd SET PATH=%ROOT_DIR%\Git\cmd;%PATH%

Replace this with:

    REM IF EXIST %ROOT_DIR%\Git\cmd SET PATH=%ROOT_DIR%\Git\cmd;%PATH%
    SET PATH=C:\Program Files\Git\cmd;%PATH%

Now when I type:

    C:\Sites>git --version
    git version 2.18.0.windows.1

Which is a current, **working**, version of git!

**Caution**, git will install a Git Cmd window. Don't use it. It is not setup
for Ruby work. You will still want to use the
**Command Prompt with Ruby and Rails**

## Step 3 Install the Gosu gem.

After the scary business of getting the right version of Ruby installed, this
step is an easy one:

    gem install gosu

That should do it!

## Step 4 - Install this tutorial.

This step can be accomplished by downloading the games_lessons repository zip
file and expanding it into a folder easily reached by a Ruby enabled command
line session.

WIP

With any luck, you can now enter:

    ruby 00/demo_00.rb

or in Windows

    ruby 00\demo_00.rb

and see the first of the "Hello World" demo programs.

We will return to this first demo, but for now, you are ready for Chapter 1.
s
