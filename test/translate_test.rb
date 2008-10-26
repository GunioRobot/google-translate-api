require 'test/unit'
require File.dirname(__FILE__) + '/../translate'

class GoogleTranslateTest < Test::Unit::TestCase
  
  def setup
    @translate = File.dirname(__FILE__) + '/../translate.rb'
  end
  
  def test_trying_to_translate
    assert_equal("Teste", `#{@translate} Test`.strip!)
  end
  
  def test_trying_to_translate_from_portuguese_to_english
    assert_equal("Test", `#{@translate} Teste pt en`.strip!)
  end
end