# Description:
#   進捗報告をしろと急かすものです。

cronJob = require('cron').CronJob

###
＜煤めも＞
　　秒　分　時　日　月　曜日（月が０〜日が６）

###
module.exports = (robot) ->

 cronjob = new cronJob(
   cronTime: "0 0 21 * * 6"     # 実行時間
   start:    true                # すぐにcronのjobを実行するか
   timeZone: "Asia/Tokyo"        # タイムゾーン指定
   onTick: ->                    # 時間が来た時に実行する処理
     robot.send {room: "#general"}, "@channel: 24時までに #progress_report へ進捗報告よろしくね！"
    )
 cronjob = new cronJob(
   cronTime: "0 0 22 * * 6"     # 実行時間
   start:    true                # すぐにcronのjobを実行するか
   timeZone: "Asia/Tokyo"        # タイムゾーン指定
   onTick: ->                    # 時間が来た時に実行する処理
     robot.send {room: "#general"}, "@channel: 24時までに #progress_report へ進捗報告よろしくね！"
    )

 cronjob = new cronJob(
   cronTime: "0 0 23 * * 6"     # 実行時間
   start:    true                # すぐにcronのjobを実行するか
   timeZone: "Asia/Tokyo"        # タイムゾーン指定
   onTick: ->                    # 時間が来た時に実行する処理
     robot.send {room: "#general"}, "@channel: 24時までに #progress_report へ進捗報告よろしくね！"
    )
  
 cronjob = new cronJob(
   cronTime: "0 45 19 23 11 *"     # 実行時間
   start:    true                # すぐにcronのjobを実行するか
   timeZone: "Asia/Tokyo"        # タイムゾーン指定
   onTick: ->                    # 時間が来た時に実行する処理
     robot.send {room: "#general"}, "このメッセージが11/23の19:45に届いていれば、僕に進捗報告お知らせが導入されたということだよ！日曜夜はよろしくね！"
    )


  ###
  new cron '0 0 21 * * 6', () =>
    robot.send room: "#general", "@channel: 24時までに #progress_report に進捗報告してね！"
  , null, true, "Asia/Tokyo"

  new cron '0 0 22 * * 6', () =>
    robot.send room: "#general", "@channel: 24時までに #progress_report に進捗報告してね(*´ڡ`●)"
  , null, true, "Asia/Tokyo"

  new cron '0 0 23 * * 6', () =>
    robot.send room: "#general", "@channel: 24時までに #progress_report に進捗報告してね(*´ڡ`●)"
  , null, true, "Asia/Tokyo"
  ###
 robot.hear /NOTICE$/i, (msg) ->
    msg.send "進捗！！"

 

