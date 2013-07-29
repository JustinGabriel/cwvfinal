class UsersController < ApplicationController
    before_filter :signed_in_user,
    only: [:index, :edit, :update, :destroy, :following, :followers, :bookmarking, :bookmarkers]
    before_filter :correct_user,   only: [:edit, :update]
    before_filter :admin_user,     only: :destroy
        
        
    def index
        @users = User.paginate(page: params[:page])
    @message = Message.all
          @user = current_user
      
        
    end
    
    def show
        
               @user = User.find(params[:id])
        @schools = @user.schools.paginate(page: params[:page])
        @microposts = @user.microposts.paginate(page: params[:page])
      @message = Message.new(params[:message])
         @users = @user.followers.paginate(page: params[:page])
      @similar = @user.similar.paginate(page: params[:page])
       

        if current_user?(@user)
            if @user.status.blank?
            flash.now[:success] = "You're almost there. Complete your profile and get started networking."
                 end
                 if   @user.industry.blank?
                     flash.now[:success] = "You're almost there. Complete your profile and get started networking."
                 end
                 if   @user.location.blank?
                     flash.now[:success] = "You're almost there. Complete your profile and get started networking."
        end
        end
        @micropost  = current_user.microposts.build
        @feed_items = current_user.feed.paginate(page: params[:page])
        @users_items = current_user.feed.paginate(page: params[:page])

    end
    
    def show
       redirect_to root_path
    end
    
    def new
        @user = User.new
            end
    
    def create
              @user = User.new(params[:user])
        if @user.save
            sign_in @user
            flash[:success] = "Welcome to the CampusWeaver!"
            redirect_to root_path
            else
            render 'new'
        end
    end
    
    def edit
       @user = User.find(params[:id]) 
    end
    def messages
       @user = User.find(params[:id]) 
    end
    
    def update
   
        if 
            @user.update_attributes(params[:user])
            sign_in @user
            flash[:success] = "Profile updated!"
            redirect_to @user
            else
            render 'edit'
        end
    end
    
    def account
        @user = User.find(params[:id])
         redirect_to root_path unless current_user?(@user)
    end
    
    
    def destroy
        User.find(params[:id]).destroy
        flash[:success] = "User Deleted"
        redirect_to users_path
           end
    
    
    
    def following
        @title = "Following"
        @user = User.find(params[:id])
        @users = @user.followed_users.paginate(page: params[:page])
        render 'show_follow'
    end
    
    
    
    def followers
        @title = "Followers"
        @user = User.find(params[:id])
        @users = @user.followers.paginate(page: params[:page])
        render 'show_follow'
    end
    
    def bookmarking
        @title = "Favorites"
        @user = User.find(params[:id])
        @users = @user.bookmarked_users.paginate(page: params[:page])
        render 'show_follow'
    end
    
    def bookmarkers
        @title = "Bookmarkers"
        @user = User.find(params[:id])
        @users = @user.bookmarkers.paginate(page: params[:page])
        render 'show_follow'
    end
    
       
    private
    
    def correct_user
        @user = User.find(params[:id])
        redirect_to root_path unless current_user?(@user)
    end
    
    def admin_user
        redirect_to root_path unless current_user.admin?
    end
end