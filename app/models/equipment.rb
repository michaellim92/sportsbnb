class Equipment < ApplicationRecord
  belongs_to :user
  has_many :equipments, through: :user
end
