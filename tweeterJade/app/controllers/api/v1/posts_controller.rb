class Api::V1::PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts.as_json(include:[:comments])
  end
end
