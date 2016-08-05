#module Lita
#  module Handlers
#    class Debug < Handler
#      route(/^debug/) { |response| debugger }
#      Lita.register_handler(self)
#    end
#  end
#end

Lita.configure do |config|
  #
  # Look for the slack token, if it is there, assume we are running in
  # production mode and connect to slack. Otherwise assume we are running
  # locally and just want to test something out.
  #
  # Can be tested with the following command:
  #
  #     lita run
  #
  if ENV["SLACK_TOKEN"]
    config.http.port = ENV["PORT"]
    config.robot.adapter = :slack
    config.adapters.slack.token = ENV["SLACK_TOKEN"]
    config.robot.admins = ENV["SLACK_ADMINS"].split(",")
  else
    config.robot.adapter = :shell
    config.adapters.slack.token = "fake"
  end

  config.robot.name = "radbot"
  config.robot.locale = :en
  config.robot.log_level = :info

  config.handlers.hangout.domain='radiusnetworks.com'

  config.handlers.cleverbot.api_user = ENV["CLEVERBOT_API_USER"]
  config.handlers.cleverbot.api_key = ENV["CLEVERBOT_API_KEY"]

  config.handlers.wtf.see_also = ["merriam"]
  config.handlers.wtf.api_keys = {"merriam" => ENV["MERRIAM_KEY"]}

  #config.handlers.imgflip.command_only = true
  config.handlers.imgflip.username = ENV["IMGFLIP_USER"]
  config.handlers.imgflip.password = ENV["IMGFLIP_PASS"]

  config.handlers.github_pinger.engineers = {
    #"Aaron Kromer"       => { usernames: { slack: "aaron",   github: "cupakromer" } },
    #"Alastair Hewitt"    => { usernames: { slack: "al",      github: "ajhewitt" } },
    "Christopher Sexton" => { usernames: { slack: "chris",   github: "csexton" } },
    #"James Nebeker"      => { usernames: { slack: "james",   github: "jnebeker" } },
    #"Michael Harper"     => { usernames: { slack: "michael", github: "mharper" } },
    #"Scott Newman"       => { usernames: { slack: "snewman", github: "greencoder" } },
    #"Scott Yoder"        => { usernames: { slack: "scott",   github: "syoder" } },
  }

end
