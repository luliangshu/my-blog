class ArticleController < ApplicationController
  respond_to :rss, only: :index
  layout "blog"

  def index
    #每页显示数量
    @limit = 10
    #文章总数
    @count = Article.count
    #偏移量
    @offset = 0
    if params[:page] != nil
      @offset = @limit*(params[:page].to_i - 1) .to_i
    end
    #获取文章列表
    @articles = Article.order("created_at DESC").limit(@limit).offset(@offset)
  end

  def show
    @article = Article.find(params[:id])
    @article.update_attributes(:vistor => (@article.vistor + 1))
  end
end 