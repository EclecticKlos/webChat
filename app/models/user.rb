class User < ActiveRecord::Base
  has_many :conversations, :foreign_key => :sender_id
  has_many :messages
end
