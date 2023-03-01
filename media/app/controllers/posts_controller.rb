class PostsController < ApplicationController

    def index
        @user = User.find(params[:user_id])
    end

    def new
        @user = User.find(params[:user_id])
    end 

    def create
        @user = User.find(params[:user_id])
        @post = @user.posts.create(post_params)
        redirect_to user_path(@user)
    end

    def destroy 
        @user =User.find(params[:user_id])
        @post = @user.posts.find(params[:id])
        @post.destroy

        redirect_to user_posts_path(@user), status: :see_other
    end

    def addlike
        @user =User.find(params[:user_id])
        @post = @user.posts.find(params[:id])
        @post.like = @post.like + 1
        @post.save
        redirect_to user_posts_path(@user),status: :see_other 
    end



      private
        def post_params
          params.require(:post).permit(:photo, :caption, :like)
        end
end
