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


  def test_check_number?
    assert_equal(false, @main.check_number?(0))
    assert_equal(false, @main.check_number?(123))
    assert_equal(false, @main.check_number?(1001))
    assert_equal(true , @main.check_number?(1000))
  end


  def test_enough_length?
    #境界値チェック2,3,8,9桁
    assert_equal(false, @main.enough_length?("12"))
    assert_equal(true , @main.enough_length?("123"))
    assert_equal(true , @main.enough_length?("12345678"))
    assert_equal(false, @main.enough_length?("123456789"))
  end


  def test_divide?
    assert_equal(2,  @main.divide?(50 , 25))
    assert_equal(20, @main.divide?(200, 10))
  end


  def test_fizz_buzz?
      assert_equal("",         @main.fizz_buzz?(0))
      assert_equal("",         @main.fizz_buzz?(1))
      assert_equal("Fizz",     @main.fizz_buzz?(3))
      assert_equal("",         @main.fizz_buzz?(4))
      assert_equal("Buzz",     @main.fizz_buzz?(5))
      assert_equal("Fizz",     @main.fizz_buzz?(6))
      assert_equal("",         @main.fizz_buzz?(14))
      assert_equal("FizzBuzz", @main.fizz_buzz?(15))
      assert_equal("",         @main.fizz_buzz?(16))
      assert_equal("",         @main.fizz_buzz?(101))
  end


  def test_hello?
      assert_output(/Hello/) { @main.hello?}
  end

end
