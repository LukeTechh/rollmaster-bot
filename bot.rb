require "discordrb"
require "dotenv/load"

bot = Discordrb::Commands::CommandBot.new(
 token: ENV["DISCORD_TOKEN"],
  prefix: "!"
)

require_relative "commands/roll"

RollCommands.register(bot)

puts "Bot online!"
bot.run