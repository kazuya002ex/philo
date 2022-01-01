require 'rails_helper'

RSpec.describe PitDocument, type: :model do
  context 'pdfが空のとき' do
    pit_document = PitDocument.new(pdf: nil)
    pit_document.valid?

    it 'インスタンスの生成が無効になる' do
        expect(pit_document.errors.full_messages).to include('画像またはPDFを入力してください')
        expect(pit_document).to_not be_valid
    end
  end
end
