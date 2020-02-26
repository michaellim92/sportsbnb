class Gear < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy
  CATEGORIES = [
    {
      name: 'Rock Climbing',
      photo: 'assets/rockclimbing.jpg',
    },
    {
      name: 'Snowboarding',
      photo: 'assets/snowboarding.jpg',
    },
    {
      name: 'Skiing',
      photo: 'assets/skiing.jpg',
    },
    {
      name: 'Basketball',
      photo: 'assets/basketball.png',
    },
    {
      name: 'Soccer',
      photo: 'assets/soccer.jpg',
    },
    {
      name: 'Tennis',
      photo: 'assets/tennis.jpg',
    },
    {
      name: 'Flag Football',
      photo: 'assets/flagfootball.png',
    },
    {
      name: 'Golf',
      photo: 'assets/golfing.jpg',
    },
    {
      name: 'Hiking',
      photo: 'assets/hiking.jpg',
    }
  ].freeze
end
