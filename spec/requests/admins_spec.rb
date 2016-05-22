require 'rails_helper'

RSpec.describe "Admins", :type => :request do
  describe "GET /admins" do
    it "works! (now write some real specs)" do
      get admins_path
      expect(response.status).to be(200)
    end
  end
end
