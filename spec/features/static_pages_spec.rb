require 'spec_helper'

describe "Static pages" do
    
    subject { page }
    
    describe "Home page" do
        before { visit root_path }
        
        it { should have_selector('h1', text: 'Sample App') }
        it { should have_selector('title', text: full_title('')) }
        it { should_not have_selector('title', text: '| Home') }
        
        describe "for signed-in users" do
            let(:user) { FactoryGirl.create(:user) }
            before do
                FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
                FactoryGirl.create(:micropost, user: user, content: "Dolor sit amet")
                sign_in user
                visit root_path
            end
            
            it "should render the user's feed" do
                user.feed.each do |item|
                    page.should have_selector("li##{item.id}", text: item.content)
                end
            end
            
            describe "follower/following counts" do
                let(:other_user) { FactoryGirl.create(:user) }
                before do
                    other_user.follow!(user)
                    visit root_path
                end
                
                it { should have_link("0 following", href: following_user_path(user)) }
                it { should have_link("1 followers", href: followers_user_path(user)) }
            end
        end
    end
    
    describe "bookmarker/bookmarking counts" do
        let(:other_user) { FactoryGirl.create(:user) }
        before do
            other_user.bookmark!(user)
            visit root_path
        end
        
        it { should have_link("0 bookmarked", href: bookmarking_user_path(user)) }
        it { should have_link("1 bookmarkers", href: bookmarkers_user_path(user)) }
    end
end
end

    describe "Legal page" do
        before { visit legal_path }
        
        it { should have_selector('h1', text: 'Legal') }
        it { should have_selector('title', text: full_title('Legal')) }
    end
describe "Welcome page" do
    before { visit welcome_path }
    
    it { should have_selector('h1', text: 'welcome') }
    it { should have_selector('title', text: full_title('welcome')) }
end

    describe "Recruiters page" do
        before { visit recruiters_path }
        
        it { should have_selector('h1', text: 'Recruiters') }
        it { should have_selector('title', text: full_title('Recruiters')) }
    end

    
    describe "About page" do
        before { visit about_path }
        
        it { should have_selector('h1', text: 'About Us') }
        
        it { should have_selector('title', text: full_title('About Us')) }
    end
    
    describe "Contact page" do
        before { visit contact_path }
        
        it { should have_selector('h1', text: 'Contact') }
        it { should have_selector('title', text: full_title('Contact')) }
    end
    
    it "should have the right links on the layout" do
        visit root_path
        click_link "Sign in"
        page.should have_selector 'title', text: full_title('Sign in')
        click_link "About"
        page.should have_selector 'title', text: full_title('About Us')
        click_link "Welcome"
        page.should have_selector 'title', text: full_title('Welcome')

        click_link "Legal"
        page.should have_selector 'title', text: full_title('Legal')
        click_link "Recruiters"
        page.should have_selector 'title', text: full_title('Recruiters')
        click_link "Contact"
        page.should have_selector 'title', text: full_title('Contact')
        click_link "Home"
        click_link "Sign up now!"
        page.should have_selector 'title', text: full_title('Sign up')
       
    end
end