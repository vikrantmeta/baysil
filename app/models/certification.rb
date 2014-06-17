class Certification < ActiveRecord::Base
  belongs_to :user
  attr_accessible :authority, :certification_link, :date_from, :date_to, :license_number, :name
end
