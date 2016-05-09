# homework1
# 剪刀石頭布
# 先要使用者輸入剪刀石頭或布的其中一個選項
# 接下來讓電腦亂數選出一個選項
# 比較兩個選項，決定誰贏誰輸
# 輸出結果
# 問使用者是否再玩一次

begin #可以美化輸出
  puts "|===============================================|" 
  puts "|Welcome to Rock Paper Scissors!!!              |"
  puts "|===============================================|"

  begin 
    puts "please choose one of the following: R / P / S"
    user_input = gets.chomp.upcase
  end while !["R", "P", "S"].include?(user_input) 

  #接下來請把剩下的部份寫出來...

  gm = ["R", "P", "S"]
  gm_out = gm.sample

  result = nil

  if user_input == gm_out
      result = 0
  elsif user_input == "R"
    if gm_out == "S"
      result = 1
    else
      result = 2
    end
  elsif user_input == "P"
    if gm_out == "R"
     result = 1
    else
     result = 2
    end
  else
    if gm_out == "P"
      result = 1
    else
      result = 2
    end  
  end  

  puts "you choose #{user_input}, gm choose #{gm_out}"
  
  if result == 0
    puts "no winner!"
  elsif result == 1
    puts "you win!"
  else
    puts "you lose!"
  end  

  #問使用者是否還要再玩 
  begin
    puts "Play Again?: Y / N"
    continue = gets.chomp.upcase
  end while !["Y", "N"].include?(continue)

end while continue == "Y"
# 若使用者回答 "N"，印出離開的訊息，不是就回到迴圈的上層繼續玩
puts "Good Bye! Thanks for playing!"

