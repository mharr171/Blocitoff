# Create My Account
my_account = User.new(
  username: 'mharr171',
  email:      'mharr171.z@gmail.com',
  password:   'asdf123'
)
my_account.skip_confirmation!
my_account.save!
print 'My account (mharr171.z@gmail.com) created.'

# Create My Account
my_other_account = User.new(
  username: 'mattlivefullstack',
  email:      'matt@livefullstack.com',
  password:   'asdf123'
)
my_other_account.skip_confirmation!
my_other_account.save!
print 'My account (matt@livefullstack.com) created.'
