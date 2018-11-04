class ImportExcelJob < ApplicationJob
  queue_as :default

  def perform(path)
    # Do something later

    puts "Job is working now "
    file = "#{Rails.root}//public#{path}"
		spreadsheet = Roo::Spreadsheet.open(file) 
	  header = spreadsheet.row(1)
		(2..spreadsheet.last_row).each do |i|
	    row = spreadsheet.row(i)
	    import_excel = ImportExcel.new
	    import_excel.first_name = row[0]
	    import_excel.last_name =row[1]
	    import_excel.save!
	  end 
  end
end
