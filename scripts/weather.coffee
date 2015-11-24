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
  robot.hear /(.*)の(天気|天気予報|予報)(教えて(|！|？|ください(|。|！))|(|は？|？|を(教えて(|！|？|ください(|。|！)))))/i, (msg) ->
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
        msg.reply "ごめんなさい、予測が難しいです" 
      else
        forecast = json['forecasts'][day]['telop']
        image = json['forecasts'][day]['image']['url']

        msg.reply "#{msg.match[1]}の予報は、「#{forecast}」です" + "　#{image}"


