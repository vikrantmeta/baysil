class Project < ActiveRecord::Base
  belongs_to :user
  attr_accessible :date_from, :date_to, :name, :occupation, :team_size
end
