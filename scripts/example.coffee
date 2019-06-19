module.exports = (robot) ->

  robot.hear /.+/, (res) ->

    slack_url = process.env.HUBOT_SLACK_URL
    room = process.env.HUBOT_TARGET_CHANNEL
    channel_id = res.envelope.room
    id = res.envelope.message.id.replace(".","")

    robot.messageRoom room, "#{slack_url}/archives/#{channel_id}/p#{id}"
