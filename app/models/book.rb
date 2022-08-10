class Book < ApplicationRecord
  #pertence a
  belongs_to :author

  # #tem muitos
  has_many :mountings
  #
  # #tem muitos atraves
  has_many :parts, :through => :mountings
end
