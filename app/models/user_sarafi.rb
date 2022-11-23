class UserSarafi < ApplicationRecord
  belongs_to :user, optional:true
  belongs_to :sarafi, optional:true
end
