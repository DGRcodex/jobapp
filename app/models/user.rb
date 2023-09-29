class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

# app/models/user.rb
class User < ApplicationRecord
  has_many :submissions
  has_many :job_offers, through: :submissions
end

