# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronTest = new cronJob('0 30 10 * * 1-5', () =>
    envelope = room: "#develop"
    robot.send envelope, "おはようございます！今日も一日レッツコーディング @all"
  )
  cronTest.start()

