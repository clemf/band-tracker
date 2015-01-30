class Band < ActiveRecord::Base
  has_and_belongs_to_many :venues
  validates :name, length: { minimum: 1 }

  before_save do
    self.name = name.downcase.titleize    
  end
end