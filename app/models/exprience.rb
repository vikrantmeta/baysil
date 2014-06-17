class Exprience < ActiveRecord::Base
  belongs_to :user
  attr_accessible :compnay_name, :currently_working, :designation, :link, :location, :time_from, :time_to, :upload_file
end
