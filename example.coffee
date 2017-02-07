# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

#Commands:
module.exports = (robot) ->

  k_messages = [
	  '( ﾟдﾟ  )ｸﾜｯ!!',
	  '( ｰ`дｰ´)ｷﾘｯ` )',
	  'ᕦ(ò_óˇ)ᕤ筋力！',
	  'щ(ﾟдﾟщ)ｶﾓｰﾝ'
  ]

  robot.hear /^hello$/m, (res) ->
    res.send "HELLO!!!"

  robot.hear /^e$/m, (res) ->
    res.send "工ｴｴｪｪ(´д｀)ｪｪｴｴ工"

  robot.hear /^h$/m, (res) ->
    res.send "(^o^)／ ハイッ！"

  robot.hear /^i$/m, (res) ->
    res.send "(=ﾟωﾟ)ﾉ"

  robot.hear /^r$/m, (res) ->
    res.send "(*>_<*)ﾉ 了解デス"

  robot.hear /^g$/m, (res) ->
    res.send "∠(｀・ω・´) goodデス！"

  robot.hear /^k$/m, (res) ->
    message = k_messages[Math.floor(Math.random() * k_messages.length)]
    res.send message

  robot.hear /^yr$/m, (res) ->
    res.send "┐(´д｀)┌ﾔﾚﾔﾚ"

  robot.hear /^u$/m, (res) ->
    res.send "Σヽ(｀д´；)ﾉ ウオォォ！"

  robot.hear /^w$/m, (res) ->
    res.send "ﾍ(ﾟ∀ﾟﾍ)ワロタ"

  robot.hear /^wk$/m, (res) ->
    res.send "((o(´∀｀)o))ﾜｸﾜｸ"

  robot.hear /^nrhd$/m, (res) ->
    res.send "σ(ﾟ∀ﾟ )o ﾅﾙﾎﾄﾞ"

  robot.hear /^tskn$/m, (res) ->
    res.send "(σ・∀・)σ ﾀｼｶﾆ!!"

  robot.hear /^s$/m, (res) ->
    res.send "( ˘ω˘ )ｽﾔｧ"

  robot.hear /^otu$/m, (res) ->
    res.send "ヽ(=´▽`=)ﾉ ｵﾂｶﾚﾁｬｰﾝ"

  robot.hear /^hu$/m, (res) ->
    res.send "( ´ー｀ )ﾌｩｰ．．．"

  robot.hear /^gao$/m, (res) ->
    res.send "(｢・ω・)｢ｶﾞｵｰ"

  robot.hear /^tu$/m, (res) ->
    res.send "ﾍ( ´Д`)ﾉ ﾂｶﾚﾀ"

  robot.hear /^n$/m, (res) ->
    res.send "(ヾﾉ･∀･`)ﾅｲﾅｲ`)"

  robot.hear /^ga$/m, (res) ->
    res.send "ヽ(｀Д´#)ﾉ ｶﾞﾝﾊﾞﾚ-"

  robot.hear /^ok$/m, (res) ->
    res.send "ヽ(^o^)丿　OKOK!"


  # robot.hear /badger/i, (res) ->
  #   res.send "Badgers? BADGERS? WE DON'T NEED NO STINKIN BADGERS"
  #
  # robot.respond /open the (.*) doors/i, (res) ->
  #   doorType = res.match[1]
  #   if doorType is "pod bay"
  #     res.reply "I'm afraid I can't let you do that."
  #   else
  #     res.reply "Opening #{doorType} doors"
  #
  # robot.hear /I like pie/i, (res) ->
  #   res.emote "makes a freshly baked pie"
  #
  # lulz = ['lol', 'rofl', 'lmao']
  #
  # robot.respond /lulz/i, (res) ->
  #   res.send res.random lulz
  #
  # robot.topic (res) ->
  #   res.send "#{res.message.text}? That's a Paddlin'"
  #
  #
  # enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
  # leaveReplies = ['Are you still there?', 'Target lost', 'Searching']
  #
  # robot.enter (res) ->
  #   res.send res.random enterReplies
  # robot.leave (res) ->
  #   res.send res.random leaveReplies
  #
  # answer = process.env.HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING
  #
  # robot.respond /what is the answer to the ultimate question of life/, (res) ->
  #   unless answer?
  #     res.send "Missing HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING in environment: please set and try again"
  #     return
  #   res.send "#{answer}, but what is the question?"
  #
  # robot.respond /you are a little slow/, (res) ->
  #   setTimeout () ->
  #     res.send "Who you calling 'slow'?"
  #   , 60 * 1000
  #
  # annoyIntervalId = null
  #
  # robot.respond /annoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #     return
  #
  #   res.send "Hey, want to hear the most annoying sound in the world?"
  #   annoyIntervalId = setInterval () ->
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #   , 1000
  #
  # robot.respond /unannoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "GUYS, GUYS, GUYS!"
  #     clearInterval(annoyIntervalId)
  #     annoyIntervalId = null
  #   else
  #     res.send "Not annoying you right now, am I?"
  #
  #
  # robot.router.post '/hubot/chatsecrets/:room', (req, res) ->
  #   room   = req.params.room
  #   data   = JSON.parse req.body.payload
  #   secret = data.secret
  #
  #   robot.messageRoom room, "I have a secret: #{secret}"
  #
  #   res.send 'OK'
  #
  # robot.error (err, res) ->
  #   robot.logger.error "DOES NOT COMPUTE"
  #
  #   if res?
  #     res.reply "DOES NOT COMPUTE"
  #
  # robot.respond /have a soda/i, (res) ->
  #   # Get number of sodas had (coerced to a number).
  #   sodasHad = robot.brain.get('totalSodas') * 1 or 0
  #
  #   if sodasHad > 4
  #     res.reply "I'm too fizzy.."
  #
  #   else
  #     res.reply 'Sure!'
  #
  #     robot.brain.set 'totalSodas', sodasHad+1
  #
  # robot.respond /sleep it off/i, (res) ->
  #   robot.brain.set 'totalSodas', 0
  #   res.reply 'zzzzz'
