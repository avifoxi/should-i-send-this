require 'rails_helper'

RSpec.describe DocumentsController, :type => :controller do
  context "#index" do
    it "assigns documents to a variable" do
      get :index
      expect(assigns(:documents)).not_to be_nil
    end
  end
end
