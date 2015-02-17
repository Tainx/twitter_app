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
end

feature "HomePage" do
  before { visit '/pages/home'}
  scenario do
    expect(page.html).to have_title("Twitter App | Home")
  end
end

feature "ContactPage" do
  before { visit '/pages/contact'}
  scenario do
    expect(page.html).to have_title("Twitter App | Contact")
  end
end

feature "AboutPage" do
  before { visit '/pages/about'}
  scenario do
    expect(page.html).to have_title("Twitter App | About")
  end
end