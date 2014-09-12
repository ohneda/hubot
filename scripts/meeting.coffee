# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronTest = new cronJob('0 25 10 * * 2', () =>
    envelope = room: "#develop"
    robot.send envelope, "システム定例始まりますよー! @all"
  )
  cronTest.start()

