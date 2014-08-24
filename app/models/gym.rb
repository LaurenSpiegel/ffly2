class Gym
  include Mongoid::Document
  include Mongoid::Timestamps
  
  has_many :ratings
  belongs_to :location
  
  field :name, type: String
  field :coords, type: Array
  #field :street_address, type: String   Considered incorporating this to aid in geolocation search
  
  validates :name, uniqueness: true
  validates :coords, presence: true
 
end