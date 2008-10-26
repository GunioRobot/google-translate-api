require File.dirname(__FILE__) + "/google_translate"

class Translate
  def initialize(text,sl="en",tl="pt")
    puts GoogleTranslate.new(sl,tl).translate(text)
  end
end

Translate.new(ARGV[0],ARGV[1], ARGV[2])