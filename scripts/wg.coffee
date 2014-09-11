# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronTest = new cronJob('0 25 10 * * 4', () =>
    envelope = room: "#development"
    robot.send envelope, "Working Group始まりますよー! @all"
  )
  cronTest.start()

