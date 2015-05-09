class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :facebook_id
  field :first_name
  field :last_name

  def self.find_or_create_by_auth_hash(auth_hash)
    params =  { :facebook_id => auth_hash.uid }
    where(params).first || create(params.merge({ :first_name => auth_hash.info.first_name, :last_name => auth_hash.info.last_name }))
  end
end
