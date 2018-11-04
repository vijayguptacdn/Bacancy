class ExcelsController < ApplicationController
	before_action :authenticate_user!

	def index
	end

	def new
    @excel = Excel.new
  end

  def create
    @excel = Excel.new(excel_params)
    respond_to do |format|
      if @excel.save
        ImportExcelJob.set(wait: 1.minutes).perform_later(@excel.image.url)
        format.html { redirect_to excel_path(@excel), notice: 'Excel file successfully Uploaded.' }
      else
      	format.html { redirect_to new_excel_path, notice: 'Please upload xlsx file with size less then 10 mb.'}
      end
    end
  end

  def show
  end

  private
   def excel_params
   	params.require(:excel).permit(:title, :image)
   end
end
