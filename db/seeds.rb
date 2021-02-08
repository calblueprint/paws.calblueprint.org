# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

# Most accurate record of current Blueprint members
MEMBERS_FILE =
  "https://raw.githubusercontent.com/calblueprint/calblueprint.org/main/config/locales/en/members.yml"

bloopers = YAML.parse(open(MEMBERS_FILE)).to_ruby['en']['members']

User.all.each do |u|
  u.update!(inactive: true)
end

bloopers.each do |blooper|
  user = User.find_or_initialize_by(name: "#{blooper['first_name']} #{blooper['last_name']}")
  unless user.persisted?
    user.save!
    puts "Created: #{user.name}."
  else
    user.update!(inactive: false)
    puts "Already had user: #{user.name}."
  end
end
