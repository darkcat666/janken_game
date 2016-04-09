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

def hand_and_hand(player_hand, rival_hand)
  win_count = 0
  lose_count = 0

  player_hand.each_with_index do |p_hand, i|
    # p "#{p_hand} vs #{rival_hand[i]}" # デバッグプリント
    if (p_hand.to_i == 0 && rival_hand[i].to_i == 2)
      # p "あなたは、グーで勝ちました"
      win_count += 1
    end
    if (p_hand.to_i == 2 && rival_hand[i].to_i == 5)
      # p "あなたは、チョキで勝ちました"
      win_count += 1
    end
    if (p_hand.to_i == 5 && rival_hand[i].to_i == 0)
      # p "あなたは、パーで勝ちました"
      win_count += 1
    end
    if (p_hand.to_i == 0  && rival_hand[i].to_i == 5)
      # p "あなたは、グーで負けました"
      lose_count += 1
    end
    if (p_hand.to_i == 2  && rival_hand[i].to_i == 0)
      # p "あなたは、チョキで負けました"
      lose_count += 1
    end
    if (p_hand.to_i == 5  && rival_hand[i].to_i == 2)
      # p "あなたは、パーで負けました"
      lose_count += 1
    end
  end
  # hash をつかって win, lose の数値を返す
  {
    win: win_count,
    lose: lose_count
  }
end

result = hand_and_hand(player_hand, rival_hand)
win = result[:win]
lose = result[:lose]

p "win: #{win}"
p "lose:#{lose}"
#...
# このあたりに回答のコードを書く
#...

hash = {
  player: player,
  rival: rival,
  win: win,
  lose: lose
}

# 実行確実になりそうになるまで おあずけ
p judge(hash)