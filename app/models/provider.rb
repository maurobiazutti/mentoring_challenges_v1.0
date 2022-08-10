class Provider < ApplicationRecord
  #tem um
  has_one :account

  #tem muitos
  has_many :parts
end
