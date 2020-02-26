class Gear < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy
  CATEGORIES = [
    {
      name: 'Rock Climbing'#,
      # photo: ,
    },
    {
      name: 'Snowboarding'#,
      # photo: ,
    },
    {
      name: 'Skiing'#,
      # photo: ,
    },
    {
      name: 'Basketball'#,
      # photo: ,
    },
    {
      name: 'Soccer'#,
      # photo: ,
    },
    {
      name: 'Tennis'#,
      # photo: ,
    },
    {
      name: 'Flag Football'#,
      # photo: ,
    },
    {
      name: 'Golf'#,
      # photo: ,
    },
    {
      name: 'Hiking'#,
      # photo: ,
    }
  ].freeze
end
