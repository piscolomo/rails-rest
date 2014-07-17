module Api
  module V1
    class PostsController < ApplicationController

      def index
        @posts = Post.all
        render json: @posts, status: 200
      end

      def show
        @post = Post.find(params[:id])
        render json: @post, status: 200
      end

      def create
        @post = Post.new(post_params)

        if @post.save
          render json: @post, status: 201, location: api_v1_post_url(@post[:id])
        else
          render json: @post.errors, status: 422
        end
      end

      private
      
        def post_params
          params.require(:post).permit(:name)
        end
    end
  end
end