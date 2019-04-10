class TweetsController < ApplicationController

   protect_from_forgery except: :destroy

  def index
    @tweets = Tweet.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create( body: tweet_params[:body], user_id: current_user.id)
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
  end

  def edit
    @tweet =Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update( body: tweet_params[:body])
  end

  private
  def tweet_params
    params.require(:tweet).permit(:body)
  end

end
