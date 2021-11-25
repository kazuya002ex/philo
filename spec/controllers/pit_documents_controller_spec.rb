require 'rails_helper'

RSpec.describe PitDocumentsController, type: :controller do
  context "#new" do
    it "リクエスト成功" do
      get :new
      expect(response.status).to eq 200
    end
  end

  xcontext "#create" do
    it "PitDocumentsレコードの作成が成功" do
    end

    it "リクエスト失敗" do
    end
  end
end