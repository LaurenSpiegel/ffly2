class Location
  include Mongoid::Document
  include Mongoid::Timestamps
  
  has_many :gyms
  
  field :name, type: String
  field :zip, type: Integer
end