class City
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name
  field :zipcode
  field :hours, type: Float, default: 0
  
  belongs_to :province
  has_many :districts
  
  validates_presence_of :name, :zipcode
  validates_uniqueness_of :name
  
  index name: 1
  index zipcode: 1
  index province_id: 1
end
