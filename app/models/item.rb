class Item < ActiveRecord::Base
  belongs_to :folder

  validates_presence_of :name

  has_attached_file :file
  do_not_validate_attachment_file_type :file
  validates :file, :attachment_presence => true

end
