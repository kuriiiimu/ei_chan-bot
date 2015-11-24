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

module.exports = (robot) ->


 robot.hear /(WHAT TIME IS IT NOW|TIME|(ほ|掘)った(いも|芋)いじるな)|(((今|いま|現在)(何時|なんじ)|(今|いま|現在(|時刻))(は|の時間は))？)|((時間|(現在|(いま|今)の)(時刻|時間|の時間))を(教えて(|よ(|！)|！|〜(|！)|ー(|！)|ください(|！))))|(なう|NOW|ナウ)$/i, (msg) ->
	 d = new Date

	 year  = d.getFullYear()     # 年（西暦）
	 month = d.getMonth() + 1    # 月
	 date  = d.getDate()         # 日
	 hour  = d.getHours()        # 時
	 min   = d.getMinutes()      # 分
	 sec   = d.getSeconds()      # 秒

	 msg.send "現在時刻は#{year}年#{month}月#{date}日の#{hour}時#{min}分#{sec}秒です"

 ###
  robot.hear /$/i, (msg) ->

	 d = new Date

	 year  = d.getFullYear()     # 年（西暦）
	 month = d.getMonth() + 1    # 月
	 date  = d.getDate()         # 日
	 hour  = d.getHours()        # 時
	 min   = d.getMinutes()      # 分
	 sec   = d.getSeconds()      # 秒

	 msg.send "現在時刻は#{year}年#{month}月#{date}日の#{hour}時#{min}分#{sec}秒です"
###
#robot.respond /(((い|ゐ|居)(て?))(?!り)|(お|を|居)|((い|居)(て?)は)(?!ま))((る|ん(?=の))|((り?)ます)(?!ん))((の?ん?)(です)?|(んだ)(?!か))?(か(い?な?|よ|ね)?|(よ?)(ね|な))?\s?(\?|？)/i, (msg) ->
#  msg.send "はい、ここにいます!"
 