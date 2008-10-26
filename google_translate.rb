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