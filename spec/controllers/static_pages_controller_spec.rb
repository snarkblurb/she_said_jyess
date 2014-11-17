require 'spec_helper'

describe StaticPagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'registry'" do
    it "returns http success" do
      get 'registry'
      response.should be_success
    end
  end

  describe "GET 'events'" do
    it "returns http success" do
      get 'events'
      response.should be_success
    end
  end

  describe "GET 'rsvp'" do
    it "returns http success" do
      get 'rsvp'
      response.should be_success
    end
  end

  describe "GET 'people'" do
    it "returns http success" do
      get 'people'
      response.should be_success
    end
  end

end
