class User < ApplicationRecord
  belongs_to :user_role, optional:true
  has_many :user_sarafis, dependent: :destroy
end
