class PitDocumentsController < ApplicationController
  before_action :set_confirm_pit_document, only: %i(new)
  before_action :set_uuid, only: %i(create)

  def new
  end

  def create
    @pit_document = PitDocument.new(pit_document_params)
    @pit_document.uuid = cookies[:document_uuid]

    if @pit_document.save!
      redirect_to new_pit_document_path
    else
      redirect_to root_path
    end
  end

  def show
  end

  private

  def pit_document_params
    params.require(:pit_document).permit(:title, :pdf, :picture)
  end

  def set_confirm_pit_document
    pit_document_uuid = cookies[:document_uuid]
    @pit_document = PitDocument.find_by(uuid: pit_document_uuid)
  end

  def set_uuid
    cookies[:document_uuid] = SecureRandom.uuid
  end

  def convert_pdf_to_png(file_name)
    pit_document_image = PitDocument.find_by(image: file_name)
    images = Magick::Image.read(pit_document_image)
    file_name.delete!('.pdf')

    pp images[0]

    # images[0].write(file_name + ".png")
  end
end
