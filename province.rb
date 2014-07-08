class Province
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name
  
  has_many :cities
  
  validates_presence_of :name
  validates_uniqueness_of :name
  
  index name: 1
end
