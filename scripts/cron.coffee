cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 0 21 * * 6', () =>
    robot.send {room: "#general"}, "@channel: 24時までに #progress_report に進捗報告してね(*´ڡ`●)"
  , null, true, "Asia/Tokyo"

module.exports = (robot) ->
  new cron '0 0 22 * * 6', () =>
    robot.send {room: "#general"}, "@channel: 24時までに #progress_report に進捗報告してね(*´ڡ`●)"
  , null, true, "Asia/Tokyo"

module.exports = (robot) ->
  new cron '0 0 23 * * 6', () =>
    robot.send {room: "#general"}, "@channel: 24時までに #progress_report に進捗報告してね(*´ڡ`●)"
  , null, true, "Asia/Tokyo"