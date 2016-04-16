require_relative 'game'

# player, rival = make_game

# 入力に対する正解パターン
# player = '05020'
# rival = '50025'
# win = 1
# lose = 2

# ０：グー
# ２：チョキ
# ５：パー

player = '05020'
rival = '50025'
win = 0
lose = 0

# Matsumoto Run!
player_hand = player.split('')
rival_hand = rival.split('')

class Solver
  def hand_and_hand(player_hand, rival_hand)
    win_count = 0
    lose_count = 0
    # 結合した手を、勝ちパターン負けパターンで分類する
    win_pattern = ['02','25','50']
    lose_pattern = %w(05 20 52)

    player_hand.each_with_index do |p_hand, i|
      hand = "#{p_hand}#{rival_hand[i]}"
      if win_pattern.include?(hand)
        win_count += 1
      end
      if lose_pattern.include?(hand)
        lose_count += 1
      end

    {
      win: win_count,
      lose: lose_count
    }
  end
end

# result = hand_and_hand(player_hand, rival_hand)
# win = result[:win]
# lose = result[:lose]

# p "win: #{win}"
# p "lose:#{lose}"
#...
# このあたりに回答のコードを書く
#...

# hash = {
#  player: player,
#  rival: rival,
#  win: win,
#  lose: lose
# }

# 実行確実になりそうになるまで おあずけ
# p judge(hash)