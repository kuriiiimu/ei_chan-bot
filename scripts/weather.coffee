# Description
#
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
  robot.hear /(.*)の天気/i, (msg) ->
   switch msg.match[1]
      when '今日'
        day = 0
      when '明日'
        day = 1
      when '明後日'
        day = 2
      else
        day = 3
        break
    request = msg.http('http://weather.livedoor.com/forecast/webservice/json/v1?city=130010').get()  #東京

    request (err, res, body) ->
      json = JSON.parse body
      if day == 3 
        forecast = 'ごめんなさい、わからないです' 
      else
        forecast = json['forecasts'][day]['telop']
      msg.reply  "#{msg.match[1]}の予報は、「#{forecast}」です"

