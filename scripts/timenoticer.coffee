# Description
#
#
#   
#
# Commands:
#   time - Reply with current time...
#
# Author:
#   susuwatarin
#


d = new Date

year  = d.getFullYear()     # 年（西暦）
month = d.getMonth() + 1    # 月
date  = d.getDate()         # 日
hour  = d.getHours()        # 時
min   = d.getMinutes()      # 分
sec   = d.getSeconds()      # 秒

module.exports = (robot) ->
  robot.hear /(WHAT TIME IS IT NOW|TIME|(ほ|掘)った(いも|芋)いじるな)$/i, (msg) ->
     msg.send "現在時刻は#{year}年#{month}月#{date}日の#{hour}時#{min}分#{sec}秒です"

  robot.hear /((今|いま)(何時|なんじ)|(今|いま)(は|の時間は))？$/i, (msg) ->
     msg.send "現在時刻は#{year}年#{month}月#{date}日の#{hour}時#{min}分#{sec}秒です"

#robot.respond /(((い|ゐ|居)(て?))(?!り)|(お|を|居)|((い|居)(て?)は)(?!ま))((る|ん(?=の))|((り?)ます)(?!ん))((の?ん?)(です)?|(んだ)(?!か))?(か(い?な?|よ|ね)?|(よ?)(ね|な))?\s?(\?|？)/i, (msg) ->
#  msg.send "はい、ここにいます!"
 