# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronTest = new cronJob('0 12 07 * * *', () =>
    envelope = room: "#zpub-development"
    robot.send envelope, "クーロンで自動投稿のテスト"
  )
  cronTest.start()


