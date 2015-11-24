# Description
#   botからのお知らせ用
#
# Commands:
#
# Author:
#   susuwatarin

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronjob = new cronJob(
   cronTime: "0 0 15 24 10 *"     # 実行時間
   start:    true                # すぐにcronのjobを実行するか
   timeZone: "Asia/Tokyo"        # タイムゾーン指定
   onTick: ->                    # 時間が来た時に実行する処理
     robot.send {room: "#general"}, "<!channel> 時報と天気予報機能が使えるようになったよ！好きなように聞いてみてね！"
    )
