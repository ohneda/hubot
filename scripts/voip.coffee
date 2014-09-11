# Description: 
#   Utility commands surrounding Hubot uptime. 
# 
# Commands: 
#   hubot voip - Reply with voip number

module.exports = (robot) ->
  robot.respond /VOIP$/i, (msg) ->
      msg.send "すごい会議室: 1-510-868-0549\n広重: 1-510-868-0557\nBerkeley: 1-510-981-1594"
