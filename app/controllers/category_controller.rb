class CategoryController < ApplicationController

  layout "blog"

  def index
    #每页显示数量
    @limit = 10
    #获取该分类下的文字总数
    @count = Category.find_by(:category => params[:category]).articles.count
    #偏移量
    @offset = 0
    if params[:page] != nil
      @offset = @limit*(params[:page].to_i - 1) .to_i
    end
    #获取该分类下的所有文章
    @articles = Category.find_by(:category => params[:category]).articles.limit(@limit).offset(@offset).order("created_at DESC")
  end
end