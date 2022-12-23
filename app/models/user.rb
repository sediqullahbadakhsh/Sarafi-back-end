class User < ApplicationRecord
  belongs_to :user_role, optional:true
  has_many :user_sarafis, dependent: :destroy

  has_secure_password

  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

end
