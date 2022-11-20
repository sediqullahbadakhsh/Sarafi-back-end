class Credit < ApplicationRecord
  belongs_to :bank_accounts
  belongs_to :customers
end
