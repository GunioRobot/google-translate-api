require 'test/unit'
require File.dirname(__FILE__) + '/../translate'

class GoogleTranslateTest < Test::Unit::TestCase
  def test_trying_to_translate
    translate = File.dirname(__FILE__) + '/../translate.rb'
    puts translate
    assert_equal("Teste", `#{translate} Test`.strip!)
    
    assert_equal("Test", `#{translate} Teste pt en`.strip!)
  end
end