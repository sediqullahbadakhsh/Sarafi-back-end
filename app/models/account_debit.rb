class AccountDebit < ApplicationRecord
  belongs_to :debit_from_accounts
  belongs_to :bank_accounts
end
