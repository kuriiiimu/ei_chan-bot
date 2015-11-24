# Description:
#   susuwatarinにDMで起きたらおはよう、寝るときはおやすみというだけのものです

cronJob = require('cron').CronJob

###
＜煤めも＞
　　秒　分　時　日　月　曜日（月が０〜日が６）

###
module.exports = (robot) ->

 cronjob = new cronJob(
   cronTime: "0 59 2 * * *"     # 実行時間
   start:    true                # すぐにcronのjobを実行するか
   timeZone: "Asia/Tokyo"        # タイムゾーン指定
   onTick: ->                    # 時間が来た時に実行する処理
     robot.send {room: "susuwatarin"}, "おやすみなさい"
    )

 cronjob = new cronJob(
   cronTime: "0 1 9 * * *"     # 実行時間
   start:    true                # すぐにcronのjobを実行するか
   timeZone: "Asia/Tokyo"        # タイムゾーン指定
   onTick: ->                    # 時間が来た時に実行する処理
     robot.send {room: "susuwatarin"}, "おはよう！今日もいい一日になるといいね"
    )

 cronjob = new cronJob(
   cronTime: "0 50 9 * * *"     # 実行時間
   start:    true                # すぐにcronのjobを実行するか
   timeZone: "Asia/Tokyo"        # タイムゾーン指定
   onTick: ->                    # 時間が来た時に実行する処理
     robot.send {room: "susuwatarin"}, "おはよう！今日もいい一日になるといいね"
    )


 robot.hear /WAKEUPANDSLEEP$/i, (msg) ->
   msg.send "Success"

