# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronTest = new cronJob('0 0 19 * * 1-5', () =>
    envelope = room: "#develop"
    robot.send envelope, "そろそろ帰宅の時間ですよー。コーディングの続きはまた明日！ @all"
  )
  cronTest.start()

