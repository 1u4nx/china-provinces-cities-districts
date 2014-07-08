class District
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name
  
  belongs_to :city
  
  validates_presence_of :name
  
  index name: 1
  index zipcode: 1
  index city_id: 1
end
