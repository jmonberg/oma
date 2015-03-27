class User < ActiveRecord::Base
  has_many :policy_ideas
end
