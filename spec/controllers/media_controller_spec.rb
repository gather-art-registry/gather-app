require 'rails_helper'

RSpec.describe MediaController, type: :controller do

  let(:valid_attributes) {
    FactoryGirl.attributes_for(:medium)
  }

  let(:invalid_attributes) {
    FactoryGirl.attributes_for(:medium, name: nil)
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all media as @media" do
      medium = Medium.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:media)).to eq([medium])
    end
  end

  describe "GET #show" do
    it "assigns the requested medium as @medium" do
      medium = Medium.create! valid_attributes
      get :show, {:id => medium.to_param}, valid_session
      expect(assigns(:medium)).to eq(medium)
    end
  end

  describe "GET #new" do
    it "assigns a new medium as @medium" do
      get :new, {}, valid_session
      expect(assigns(:medium)).to be_a_new(Medium)
    end
  end

  describe "GET #edit" do
    it "assigns the requested medium as @medium" do
      medium = Medium.create! valid_attributes
      get :edit, {:id => medium.to_param}, valid_session
      expect(assigns(:medium)).to eq(medium)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Medium" do
        expect {
          post :create, {:medium => valid_attributes}, valid_session
        }.to change(Medium, :count).by(1)
      end

      it "assigns a newly created medium as @medium" do
        post :create, {:medium => valid_attributes}, valid_session
        expect(assigns(:medium)).to be_a(Medium)
        expect(assigns(:medium)).to be_persisted
      end

      it "redirects to the created medium" do
        post :create, {:medium => valid_attributes}, valid_session
        expect(response).to redirect_to(Medium.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved medium as @medium" do
        post :create, {:medium => invalid_attributes}, valid_session
        expect(assigns(:medium)).to be_a_new(Medium)
      end

      it "re-renders the 'new' template" do
        post :create, {:medium => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { name: "Fabric" }
      }

      it "updates the requested medium" do
        medium = Medium.create! valid_attributes
        put :update, {:id => medium.to_param, :medium => new_attributes}, valid_session
        medium.reload
        expect(medium.name).to eq("Fabric")
      end

      it "assigns the requested medium as @medium" do
        medium = Medium.create! valid_attributes
        put :update, {:id => medium.to_param, :medium => valid_attributes}, valid_session
        expect(assigns(:medium)).to eq(medium)
      end

      it "redirects to the medium" do
        medium = Medium.create! valid_attributes
        put :update, {:id => medium.to_param, :medium => valid_attributes}, valid_session
        expect(response).to redirect_to(medium)
      end
    end

    context "with invalid params" do
      it "assigns the medium as @medium" do
        medium = Medium.create! valid_attributes
        put :update, {:id => medium.to_param, :medium => invalid_attributes}, valid_session
        expect(assigns(:medium)).to eq(medium)
      end

      it "re-renders the 'edit' template" do
        medium = Medium.create! valid_attributes
        put :update, {:id => medium.to_param, :medium => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested medium" do
      medium = Medium.create! valid_attributes
      expect {
        delete :destroy, {:id => medium.to_param}, valid_session
      }.to change(Medium, :count).by(-1)
    end

    it "redirects to the media list" do
      medium = Medium.create! valid_attributes
      delete :destroy, {:id => medium.to_param}, valid_session
      expect(response).to redirect_to(media_url)
    end
  end

end
