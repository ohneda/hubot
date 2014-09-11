# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronTest = new cronJob('0 21 7 * * *', () =>
    envelope = room: "#zpub-development"
    robot.send envelope, "1クーロンで自動投稿のテスト"
  )
  cronTest.start()

module.exports = (robot) ->
  cronTest = new cronJob('0 22 7 * * *', () =>
    envelope = room: "#zpub-development"
    robot.send envelope, "2ここにメッセージを突っ込みます。"
  )
  cronTest.start()

