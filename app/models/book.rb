class Book < ApplicationRecord
  belongs_to :author
  has_many :selections
end
