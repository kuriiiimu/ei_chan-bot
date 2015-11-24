# Description
#   With it, You can confirm your push.
#   Please write this to below
#   --------------------------------------------------------------------------
# 	  robot.hear /{(scripts name),(modules name),(package name)}$/i, (msg) ->
#       msg.send "Success!!"
#   --------------------------------------------------------------------------
#   and check on slack when you push one.
#
# Commands:
#
# Author:
#   susuwatarin

module.exports = (robot) ->
  robot.hear /confirmation$/i, (msg) ->
    msg.send "Success!!"

  robot.hear /herokukeepalive2$/i, (msg) ->
    msg.send "Success!!"

