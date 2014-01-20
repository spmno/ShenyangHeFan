class Restaurant < ActiveRecord::Base
  has_many :hefans
  belongs_to :district
end
