class Identity
  include Mongoid::Document
  include Mongoid::Timestamps

  field :uid
  field :first_name
  field :last_name
  field :email
  field :provider
end
