class TermsController < ApplicationController
  before_action :set_term, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @terms = Term.all
    respond_with(@terms)
  end

  def show
    @justifications = Justification.all
    respond_to do |format|
      format.html do 
        render locals: {
          show_as_pdf: false,
        }
      end
      format.pdf do
        @filename = "Termo.pdf"
        # @pdf = render_to_string :pdf => "file",
        render :pdf => "file",
          :file => "terms/show.html.erb",
          :layout => "layouts/application.pdf.erb",
          :show_as_html => params[:debug].present?,
          :encoding => 'utf-8',
          # :javascript_delay => 1000,
          :margin => {
            :top      => 0,
            :bottom   => 0,
            :left     => 0,
            :right    => 0
          },
          locals: {
            show_as_pdf: true,
          }
        # send_data(@pdf, filename: @filename, type: "application/pdf")
      end
    end
  end

  def new
    @term = Term.new
    @justifications = Justification.all
    respond_with(@term)
  end

  def edit
  end

  def create
    @term = Term.new(term_params)
    @term.save
    @justifications = Justification.all

    # respond_to do |format|
    #   format.html do 
    #     render locals: {
    #       show_as_pdf: false,
    #     }
    #   end
    #   format.pdf do
        @filename = "Termo.pdf"
        # @pdf = render_to_string :pdf => "file",
        render :pdf => "file",
          :file => "terms/show.html.erb",
          :layout => "layouts/application.pdf.erb",
          :show_as_html => params[:debug].present?,
          :encoding => 'utf-8',
          # :javascript_delay => 1000,
          :margin => {
            :top      => 5,
            :bottom   => 5,
            :left     => 5,
            :right    => 5
          },
          locals: {
            show_as_pdf: true,
          }
        # send_data(@pdf, filename: @filename, type: "application/pdf")
    #   end
    # end

    # respond_with(@term)
  end

  def update
    @term.update(term_params)
    respond_with(@term)
  end

  def destroy
    @term.destroy
    respond_with(@term)
  end

  private
  
  def set_term
    @term = Term.find(params[:id])
  end

  def term_params
    params.require(:term).permit(:legal_representer, :cpf_cnpj, :address, :contact, :role, :start_of_period, :end_of_period, :justification_description, :removing_way, :returning_way, :number_of_items, artworks_attributes: [:id, :image, :register_number, :name, :material, :dimensions, :state_of_conservation, :observation], justification_ids: [])
  end
end
