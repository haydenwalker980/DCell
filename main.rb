require "discorb"

client = Discorb::Client.new
thatonecolor = Discorb::Color.from_rgb(201, 0, 0)

def createauthor(name, url, icon)
  return Discorb::Embed::Author.new(name, url: url, icon: icon)
end

client.once :standby do
  puts "Logged in as #{client.user}"
end

client.slash("about", "About DCell") do |interaction|
  interaction.post(embeds: Discorb::Embed.new(title: "About DCell", description: "DCell is a bot similar to DTel, but it's written in Ruby, uses slash commands, and is licensed under copyleft.", color: thatonecolor, timestamp: Time.now(), author: embedauthor, fields: nil, footer: nil, image: nil, thumbnail: nil), ephemeral: true)
end

client.run(ENV["DISCORD_BOT_TOKEN"])
