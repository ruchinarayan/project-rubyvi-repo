# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  role            :string
#




class User < ActiveRecord::Base
#  before_save { self.email = email.downcase }
#  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
#  validates :email, presence: true,length: { maximum: 255 },
           # =>  format: { with: VALID_EMAIL_REGEX },
#            uniqueness: { case_sensitive: false }
  has_secure_password
  
  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ?
           BCrypt::Engine::MIN_COST :
           BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
  validates :email, presence: true,   length: {maximum: 100 }
  validates :password_digest, presence: true,   length: {minimum: 6 }
  validates :role, presence: true,   length: {maximum: 10 }
  
end
