class Person < ActiveRecord::Base
  has_many :sites
  has_one :city
end
