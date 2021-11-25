class TopController < ApplicationController

  def index
    @pit_document = PitDocument.new
  end
end
