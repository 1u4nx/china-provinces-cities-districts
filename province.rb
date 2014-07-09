class Province
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name
  field :code
  
  has_many :cities
  
  validates_presence_of :name, :code
  validates_uniqueness_of :name, :code
  
  index name: 1
  index hours: 1
end
