#    DCell/DiscordCellular - A copyleft, Ruby alternative to DTel
#    Copyright (C) 2024 Hayden Walker
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as
#    published by the Free Software Foundation, either version 3 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.

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
