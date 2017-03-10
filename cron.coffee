
cronJob = require('cron').CronJob
random = require('hubot').Response::random

module.exports = (robot) ->
  cronjob = new cronJob(
    cronTime: "0 0 7 * * *"     # 実行時間
    start:    true              # すぐにcronのjobを実行するか
    timeZone: "Asia/Tokyo"      # タイムゾーン指定
    onTick: ->                  # 時間が来た時に実行する処理
      robot.send {room: "#good_morning"}, "7時になりました、おはようございます！" +
      random ["8時にも起きれぬ人類など滅ぼしてくれよう...",
　　　　　　　"すごーい!君たちは8時に起きれるフレンズなんだね!",
              "明日から頑張る、明日から節約だ…が…その考え方がダメ…!明日からじゃない、今日だけ頑張るんだ…！今日頑張った者…今日頑張り始めた者にのみ明日が来るんだよ…！",
              "今日と言う日は人生で一番若い日なんだよ" 
             ]
    )

