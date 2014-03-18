# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bloopers = [
  "Melissa Huang",
  "Mark Miyashita",
  "Alice Oh",
  "Jessica Lin",
  "Wonjun Jeong",
  "Kevin Gong",
  "Tony Wu",
  "Atsu Kakitani",
  "Sam Lau",
  "Hao Guan",
  "Nishant Desai",
  "Alli Leong",
  "Ethan Chiou",
  "Will Tang",
  "Varun Rau",
  "Anthony Sutardja",
  "Vivek Raghuram",
  "John Du",
  "Eugene Kim",
  "Jonathan Ho",
  "Byron Zhang",
  "Howard Chen",
  "Vincent Tian",
  "Alton Zheng-Xie",
  "Brian Liou",
  "Deeps Warrier",
  "Kevin Wu",
  "Justin Chan",
  "Jennifer Min",
]

bloopers.each do |blooper|
  user = User.where(name: blooper).first_or_create!
  if user.new_record?
    puts "Created: #{user.name}."
  end
end
