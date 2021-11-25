class PitDocumentsController < ApplicationController

  def new
  end

  def create
    @pit_document = PitDocument.new(pit_document_params)
    # TODO: ランダムidを生成する
    # @uuid = 
    @pit_document.uuid = @uuid
    # TODO: cookieを生成
    if @pit_document.save
      # TODO: trueの処理
    else
      # TODO: falseの処理
    end
  end

  def show
  end

  def confirm
  end

  private

  def pit_document_params
    params.require(:pit_document).permit(:title, :image)
  end
end
