# Description
#   Fetch company logo images via the clearbit logo api.
#
# Commands:
#   hubot logo <domain> - Fetch the logo for <domain>
#
# Notes:
#   Core functionality provided by https://clearbit.com/docs#logo-api
#
# Author:
#   Harris Novick <harrisdavidnovick@gmail.com>

module.exports = (robot) ->
  robot.respond /logo (.*)/, (msg) ->
    domain = msg.match[1]

    if domain.match(/^(?!:\/\/)([a-zA-Z0-9]+\.)?[a-zA-Z0-9][a-zA-Z0-9-]+\.[a-zA-Z]{2,6}?$/i)?
      msg.send("https://logo.clearbit.com/#{domain}")
    else
      msg.send("#{domain} does not appear to be a valid domain.")
