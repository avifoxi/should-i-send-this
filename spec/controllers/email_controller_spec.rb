require 'rails_helper'

RSpec.describe EmailController, :type => :controller do
  before(:each) do
    login_user
  end

  context "#create" do
    it "sends an email" do
      post :create, {sender: "a@a.com", subject: "subject", "stripped-text" => "body"}
      expect(response.status).to eq(200)
    end
  end
end
