class Rating
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  
  belongs_to :gym
  belongs_to :user
  
  field :stars, type: Integer
  field :comments, type: String
  field :lap_pool, type: Integer
  field :chillin_pool, type: Integer
  field :dumbbells_complete, type: Integer
  field :dumbbells_incomplete, type: Integer

  field :bench_press, type: Integer
  field :shoulder_press, type: Integer
  field :lats_back_machine, type: Integer
  field :abs_machine, type: Integer
  field :shoulder_machine, type: Integer


  field :chest_machine, type: Integer
  field :biceps_machine, type: Integer
  field :quads_machine, type: Integer
  field :biceps_curl_bar, type: Integer
  field :chin_up_bar, type: Integer

  field :no_weights_at_all, type: Integer
  field :exercise_balls, type: Integer
  field :stretching_area, type: Integer
  field :bosu, type: Integer
  field :lockers, type: Integer


  field :treadmill, type: Integer
  field :stairmaster, type: Integer
  field :stepmill, type: Integer
  field :elliptical, type: Integer
  field :spin_bike, type: Integer

  field :recumbent_bike, type: Integer
  field :towels_available, type: Integer
  field :tvs_that_work, type: Integer
  field :bottled_water, type: Integer
  field :chilled_filtered_water, type: Integer
  field :headphones_supplied, type: Integer





  
  has_mongoid_attached_file :image


#validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/  (This was instruction from heroku s3 instructions.)

  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
   
  
  
end