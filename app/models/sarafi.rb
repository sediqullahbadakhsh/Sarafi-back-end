class Sarafi < ApplicationRecord
    has_many :user_sarafis, dependent: :destroy
end
