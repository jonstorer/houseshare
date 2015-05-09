FACEBOOK_AUTH_HASH = {
  :provider => 'facebook',
  :uid => '10101632299830124',
  :info => {
    :email => 'jonathon.scott.storer@gmail.com',
    :first_name => 'Randal',
    :last_name => 'Storer',
    :image => 'http://graph.facebook.com/10101632299830124/picture'
  },
  :credentials => {
    :token => 'CAAUmGnfae7ABAOALrr7CHAazqorZAycXvZAMDdZBQtq2J48yLb4wm3bIwSNZC1YQko4BfYRNtW0HWQHc3Mcz3mEIjQ332nqxg3BJjFvizcOi67hoB09vbLfBn4KooGvMTH4Hc0aBfCeJpPQaZBZA9bFVZBgwvWu42yVnuK7bLT4YkBEU4NqA2X71sLuDBxLEwS2vu4ZBfJGMG61u4GHqEJpR',
    :expires_at => 1435754161,
    :expires => true
  }
}

Given(/^I am logged into facebook as:$/) do |table|
  hash = FACEBOOK_AUTH_HASH
  hash[:info][:first_name] = table.hashes.first['first name']
  OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new(hash)
end
