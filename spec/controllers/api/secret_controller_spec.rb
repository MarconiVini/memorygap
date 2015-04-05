require "rails_helper"

RSpec.describe Api::SecretController, :type => :controller do
  describe "POST" do
    it "responds successfully with an HTTP 200 status code" do
      get :create
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end
end