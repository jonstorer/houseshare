class User
  include Mongoid::Document
  include Mongoid::Timestamps

  embeds_many :identities
end
