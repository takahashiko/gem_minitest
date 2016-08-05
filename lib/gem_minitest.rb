require "gem_minitest/version"

module GemMinitest
  class Main
   
    #整数を入力として受け取り，値が奇数ならば真を返す
    def odd?(n)
#      if n == 1 || n == 3 || n == 5
#        return true
#      else
#        return false
#      end
       if (n % 2)== 1 then
         return true
       else 
         return false
       end
    end

    def check_number?(n)
        #0チェック
        if n==0 then
            return false
        end
         
        #桁チェック
        if n.to_s.length != 4 then
            return false
        end
         
        #偶数チェック
        if odd?(n) then
            return false
        else
            return true
        end
    end


    def enough_length?(str)
        #最小値チェック
        if str.length < 3 then
            return false
        end
        #最大値チェック
        if str.length > 8 then
            return false
        end
        return true
    end


    def divide?(num_n, num_d)
        return (num_n / num_d).to_f
    end

    def fizz_buzz?(n)
        if n==0 then
            return ""
        end
         
        if (((n % 3)==0) && ((n % 5)==0)) then
            return "FizzBuzz"
        end
         
        if (n % 3)==0 then
            return "Fizz"
        end
         
        if (n % 5)==0 then
            return "Buzz"
        end
         
        return ""
    end


    def hello?()
      puts "Hello"
    end


  end
end
