require 'rails_helper'

RSpec.describe ContentsController, type: :controller do

  let(:valid_attributes) {
    FactoryGirl.attributes_for(:content)
  }

  let(:invalid_attributes) {
    FactoryGirl.attributes_for(:content, page: nil)
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all contents as @contents" do
      content = Content.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:contents)).to eq([content])
    end
  end

  describe "GET #show" do
    it "assigns the requested content as @content" do
      content = Content.create! valid_attributes
      get :show, {:id => content.to_param}, valid_session
      expect(assigns(:content)).to eq(content)
    end
  end

  describe "GET #new" do
    it "assigns a new content as @content" do
      get :new, {}, valid_session
      expect(assigns(:content)).to be_a_new(Content)
    end
  end

  describe "GET #edit" do
    it "assigns the requested content as @content" do
      content = Content.create! valid_attributes
      get :edit, {:id => content.to_param}, valid_session
      expect(assigns(:content)).to eq(content)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Content" do
        expect {
          post :create, {:content => valid_attributes}, valid_session
        }.to change(Content, :count).by(1)
      end

      it "assigns a newly created content as @content" do
        post :create, {:content => valid_attributes}, valid_session
        expect(assigns(:content)).to be_a(Content)
        expect(assigns(:content)).to be_persisted
      end

      it "redirects to the created content" do
        post :create, {:content => valid_attributes}, valid_session
        expect(response).to redirect_to(Content.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved content as @content" do
        post :create, {:content => invalid_attributes}, valid_session
        expect(assigns(:content)).to be_a_new(Content)
      end

      it "re-renders the 'new' template" do
        post :create, {:content => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { page: "About Page" }
      }

      it "updates the requested content" do
        content = Content.create! valid_attributes
        put :update, {:id => content.to_param, :content => new_attributes}, valid_session
        content.reload
        expect(content.page).to eq("About Page")
      end

      it "assigns the requested content as @content" do
        content = Content.create! valid_attributes
        put :update, {:id => content.to_param, :content => valid_attributes}, valid_session
        expect(assigns(:content)).to eq(content)
      end

      it "redirects to the content" do
        content = Content.create! valid_attributes
        put :update, {:id => content.to_param, :content => valid_attributes}, valid_session
        expect(response).to redirect_to(content)
      end
    end

    context "with invalid params" do
      it "assigns the content as @content" do
        content = Content.create! valid_attributes
        put :update, {:id => content.to_param, :content => invalid_attributes}, valid_session
        expect(assigns(:content)).to eq(content)
      end

      it "re-renders the 'edit' template" do
        content = Content.create! valid_attributes
        put :update, {:id => content.to_param, :content => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested content" do
      content = Content.create! valid_attributes
      expect {
        delete :destroy, {:id => content.to_param}, valid_session
      }.to change(Content, :count).by(-1)
    end

    it "redirects to the contents list" do
      content = Content.create! valid_attributes
      delete :destroy, {:id => content.to_param}, valid_session
      expect(response).to redirect_to(contents_url)
    end
  end

end
