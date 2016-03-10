#
# class ArticlesController < ApplicationController
#     def new
#         @article = Article.new
#     end
#
#     def create
#         # render plain: params[:article].inspect
#         @article = Article.new(article_params)
#         @article.save
#     end
#
#     private
#
#     def article_params
#         params.require(:article).permit(:title, :description)
#         # code
#     end
# end

class ArticlesController <ApplicationController
    def new
        @article = Article.new
    end
    def create
        @article = Article.new(require_params)
        @article.save
        redirect_to articles_show(@article)

    end
    private
    def require_params
        params.require(:article).permit(:title,:description)
    end
end
