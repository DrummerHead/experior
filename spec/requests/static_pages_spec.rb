require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end

    it "should have the correct title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'La Casa')
    end
  end

  describe "Help page" do
    it "should have a monkey jumping on your face with a + sign marked in fire on its forehead, signifying the help that the user is about to get" do
      visit '/static_pages/help'
      page.should have_content('Nurse Monkey will now jump on your face. Have a nice day')
    end

    it "should have the correct title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => 'Una ayudita')
    end
  end

  describe "About page" do
    it "Should tell you the meaning of life" do
      visit '/static_pages/about'
      page.should have_content('The Purpose of Human Life is to Create, both New Knowledge and New Experiences.')
    end

    it "should have the correct title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => 'Acerca')
    end
  end
end
