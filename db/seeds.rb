require "open-uri"

# Most accurate record of current Blueprint members
MEMBERS_FILE =
  "https://raw.githubusercontent.com/calblueprint/calblueprint.org/master/data/members.yml"

bloopers = YAML.parse(open(MEMBERS_FILE)).to_ruby['members']

bloopers.each do |blooper|
  user = User.where(name: "#{blooper['first_name']} #{blooper['last_name']}").first_or_create!
  unless user.persisted?
    puts "Created: #{user.name}."
  else
    puts "Already had user: #{user.name}."
  end
end
