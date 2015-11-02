class User < ActiveRecord::Base
include Clearance::User

  has_many :ideas
  has_many :profiles
end
