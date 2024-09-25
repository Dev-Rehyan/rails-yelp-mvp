class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, presence: :true
  validates :category, inclusion: { in: CATEGORIES }
  has_many :reviews, dependent: :destroy
end

# class Restaurant < ApplicationRecord
#   has_many :reviews, dependent: :destroy
#   validates :name, :address, :catagory, presence: true
#   validates :category, inclusion: { ["chinese", "italian", "japanese", "french", "belgian"] }
# end
