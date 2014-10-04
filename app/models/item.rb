class Item < ActiveRecord::Base
  belongs_to :folder

  validates_presence_of :name

end
