describe Solver do
    # it だけの記述だと自動的に pending になる
    # 1. 現状のコードのテストを書く
    # 2. テストしたい部分のコードを、こわれてないか確認しつつ
    # 分割していく(testable code にしていく)
 
    # 条件分岐が正しく出来ているかテストしたい
    # でもそのまえに現状のコードが変更の過程で壊れてないか検知するためにテストを書く
   it 'クラスの挙動を確認する' do
    s = Solver.new
    player_hand = '05020'.split('')
    rival_hand = '50025'.split('')
    result = s.hand_and_hand(player_hand, rival_hand)
    # result にはhash が入ってるので、hash のアクセス方法で
    # それぞれの値を取り出す(アクセスする)
    win_count = result[:win]
    lose_count = result[:lose]
    expect(win_count).to eq 1
    expect(lose_count).to eq 2
   end
end
