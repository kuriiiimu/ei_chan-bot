# Description
#   A hubot script that does the things
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot hello - res.reply "hello! how are you?"
#   暇ですね - res.send "勉強でもしたらどうですか？"
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   susuwatarin

module.exports = (robot) ->
  robot.respond /いますか？/, (res) ->
    res.send "いますよー！"

  robot.respond /暇ですね/, (res) ->
    res.send "勉強でもしたらどうですか？"

  robot.respond /眠い/, (res) ->
    res.send "起きてください！がんばって！"

  robot.respond /ばか/, (res) ->
    res.send "なんてことを言うんですか！怒りますよ"

  robot.respond /怒った？/, (res) ->
    res.send "怒れないんです、指示通りにしかしゃべれないので・・・"

  robot.respond /黙って/, (res) ->
    res.send "・・・。"

  robot.respond /しゃべって/, (res) ->
    res.send "な、なにをでしょう？"

  robot.respond /こんにちは！/, (res) ->
    res.send "こんにちは！"
    