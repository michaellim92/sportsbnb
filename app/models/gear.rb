class Gear < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :rentals, dependent: :destroy
  CATEGORIES = [
    {
      name: 'Rock Climbing',
      photo: 'assets/categories/rockclimbing.jpg',
    },
    {
      name: 'Snowboarding',
      photo: 'assets/categories/snowboarding.jpg',
    },
    {
      name: 'Skiing',
      photo: 'assets/categories/skiing.jpg',
    },
    {
      name: 'Basketball',
      photo: 'assets/categories/basketball.png',
    },
    {
      name: 'Soccer',
      photo: 'assets/categories/soccer.jpg',
    },
    {
      name: 'Tennis',
      photo: 'assets/categories/tennis.jpg',
    },
    {
      name: 'Flag Football',
      photo: 'assets/categories/flagfootball.png',
    },
    {
      name: 'Golf',
      photo: 'assets/categories/golfing.jpg',
    },
    {
      name: 'Hiking',
      photo: 'assets/categories/hiking.jpg',
    }
  ].freeze
end
