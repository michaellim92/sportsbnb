class Gear < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  has_many :rentals, dependent: :destroy
  CATEGORIES = [
    {
      name: 'Rock Climbing',
      photo: 'https://res.cloudinary.com/dc4429yub/image/upload/v1582806574/dashboard/rockclimbing_f5cctd.jpg',
    },
    {
      name: 'Snowboarding',
      photo: 'https://res.cloudinary.com/dc4429yub/image/upload/v1582806599/dashboard/snowboarding_qmzrcl.jpg',
    },
    {
      name: 'Skiing',
      photo: 'https://res.cloudinary.com/dc4429yub/image/upload/v1582806582/dashboard/skiing_i3dvto.jpg',
    },
    {
      name: 'Basketball',
      photo: 'https://res.cloudinary.com/dc4429yub/image/upload/v1582806474/dashboard/basketball_itkl2t.png',
    },
    {
      name: 'Soccer',
      photo: 'https://res.cloudinary.com/dc4429yub/image/upload/v1582806607/dashboard/soccer_g8ln5g.jpg',
    },
    {
      name: 'Tennis',
      photo: 'https://res.cloudinary.com/dc4429yub/image/upload/v1582806469/dashboard/tennis_j6t4ta.jpg',
    },
    {
      name: 'Flag Football',
      photo: 'https://res.cloudinary.com/dc4429yub/image/upload/v1582806510/dashboard/flagfootball_fnpkeg.png',
    },
    {
      name: 'Golf',
      photo: 'https://res.cloudinary.com/dc4429yub/image/upload/v1582806529/dashboard/golfing_xstuar.jpg',
    },
    {
      name: 'Hiking',
      photo: 'https://res.cloudinary.com/dc4429yub/image/upload/v1582806563/dashboard/hiking_woakdd.jpg',
    }
  ].freeze
end
