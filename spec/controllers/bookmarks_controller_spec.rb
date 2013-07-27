require 'spec_helper'

describe BookmarksController do
    
    let(:user) { FactoryGirl.create(:user) }
    let(:other_user) { FactoryGirl.create(:user) }
    
    before { sign_in user }
    
    describe "creating a bookmark with Ajax" do
        
        it "should increment the Bookmark count" do
            expect do
                xhr :post, :create, bookmark: { bookmarked_id: other_user.id }
            end.to change(Bookmark, :count).by(1)
        end
        
        it "should respond with success" do
            xhr :post, :create, bookmark: { bookmarked_id: other_user.id }
            response.should be_success
        end
    end
    
    describe "destroying a bookmark with Ajax" do
        
        before { user.bookmark!(other_user) }
        let(:bookmark) { user.bookmarks.find_by_bookmarked_id(other_user) }
        
        it "should decrement the Bookmark count" do
            expect do
                xhr :delete, :destroy, id: bookmark.id
            end.to change(Bookmark, :count).by(-1)
        end
        
        it "should respond with success" do
            xhr :delete, :destroy, id: bookmark.id
            response.should be_success
        end
    end
end
