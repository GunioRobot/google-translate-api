require 'test/unit'
require File.dirname(__FILE__) + '/../lib/google_translate'

class GoogleTranslateTest < Test::Unit::TestCase
  def setup
    @gt = GoogleTranslate.new("Test")
  end
  
  def test_trying_to_translate
    assert_equal("Teste", @gt.translate)
  end
  
  def test_trying_to_translate_from_portuguese_to_english
    assert_equal("Oi, meu nome é Bruno", @gt.translate("Hi, my name is Bruno"))
  end
  
  def test_trying_to_translate_from_english_to_portuguese
    @gt.sl = "pt"
    @gt.tl = "en"
    
    assert_equal("Hello world", @gt.translate("Olá mundo"))
  end
end