require 'test/unit'
require File.dirname(__FILE__) + '/../google_translate'

class GoogleTranslateTest < Test::Unit::TestCase
  def setup
    @gt = GoogleTranslate.new
  end
  
  def test_trying_to_translate
    assert_equal("Teste", @gt.translate("Test"))
  end
  
  def test_trying_to_translate_from_portuguese_to_english
    assert_equal("Oi, meu nome é Bruno", @gt.translate("Hi, my name is Bruno"))
  end
end