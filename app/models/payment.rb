class Payment < ApplicationRecord
  include AASM

  aasm column: :product do
    state :canceling, initial: true
    state :pendding

    event :cancel do
      transitions from: :canceling, to: :pendding
    end
  end
end
