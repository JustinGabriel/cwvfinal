require 'spec_helper'

describe Bookmark do
    let(:bookmarker) { FactoryGirl.create(:user) }
    let(:bookmarked) { FactoryGirl.create(:user) }
    let(:bookmark) { bookmarker.bookmarks.build(bookmarked_id: bookmarked.id) }
    
    subject { bookmark }
    
    it { should be_valid }
    
    describe "accessible attributes" do
        it "should not allow access to bookmarker_id" do
            expect do
                Bookmarker.new(bookmarked_id: bookmarked.id)
            end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
        end    
        describe "bookmarker methods" do
            
            it { should respond_to(:bookmarker) }
            it { should respond_to(:bookmarked) }
            its(:bookmarker) { should == bookmarker }
            its(:bookmarked) { should == bookmarked }
        end
        
        describe "when bookmarker id is not present" do
            before { bookmark.bookmarker_id = nil }
            it { should_not be_valid }
        end
        
        describe "when bookmarked id is not present" do
            before { bookmark.bookmarked_id = nil }
            it { should_not be_valid }
        end
    end