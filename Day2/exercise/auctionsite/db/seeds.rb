# 10.times.each_with_index do |time,index|
#   User.create(name:"User #{time}", email: "yeah#{index}@mail.com")
# end

paul, alia, leto = User.create([
{name: 'Paul Atreides', email: 'paul@arrakis.com', password:
'ironhack', password_confirmation: 'ironhack'},
{name: 'Alia Atreides', email: 'alia@arrakis.com', password:
'ironhack', password_confirmation: 'ironhack'},
{name: 'Leto Atreides', email: 'leto@arrakis.com', password:
'ironhack', password_confirmation: 'ironhack'}
])

puts "Users created"
