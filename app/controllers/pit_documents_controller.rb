class PitDocumentsController < ApplicationController
  before_action :set_confirm_pit_document, only: %i(confirm)
  before_action :set_uuid, only: %i(create)

  def new
  end

  def create
    @pit_document = PitDocument.new(pit_document_params)
    @pit_document.uuid = cookies[:document_uuid]
    if @pit_document.save
      redirect_to new_pit_document_path
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

  def set_uuid
    cookies[:document_uuid] = SecureRandom.uuid
  end
end
