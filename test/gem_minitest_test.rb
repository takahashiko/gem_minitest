require 'test_helper'

class GemMinitestTest < Minitest::Test

  def setup
    @main = ::GemMinitest::Main.new
  end  

  def test_that_it_has_a_version_number
    refute_nil ::GemMinitest::VERSION
  end

 # def test_it_does_something_useful
 #   assert false
 # end

 # def test_odd?
 #   assert @main.odd?(1), '1 is odd'
 #   refute @main.odd?(2), '2 is not odd'
 #   assert @main.odd?(3), '3 is odd'
 #   refute @main.odd?(4), '4 is not odd'
 #   assert @main.odd?(5), '5 is odd'
 # end

  def test_odd?
    assert_equal(false, @main.odd?(0))
    assert_equal(true,  @main.odd?(1))
    assert_equal(false, @main.odd?(2))
    assert_equal(true,  @main.odd?(-1)) 
    assert_equal(false, @main.odd?(-2))
  end 

end
