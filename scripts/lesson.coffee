# Description
#    練習用、いろんなスクリプトが混在してると思う。
#
#   
#
# Commands:
#	hubot I am (Name) - hubot call (Name)
#   "おみくじ"" - おみくじをひいてくれるよ
#
# Author:
#   susuwatarin
#

module.exports = (robot) ->

  robot.respond /I am (.*)/i, (msg) ->
    msg.send "Hi, #{msg.match[1]}"

  robot.hear /(OMIKUJI|(お|御)(みくじ|神籤)|オミクジ)/i, (msg) ->
  	omikuji = msg.random ["大吉", "中吉", "小吉", "吉", "凶", "大凶"]
  	msg.reply "おみくじの結果は「 #{omikuji} 」です"