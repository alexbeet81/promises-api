require "rails_helper"

RSpec.describe "Promise Lists", type: :request do
  describe "GET /index" do
    # before do
    #   FactoryBot.create_list(:user, 3)
    #   post "/users/sign_up"
    # end

    before do
      FactoryBot.create_list(:promise_list, 3)
      get "/api/v1/promise_lists"
    end

    it "returns all promise lists" do
      expect(json.size).to eq(3)
    end

    it "returns status code 200" do
      p response
      expect(response).to have_http_status(:success)
    end
  end
end
