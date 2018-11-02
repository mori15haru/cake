class UsersController < ApplicationController
  def show
    @user = current_user
    @stats = {
      all_articles: Article.all.count,
      your_articles: current_user.articles.count,
      all_comments: Comment.all.count,
      your_comments: current_user.comments.count,
    }
  end

  def delete_all_articles
    Article.delete_all("user_id=#{user_id}")
  end

  def delete_all_comments
    # ' OR 1=1);
    @user = current_user
    Comment.delete_all("body like '%#{params[:keyword]}%' AND user_id=#{user_id}")
    @stats = {
      all_articles: Article.all.count,
      your_articles: current_user.articles.count,
      all_comments: Comment.all.count,
      your_comments: current_user.comments.count,
    }
    render 'show'
  end

  private

  def user_id
    params[:user_id] || current_user.id
  end
end
