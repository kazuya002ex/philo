class PitDocumentsController < ApplicationController
  before_action :set_confirm_pit_document, only: %i(confirm)

  def new
  end

  def create
    @pit_document = PitDocument.new(pit_document_params)
    @uuid = SecureRandom.uuid
    @pit_document.uuid = @uuid
    cookies[:document_uuid] = @uuid
    pp cookies[:document_uuid]
    if @pit_document.save
      # TODO: 仮のリダイレクト
      redirect_to confirm_path
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

  def set_confirm_pit_document
    pit_document_uuid = cookies[:document_uuid]
    @pit_document = PitDocument.find_by(uuid: pit_document_uuid)
  end
end
