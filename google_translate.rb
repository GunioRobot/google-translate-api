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

require 'rubygems'
require 'mechanize'
require 'unicode'

class GoogleTranslate
  def initialize(sl="en", tl="pt")
    @sl = sl
    @tl = tl
    @oe = "UTF-8"
    @translate_uri = "http://translate.google.com.br/translate_t?langpair=#{@sl}|#{@tl}"
    @agent = WWW::Mechanize.new
  end
  
  def translate(text)
    @agent.post(@translate_uri, 'sl'=>@sl, 'tl'=>@tl, 'oe'=>@oe, 'ie'=>@oe,'text'=>text).search("//div[@id=result_box]").text
  end
end