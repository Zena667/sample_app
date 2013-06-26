require 'spec_helper'

describe "Static pages" do
  
    let(:header) { "Ruby on Rails Tutorial Sample App" }

    describe 'Home page' do

        it "should have the content 'Sample App'" do
            visit '/static_pages/home'
            page.should have_content('Sample App')
         end

      it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "#{header} | Home")
      end
    end
    describe "Help page" do

        it "should have the content 'Help'" do
          visit '/static_pages/help'
          page.should have_content('Help')
        end

        it "should have the title 'Help'" do
          visit '/static_pages/help'
          page.should have_selector('title',
                            :text => "#{header} | Help")
        end
    end
    describe "About page" do

        it "should have the content 'About Us'" do
          visit '/static_pages/about'
          page.should have_content('About Us')
        end
        it "should have the title 'About Us'" do
          visit '/static_pages/about'
          page.should have_selector('title',
                        :text => "#{header} | About Us")
        end
    end
    describe "Contact page" do

        it "should have the content 'Contact'" do
          visit '/static_pages/contact'
          page.should have_content('Contact')
        end

        it "should have the title 'Contact'" do
          visit '/static_pages/contact'
          page.should have_selector('title',
                        :text => "#{header} | Contact")
        end
    end
end
