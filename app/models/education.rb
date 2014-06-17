class Education < ActiveRecord::Base
  belongs_to :user
  attr_accessible :date_from, :date_to, :degree, :description, :filed_of_study, :grade, :school_name, :university
end
