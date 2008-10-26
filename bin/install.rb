#!/usr/bin/env ruby

print "Installing the Google command-line Translate\n"

command = "alias t='#{File.dirname(__FILE__)}/translate.rb'"
print "."

`echo "#{command}" >> ~/.bash_profile`
print "."

`source ~/.bash_profile`
print "."

print "\nThe installation is done!"