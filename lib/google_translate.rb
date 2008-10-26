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
require 'net/http'
require 'json'
require 'cgi'
require 'uri'

class GoogleTranslate
  
  attr_accessor :text, :sl, :tl
  
  def initialize(text=nil, sl=nil, tl=nil)
    @sl = sl || "en"
    @tl = tl || "pt"
    @text = text
    @uri = URI.parse("http://ajax.googleapis.com/ajax/services/language/translate")
  end
  
  def translate(text=nil)
    @text = text unless text.nil?
    
    JSON.parse(request)['responseData']['translatedText']
  end
  
  private
  def params
    { :langpair => "#{@sl}|#{@tl}", 
      :q => @text,
      :v => 1.0 }.map { |k,v| "#{k}=#{CGI.escape(v.to_s)}" }.join('&')
  end
  
  def request
    Net::HTTP.get(@uri.host, "#{@uri.path}?#{params}")
  end
end