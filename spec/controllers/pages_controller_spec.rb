require 'rails_helper'
require 'spec_helper'

RSpec.describe PagesController, type: :controller do
  render_views

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

    describe "GET #helpe" do
    it "returns http success" do
      get :help
      expect(response).to have_http_status(:success)
    end
  end
end

feature "Pages" do

  before(:each) do
    @base_title = "Twitter App | "
  end

  feature "HomePage" do
    before { visit '/pages/home'}
    scenario do
      expect(page.html).to have_title(@base_title + "Home")
    end
  end

  feature "ContactPage" do
    before { visit '/pages/contact'}
    scenario do
      expect(page.html).to have_title(@base_title + "Contact")
    end
  end

  feature "AboutPage" do
    before { visit '/pages/about'}
    scenario do
      expect(page.html).to have_title(@base_title + "About")
    end
  end


  feature "HelpPage" do
    before { visit '/pages/help'}
    scenario do
      expect(page.html).to have_title(@base_title + "Help")
    end
  end
end