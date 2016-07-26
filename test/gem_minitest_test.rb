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
 
 #整数を入力として受け取り，値が奇数ならば真を返す
  def test_odd?
    assert_equal(false, @main.odd?(0))
    assert_equal(true,  @main.odd?(1))
    assert_equal(false, @main.odd?(2))
    assert_equal(true,  @main.odd?(-1)) 
    assert_equal(false, @main.odd?(-2))
  end 

 #check_numberメソッドテスト
  def test_check_number?
    assert_equal(false, @main.check_number?(0))
    assert_equal(false, @main.check_number?(123))
    assert_equal(false, @main.check_number?(1001))
    assert_equal(true , @main.check_number?(1000))
  end

 #enough_lengthメソッドテスト
  def test_enough_length?
    #境界値チェック2,3,8,9桁
    assert_equal(false, @main.enough_length?("12"))
    assert_equal(true,  @main.enough_length?("123"))
    assert_equal(true,  @main.enough_length?("12345678"))
    assert_equal(false, @main.enough_length?("123456789"))
  end

 #divideメソッドテスト
  def test_divide?
    assert_equal(2,  @main.divide?(50 , 25))
    assert_equal(20, @main.divide?(200, 10))
  end

end
