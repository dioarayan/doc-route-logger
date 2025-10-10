require 'rails_helper'

RSpec.describe "Pages", type: :request do
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  describe "GET /home" do
    it "returns http success" do
      get "/home"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /dashboard" do
    it "returns http success" do
      get "/dashboard"
      Document.create! valid_attributes
      get documents_url
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /my_logs" do
    it "returns http success" do
      get "/my_logs" 
      get new_document_url
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /about" do
    it "returns http success" do
      get "/about"
      expect(response).to have_http_status(:success)
    end
  end

end
