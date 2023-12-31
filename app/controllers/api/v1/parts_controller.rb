class Api::V1::PartsController < ApplicationController

  before_action :set_part, only: %i[show update destroy] # show update destroy

  def index
    @parts = Part.all 
    render json: @parts
  end

  def show
    render json: @part
  end

  def create
    @part = Part.new(part_params)
    if @part.save
      render json: @part, status: :created, location: api_v1_part_url(@part)
    else
      render json: @part.errors, status: :unprocessable_entity
    end
  end

  def update
    if @part.update(part_params)
      render json: @part
    else
      render json: @part.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @part.destroy!
  end

private

def set_part
  @part = Part.find(params[:id])
end

def part_params
  params.require(:part).permit(:name, :function)
end

end