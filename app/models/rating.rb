class Rating < ApplicationRecord
  belongs_to :person
  # validates :score, numbericality: { greater_than_or_equal_to: 0, less_than_equal_to: 10 }
end
