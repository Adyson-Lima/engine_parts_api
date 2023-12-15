class Api::V1::PartsController < ApplicationController

  # before_action :set_part, only: %i[] # show update destroy

  def index
    @parts = Part.all 
    render json: @parts
  end

private

def set_part
  @part = Part.find(params[:id])
end

def part_params
  params.require(:part).permit(:name, :function)
end

end