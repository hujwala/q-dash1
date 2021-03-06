require 'rails_helper'

RSpec.describe Admin::SessionsController, :type => :controller do

  let(:user) {FactoryGirl.create(:user)}

    it "should create a session" do
      user_params = {
          email: user.email,
          password: user.password
      }
       session[:user_id] = nil
      post :create, user_params
      expect(session[:user_id]).not_to eq nil
    end

   it "should create a session" do
    session[:user_id] = user.id
    delete :destroy, :id => user.id
    expect(session[:user_id]).to eq nil
   end
   
end