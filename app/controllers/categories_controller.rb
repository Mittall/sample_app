class CategoriesController < ApplicationController
	require "prawn"
  require "prawn/table"
	
	before_filter :authenticate_user!

	def index
		@categories = Category.all
	end

	def show
	end

	def new
		@category = Category.new
	end

	def create
	end

	def destroy
	end

	#Download html in pdf formate with wicked_pdf
	def download_pdf
		@categories = Category.all
		html = render_to_string :action => :index, :layout => "pdf.html.erb", :locals => {:categories => @categories}
		# Also pass layout as false
  	pdf = WickedPdf.new.pdf_from_string(html)
  	send_data(pdf, :filename => "categories.pdf", :disposition => 'attachment')
	end

	#Download html in pdf formate with the prawn
  def download
    @categories = Category.all
    respond_to do |format|
      format.pdf do
        pdf = Prawn::Document.new
        table_data = Array.new
        table_data << ["Category name"]
        @categories.each do |c|
          table_data << [c.name]
        end
        pdf.table(table_data, :width => 500, :cell_style => { :inline_format => true })
        #send_data pdf.render, filename: 'test.pdf', type: 'application/pdf', :disposition => 'inline'
        send_file '/home/nikhil/Downloads/test.pdf', :type => 'application/pdf', :disposition => 'attachment'
      end
    end
  end

	private

		def category_params
			params.require(:ctaegory).permit(:name)
		end

end