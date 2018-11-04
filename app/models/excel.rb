class Excel < ApplicationRecord

  mount_uploader :image, FileUploader

  validates :image, file_size: { less_than: 10.megabytes }	
  validate :file_format, if: :image?

 private
  def file_format
    unless valid_extension? self.image.filename
      errors[:document] << "Invalid file format."
    end
  end

  def valid_extension?(filename)
    ext = File.extname(filename)
    %w(.xlsx .xls).include? ext.downcase
  end
end
