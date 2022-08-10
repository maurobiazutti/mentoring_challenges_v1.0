class Part < ApplicationRecord
  #pertence a
  belongs_to :provider

  #tem muitos
  has_many :mountings

  #tem muitos atraves
  has_many :books, :through => :mountings

end
