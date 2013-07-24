require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
    it "should have the content  'fandom'" do
            visit '/static_pages/home'
      page.should have_content('trandom')

     
    end
  end

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
  end
  
  it "should have the right title" do
  visit '/static_pages/about'
  page.should have_selector('title',
                    :text => "About")
end
end

