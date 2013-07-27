class BookmarksController < ApplicationController
    before_filter :signed_in_user
    def create
        @user = User.find(params[:bookmark][:bookmarked_id])
        current_user.bookmark!(@user)
        respond_to do |format|
            format.html { redirect_to @user }
            format.js
        end
    end
    def destroy
        @user = Bookmark.find(params[:id]).bookmarked
        current_user.unbookmark!(@user)
        respond_to do |format|
            format.html { redirect_to @user }
            format.js
        end
    end
end
