class Task < ApplicationRecord
  with_options presence: true do
    validates :title, length: { maximum: 30 }
    validates :title, length: { maximum: 255 }
  end
end
