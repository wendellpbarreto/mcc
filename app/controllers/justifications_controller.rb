class JustificationsController < ApplicationController
  before_action :set_justification, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @justifications = Justification.all
    respond_with(@justifications)
  end

  def show
    respond_with(@justification)
  end

  def new
    @justification = Justification.new
    respond_with(@justification)
  end

  def edit
  end

  def create
    @justification = Justification.new(justification_params)
    @justification.save
    respond_with(@justification)
  end

  def update
    @justification.update(justification_params)
    respond_with(@justification)
  end

  def destroy
    @justification.destroy
    respond_with(@justification)
  end

  private
    def set_justification
      @justification = Justification.find(params[:id])
    end

    def justification_params
      params.require(:justification).permit(:text)
    end
end
