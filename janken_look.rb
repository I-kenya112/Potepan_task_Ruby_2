def janken
  puts "0(グー)1(チョキ)2(パー)3(降参)"
  player_janken = gets.to_i
  npc_janken = rand(3)
  #npc_janken = 0 #テスト用

  jankens = ["グー","チョキ","パー"]
  puts "ポン！"
  puts "あなた:#{jankens[player_janken]}"
  puts "相手  :#{jankens[npc_janken]}"
  puts "-------------------"

  janken_check = "#{player_janken}" + "#{npc_janken}"

  if janken_check == "00" || janken_check == "11" || janken_check == "22"  #あいこ
    puts "あいこで、、、"
    draw = true
    return janken
  
  elsif janken_check == "01" || janken_check == "12" || janken_check == "20"  #勝ち
    @janken_result = "win"
    look_way

  elsif janken_check ==  "02" || janken_check == "10" || janken_check == "21"  #負け
    @janken_result = "lose"
    look_way

  else 
    puts "降参です！"
  end
end

def look_way
  puts "あっち向いて、、、"
  puts "0(上)1(右)2(下)3(左)4(降参)"
  player_look_way = gets.to_i
  npc_look_way = rand(4)
  #npc_look_way = 0 #テスト用

  look_ways = ["上","右","下","左"]
  puts "ほい！"
  puts "あなた:#{look_ways[player_look_way]}"
  puts "相手  :#{look_ways[npc_look_way]}"
  puts "-------------------"

  if player_look_way != npc_look_way #外れた
    puts "じゃんけん、、、"
    janken
  
  elsif player_look_way == npc_look_way #当たった
    if @janken_result == "win"
      puts "君の勝ちだよ！"
      puts "おめでとう！！"
    else
      puts "残念、また挑戦してね。"
    end

  else 
    puts "降参です！"
  end
end

puts "最初はグー、じゃんけん、、、"
@janken_result = "draw"
janken
