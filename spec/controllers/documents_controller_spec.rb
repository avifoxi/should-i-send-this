require 'rails_helper'

RSpec.describe DocumentsController, :type => :controller do

  before(:each) do
    login_user
  end

  context "#index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template(:index)
    end

    it "assigns documents to a variable" do
      get :index
      expect(assigns(:documents)).not_to be_nil
    end
  end

  context "#new" do
    it "assigns a document to a variable" do
      get :new
      expect(assigns(:document)).not_to be_nil
    end

    it "assigns a version to a variable" do
      get :new
      expect(assigns(:version)).not_to be_nil
    end
  end

  context "#create" do
    it "creates a document" do
      post :create, "document"=>{"title"=>"new_title", "context"=>"new_context", "version"=>{"content"=>"new_content"}, "privacy"=>"0"}
      expect(assigns(:document)).not_to be_nil
    end

    it "creates a version" do
      post :create, "document"=>{"title"=>"new_title", "context"=>"new_context", "version"=>{"content"=>"new_content"}, "privacy"=>"0"}
      expect(assigns(:version)).not_to be_nil
    end
  end

end
