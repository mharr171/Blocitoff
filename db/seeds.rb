require 'faker'

Faker::Internet.unique.clear

# # Create My Account
# my_account = User.new(
#   username: 'mharr171',
#   email:    'mharr171.z@gmail.com',
#   password: 'asdf123'
# )
# my_account.skip_confirmation!
# my_account.save!
# puts '.'

3.times do
  username = Faker::Internet.unique.user_name
  User.create!(
    username: username,
    email:    Faker::Internet.safe_email(username),
    password: 'asdf123'
  )
  puts '.'
end
users = User.all
print "#{users.count} users created."

users.each do |user|
  5.times do
    item = Item.new(
      name: Faker::Lorem.sentence(3)
    )
    item.user = user
    item.created_at = (rand*10).days.ago
    puts '.' if item.save
  end
end
items = Item.all
print "#{items.count} items created."
