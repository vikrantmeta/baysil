class Language < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :proficincy,:user
end
