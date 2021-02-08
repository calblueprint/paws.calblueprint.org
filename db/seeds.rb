require "open-uri"

# Most accurate record of current Blueprint members
MEMBERS_FILE =
  "https://raw.githubusercontent.com/calblueprint/calblueprint.org/main/config/locales/en/members.yml"

bloopers = YAML.parse(open(MEMBERS_FILE)).to_ruby['en']['members']

User.all.each do |u|
  u.update_attributes!(inactive: true)
end

bloopers.each do |blooper|
  user = User.find_or_initialize_by(name: "#{blooper['first_name']} #{blooper['last_name']}")
  unless user.persisted?
    user.save!
    puts "Created: #{user.name}."
  else
    user.update_attributes!(inactive: false)
    puts "Already had user: #{user.name}."
  end
end
