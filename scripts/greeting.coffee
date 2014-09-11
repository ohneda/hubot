# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronTest = new cronJob('0 0 10 * * 1-5', () =>
    envelope = room: "#development"
    robot.send envelope, "おはようございます！今日も一日レッツコーディング @all"
  )
  cronTest.start()

