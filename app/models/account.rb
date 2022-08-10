class Account < ApplicationRecord
  #pertence a
  belongs_to :provider
end
