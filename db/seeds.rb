# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Note.destroy_all
User.destroy_all
Update.destroy_all
Api.destroy_all

# APIS
monday = Api.new(
  name:   "Monday API",
  status: "pending",
  tray_version: "2.0.1",
  latest_version: "2.0.1",
  developer: "unassigned",
  description: "The monday.com API supports read and write (mutating) access to boards, items, and more. It gives you the ability to both view and use any data you have in monday.com outside of the platform. You can use the API to import external data into your monday.com account or trigger actions in monday.com in response to a change in an external software or service.",
  api_acc_manager: "William Gates | team@monday.com | +447237300021",
  logo_url: "https://4bo0cq4bxnou2rimh3hwzwi8-wpengine.netdna-ssl.com/blog/wp-content/uploads/2018/02/22852120_1266763086768693_6004893502123596052_n.png",
)
monday.save!

microsoft = Api.new(
  name:   "Microsoft 365 API",
  status: "pending",
  tray_version: "2.0.11",
  latest_version: "2.0.12",
  developer: "unassigned",
  description: "Office 365 services, such as OneNote, Outlook, Excel, OneDrive, Microsoft Teams, Planner, and SharePoint, are now exposed in Microsoft Graph. Microsoft Graph is a unified API endpoint for accessing data across Microsoft 365, which includes Office 365, Enterprise Mobility, and Security and Windows services. It provides a simplified developer experience, with one endpoint and a single authentication token that gives your app access to data across all these services.",
  api_acc_manager: "Miranda Gates | conections@microsoft.com | +447237300021",
  logo_url: "https://cdn1.iconfinder.com/data/icons/flat-and-simple-part-1/128/microsoft-512.png",
)
microsoft.save!

oxford = Api.new(
  name:   "Oxford Dictionaries API",
  status: "pending",
  tray_version: "2.8.9",
  latest_version: "3.1.12",
  developer: "unassigned",
  description: "The Oxford Dictionaries API allows easy access to our world-renowned dictionary content. Use the live documentation below to try it out, view real responses, and explore a growing number of code samples to help you get started.",
  api_acc_manager: "Colin Smith | emailresponses.ac@oup.com | +447237300021",
  logo_url: "https://pbs.twimg.com/profile_images/875679902216970241/NAw23Gdg_400x400.jpg",
)
oxford.save!

linkedin = Api.new(
  name:   "LinkedIn API",
  status: "pending",
  tray_version: "1.5.8",
  latest_version: "1.5.12",
  developer: "unassigned",
  description: "LinkedIn's home for API documentation for all LinkedIn business lines. Our API documentation is organized by business lines covering Consumer, Compliance, Learning, Marketing, Sales, and Talent Solutions. Follow the links below to learn more about business lines and their possible integration types.",
  api_acc_manager: "Rich Links | connections@microsoft.com | +447237300021",
  logo_url: "https://www.seekpng.com/png/detail/8-84419_linkedin-logo-png-icon-linkedin-logo-png.png",
)
linkedin.save!

 # emails
require_relative 'emails'

EMAILS.each do |mail|
  update = Update.new(
    api: Api.find_by_name(mail["api"]),
    source: mail["from"],
    title: mail["subject"],
    text: mail["text"]
    )
  p update.save
end

# users
alex = User.new(
    username: "alex"
  )
alex.save!

damon = User.new(
    username: "damon"
  )
damon.save!

arthur = User.new(
    username: "arthur"
  )
arthur.save!

todd = User.new(
    username: "todd"
  )
todd.save!

# notes

Update.all.each do |nota|
  note = Note.new(
    text: "Hi Arthur, could you please pick this up on Monday!",
    update_warning: nota,
    user: User.first
  )
  p note.save
end
