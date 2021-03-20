require 'open-uri'
require 'nokogiri'
require 'json'

past_changes_url = 'https://api.slack.com/changelog'
future_changes_url = 'https://api.slack.com/changelog/future'
# past_doc = Nokogiri::HTML(URI.open(past_changes_url))
# logs = past_doc.css('.api_doc ul').first
# api_logs = []
# logs.children.select do |li|
#   api_logs << li if li.css('span').first.text == "APIs"
# end
# api_logs_hash = {}
# api_logs.each_with_index do |li, index|
#   api_logs_hash[index] = {
#     source: past_changes_url,
#     text: "#{li.text.strip}\n#{li.css('a').first['href']}"
#   }
# end

# File.write('./past_slack_changes.json', JSON.dump(api_logs_hash))

future_doc = Nokogiri::HTML(URI.open(future_changes_url))
logs = future_doc.css('.api_doc ul').first
api_logs = []
logs.children.select do |li|
  api_logs << li if li.css('span').first.text == "APIs"
end
api_logs_hash = {}
api_logs.each_with_index do |li, index|
  api_logs_hash[index] = {
    source: future_changes_url,
    text: "#{li.text.strip}\n#{li.css('a').first['href']}"
  }
end

File.write('./db/future_slack_changes.json', JSON.dump(api_logs_hash))
