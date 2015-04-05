require "rails_helper"

RSpec.describe Api::SecretController, :type => :controller do
  describe "without user API authentication" do

    let(:user) { FactoryGirl.create(:user) }

    it "responds successfully with an HTTP 401 status code" do
      sign_in user
      post :create, { purchase: user.api_token }
      expect(response).to be_success
      binding.pry
      expect(response).to have_http_status(401)
    end
  end
end