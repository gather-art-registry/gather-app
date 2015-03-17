require 'rails_helper'

RSpec.describe RegistriesController, type: :controller do

  before(:each) do
    @user = FactoryGirl.create(:user)
  end

  let(:valid_attributes) {
    FactoryGirl.attributes_for(:registry, user_id: @user.id)
  }

  let(:invalid_attributes) {
    FactoryGirl.attributes_for(:registry, type_of_event: nil, user_id: @user.id)
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all registries as @registries" do
      registry = Registry.create! valid_attributes
      get :index, {user_id: @user.id}, valid_session
      expect(assigns(:registries)).to eq([registry])
    end
  end

  describe "GET #show" do
    it "assigns the requested registry as @registry" do
      registry = Registry.create! valid_attributes
      get :show, {user_id: @user.id, :id => registry.to_param}, valid_session
      expect(assigns(:registry)).to eq(registry)
    end
  end

  describe "GET #new" do
    it "assigns a new registry as @registry" do
      get :new, {user_id: @user.id}, valid_session
      expect(assigns(:registry)).to be_a_new(Registry)
    end
  end

  describe "GET #edit" do
    it "assigns the requested registry as @registry" do
      registry = Registry.create! valid_attributes
      get :edit, {user_id: @user.id, :id => registry.to_param}, valid_session
      expect(assigns(:registry)).to eq(registry)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Registry" do
        expect {
          post :create, {:registry => valid_attributes, user_id: @user.id}, valid_session
        }.to change(Registry, :count).by(1)
      end

      it "assigns a newly created registry as @registry" do
        post :create, {user_id: @user.id, :registry => valid_attributes}, valid_session
        expect(assigns(:registry)).to be_a(Registry)
        expect(assigns(:registry)).to be_persisted
      end

      it "redirects to the created registry" do
        post :create, {user_id: @user.id, :registry => valid_attributes}, valid_session
        expect(response).to redirect_to(Registry.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved registry as @registry" do
        post :create, {user_id: @user.id, :registry => invalid_attributes}, valid_session
        expect(assigns(:registry)).to be_a_new(Registry)
      end

      it "re-renders the 'new' template" do
        post :create, {user_id: @user.id, :registry => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { type_of_event: "Wedding"}
      }

      it "updates the requested registry" do
        registry = Registry.create! valid_attributes
        put :update, {user_id: @user.id, :id => registry.to_param, :registry => new_attributes}, valid_session
        registry.reload
        expect(registry.type_of_event).to eq("Wedding")
      end

      it "assigns the requested registry as @registry" do
        registry = Registry.create! valid_attributes
        put :update, {user_id: @user.id, :id => registry.to_param, :registry => valid_attributes}, valid_session
        expect(assigns(:registry)).to eq(registry)
      end

      it "redirects to the registry" do
        registry = Registry.create! valid_attributes
        put :update, {user_id: @user.id, :id => registry.to_param, :registry => valid_attributes}, valid_session
        expect(response).to redirect_to(registry)
      end
    end

    context "with invalid params" do
      it "assigns the registry as @registry" do
        registry = Registry.create! valid_attributes
        put :update, {user_id: @user.id, :id => registry.to_param, :registry => invalid_attributes}, valid_session
        expect(assigns(:registry)).to eq(registry)
      end

      it "re-renders the 'edit' template" do
        registry = Registry.create! valid_attributes
        put :update, {user_id: @user.id, :id => registry.to_param, :registry => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested registry" do
      registry = Registry.create! valid_attributes
      expect {
        delete :destroy, {user_id: @user.id, :id => registry.to_param}, valid_session
      }.to change(Registry, :count).by(-1)
    end

    it "redirects to the registries list" do
      registry = Registry.create! valid_attributes
      delete :destroy, {user_id: @user.id, :id => registry.to_param}, valid_session
      expect(response).to redirect_to(registries_url)
    end
  end

end
