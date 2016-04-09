require 'faraday'
require 'json'

# サーバーから返されたresponse.bodyを返すメソッド
def judge(hash)
  url = 'https://banana-pie-94410.herokuapp.com/'
  conn = Faraday.new(url: url)
  response = conn.get('/', hash)
  body = JSON.parse(response.body)
  body
end

# じゃんけんの手を生成するメソッド
def make_game
  generated =
    2.times.inject([]) do |res, _|
      # 0, 5, 2 の中から5回ランダムに値を選び、配列にpush する
      res << 5.times.inject([]) { |r, _| r << [0, 5, 2].sample(1) }.join
    end
  player, rival = generated
  [player, rival]
end