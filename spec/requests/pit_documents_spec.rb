require 'rails_helper'

RSpec.describe "PitDocuments", type: :request do
  describe "GET /confirm" do
    let(:pit_document) { FactoryBot.create(:pit_document) }

    it '資料確認画面（仮）の表示に成功すること' do
      pp pit_document
      pp pit_document

      get confirm_path, params: { pit_document: pit_document }
      expect(response).to have_http_status(200)
    end
  end
end
