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
    #引数が0 以外ではじまる4 桁の数字であり，なおかつ，値が偶数ならば真を返す
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

    #文字列を受け取り，その長さが3 文字以上，8 文字以下であれば真を返す
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

    #引数として割る数と割られる数を取り，割り算をした結果を返す．ただし，0 で割り算をしたら例外を発生する
    def divide?(num_n, num_d)
        return (num_n / num_d).to_f
    end
  end
end
