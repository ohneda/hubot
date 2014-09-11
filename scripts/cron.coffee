# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronTest = new cronJob('0 40 7 * * *', () =>
    envelope = room: "#zpub-development"
    robot.send envelope, "クーロンで自動投稿のテスト @all"
  )
  cronTest.start()

module.exports = (robot) ->
  cronTest = new cronJob('0 41 7 * * *', () =>
    envelope = room: "#zpub-development"
    robot.send envelope, "アゲイン @all"
  )
  cronTest.start()

