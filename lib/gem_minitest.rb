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
  end
end
