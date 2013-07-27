class StaticPagesController < ApplicationController
    def home
        if signed_in?
            @micropost  = current_user.microposts.build
            @feed_items = current_user.feed.paginate(page: params[:page])
          @net_items = current_user.usernet.paginate(page: params[:page])
              @message = Message.new(params[:message])
            @user = current_user
            @schools = @user.schools.paginate(page: params[:page])
            @microposts = @user.microposts.paginate(page: params[:page])
            @connect = @user.connected.paginate(page: params[:page])
            
            else
            redirect_to "/signup"
            @users_items = current_user.feed.paginate(page: params[:page])
        end
    end
 def index
      if signed_in?
redirect_to "/home"
     end
        end
  def legal
  end
  
    
    def recruiters
    end
    
  def about
  end
    
    def contact
    end
end
