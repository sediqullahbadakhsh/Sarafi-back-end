class User < ApplicationRecord
  belongs_to :user_role, optional:true
end
