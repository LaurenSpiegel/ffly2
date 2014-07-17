class Rating
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  
  belongs_to :gym
  belongs_to :user
  
  field :stars, type: Integer
  field :comments, type: String
  
  has_mongoid_attached_file :image 
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
  
  
  
end