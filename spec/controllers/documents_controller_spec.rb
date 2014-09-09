require 'rails_helper'

RSpec.describe DocumentsController, :type => :controller do
  context "#index" do
    it "assigns documents to a variable" do
      get :index
      expect(:documents).not_to be_nil
    end
  end

  context "#create" do
    it "assigns a document to a variable" do
      post :create
      expect(:document).not_to be_nil
    end

    it "assigns a version to a variable" do
      post :create
      expect(:version).not_to be_nil
    end
  end

  context "#create" do
    it "assigns a document to a variable" do
      get :new
      expect(:document).not_to be_nil
    end

    it "assigns a version to a variable" do
      get :new
      expect(:version).not_to be_nil
    end
  end

  context "#show" do
    it "assigns a document to a variable" do
      get :show, id: "1"
      expect(:document).not_to be_nil
    end

    it "assigns a version to a variable" do
      get :show, id: "1"
      expect(:version).not_to be_nil
    end
  end

  context "#update" do
    it "assigns a document to a variable" do
      expect(:document).not_to be_nil
    end
  end

  context "#destroy" do
    it "assigns a document to a variable" do
      expect(:document).not_to be_nil
    end
  end
end





