class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :trackable

  validates :user_name, presence: true
  validates :accepted_terms_and_conditions, inclusion: { in: [ true, false ] }
end
