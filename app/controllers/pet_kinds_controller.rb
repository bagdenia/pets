class PetKindsController < ApplicationController
  before_action :set_kind, only: [:show, :edit, :update, :destroy]

  def index
    @pet_kinds = Pet::Kind.all
  end

  def show

  end

  def destroy
   @pet_kind.destroy
   respond_to do |format|
     format.html { redirect_to kinds_url, notice: 'Kind was finally destroyed' }
     format.json { head :no_content }
   end
  end

  def new
    @pet_kind= Pet::Kind.new
  end

  def create
    @pet_kind= Pet::Kind.new(kind_params)

    respond_to do |format|
      if @pet_kind.save
        format.html { redirect_to kind_path(@pet_kind), notice: 'Kind was successfully created.' }
        format.json { render :show, status: :created, location: kind_path(@pet_kind) }
      else
        format.html { render :new }
        format.json { render json: @pet_kind.errors, status: :unprocessable_entity }
      end
    end
   end





  private
      # Use callbacks to share common setup or constraints between actions.
      def set_kind
        @pet_kind= Pet::Kind.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def kind_params
        params.require(:pet_kind).permit(:name)
      end

  end
