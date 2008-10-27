#!/usr/bin/env ruby
  
# A API for Google Translator
# 
# Copyright (C) 2008 Bruno Azisaka Maciel (dookie)
# For contact me bruno at dookie dot com dot br
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

require File.dirname(__FILE__) + "/../lib/google_translate"

def response
  if ARGV[1].eql?('pt') && ARGV[2].eql?('en')
    ARGV[0].to_english
  elsif ARGV[1].eql?('en') && ARGV[2].eql?('pt')
    ARGV[0].to_portuguese
  else
    ARGV[1] ||= 'en'
    ARGV[2] ||= 'pt'
    
    GoogleTranslate.new(ARGV[0],ARGV[1],ARGV[2]).translate
  end
end

puts response