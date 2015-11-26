# Description
#    
#   
#
# Commands:
#
#
# Author:
#   susuwatarin
#


module.exports = (robot) ->

 robot.hear /ありがと(|う|トン|〜|ー)(|！|!|!!)/i, (msg) ->
	 doitama = msg.random ["ゆあうぇるかむ", "どういたしまして〜", "どいたま！", "いえいえ〜", "お役に立ててよかった！","お役に立てたならよかった！", "お礼を言われるほどのことでも！", "えへへ照れる", "えいえいお〜"] 
	 msg.send "#{doitama}"

 robot.hear /(THANKS(|!|!!))|(THANK YOU(|!|!!))/i, (msg) ->
	 msg.send "Your Welcome!!"