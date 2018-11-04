class ImportExcel < ApplicationRecord

  def self.import
  	debugger
  	file = "public/#{Excel.first.image.url}"
	  spreadsheet = Roo::Spreadsheet.open(file)
	  header = spreadsheet.row(1)
	  (2..spreadsheet.last_row).each do |i|
	   
	  end 

  end
end
