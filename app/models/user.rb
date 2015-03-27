class User < ActiveRecord::Base
  has_many :policy_ideas
  has_many :profiles
end
