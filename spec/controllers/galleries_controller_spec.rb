require 'rails_helper'

RSpec.describe GalleriesController, type: :controller do

  let(:valid_attributes) {
    FactoryGirl.attributes_for(:gallery)
  }

  let(:invalid_attributes) {
    FactoryGirl.attributes_for(:gallery, name: nil)
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all galleries as @galleries" do
      gallery = Gallery.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:galleries)).to eq([gallery])
    end
  end

  describe "GET #show" do
    it "assigns the requested gallery as @gallery" do
      gallery = Gallery.create! valid_attributes
      get :show, {:id => gallery.to_param}, valid_session
      expect(assigns(:gallery)).to eq(gallery)
    end
  end

  describe "GET #new" do
    it "assigns a new gallery as @gallery" do
      get :new, {}, valid_session
      expect(assigns(:gallery)).to be_a_new(Gallery)
    end
  end

  describe "GET #edit" do
    it "assigns the requested gallery as @gallery" do
      gallery = Gallery.create! valid_attributes
      get :edit, {:id => gallery.to_param}, valid_session
      expect(assigns(:gallery)).to eq(gallery)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Gallery" do
        expect {
          post :create, {:gallery => valid_attributes}, valid_session
        }.to change(Gallery, :count).by(1)
      end

      it "assigns a newly created gallery as @gallery" do
        post :create, {:gallery => valid_attributes}, valid_session
        expect(assigns(:gallery)).to be_a(Gallery)
        expect(assigns(:gallery)).to be_persisted
      end

      it "redirects to the created gallery" do
        post :create, {:gallery => valid_attributes}, valid_session
        expect(response).to redirect_to(Gallery.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved gallery as @gallery" do
        post :create, {:gallery => invalid_attributes}, valid_session
        expect(assigns(:gallery)).to be_a_new(Gallery)
      end

      it "re-renders the 'new' template" do
        post :create, {:gallery => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { description: "A new description"}
      }

      it "updates the requested gallery" do
        gallery = Gallery.create! valid_attributes
        put :update, {:id => gallery.to_param, :gallery => new_attributes}, valid_session
        gallery.reload
        expect(gallery.description).to eq("A new description")
      end

      it "assigns the requested gallery as @gallery" do
        gallery = Gallery.create! valid_attributes
        put :update, {:id => gallery.to_param, :gallery => valid_attributes}, valid_session
        expect(assigns(:gallery)).to eq(gallery)
      end

      it "redirects to the gallery" do
        gallery = Gallery.create! valid_attributes
        put :update, {:id => gallery.to_param, :gallery => valid_attributes}, valid_session
        expect(response).to redirect_to(gallery)
      end
    end

    context "with invalid params" do
      it "assigns the gallery as @gallery" do
        gallery = Gallery.create! valid_attributes
        put :update, {:id => gallery.to_param, :gallery => invalid_attributes}, valid_session
        expect(assigns(:gallery)).to eq(gallery)
      end

      it "re-renders the 'edit' template" do
        gallery = Gallery.create! valid_attributes
        put :update, {:id => gallery.to_param, :gallery => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested gallery" do
      gallery = Gallery.create! valid_attributes
      expect {
        delete :destroy, {:id => gallery.to_param}, valid_session
      }.to change(Gallery, :count).by(-1)
    end

    it "redirects to the galleries list" do
      gallery = Gallery.create! valid_attributes
      delete :destroy, {:id => gallery.to_param}, valid_session
      expect(response).to redirect_to(galleries_url)
    end
  end

end
