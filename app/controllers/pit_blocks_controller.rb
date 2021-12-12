class PitBlocksController < ApplicationController

  def create
  end

  private

  def pit_block_params
    params.require(:pit_block).permit(:width, :height, :side_coordinate, :vertical_coordinate)
  end
end
