class ArticlesController < ApplicationController
  def index
    if params[:query].present?
      @articles = Article.search(params[:query]).records
    else
      @articles = Article.all
    end
  end
end
