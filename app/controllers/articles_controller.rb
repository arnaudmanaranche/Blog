class ArticlesController < ApplicationController
    
    http_basic_authenticate_with name: "admin", password: "admin", except: [:index, :show]
    
    def new
        @page_title = "Écrire un nouvel article"
        @article = Article.new
        render layout: "admin"
    end
    def create
        @article = Article.new(article_params)
        if @article.save
            redirect_to articles_path,
                notice: "Article published"
        else
            render 'new', layout: "admin"
        end
    end
    def edit
        @article = Article.find(params[:id])
    end
    def update 
        @article = Article.find(params[:id])
        if @article.update(article_params)
            redirect_to @article
        else
            render 'edit'
        end
    end
    def index
        @page_title = "Liste des articles sur Forknite"
        @articles = Article.all
        @articles = Article.all.paginate(page: params[:page], per_page: 3)
    end
    def destroy
            @article = Article.find(params[:id])
            @article.destroy

            redirect_to articles_path
    end
    def show
        @page_title = 'Article sur Forknite'
        @article = Article.find(params[:id])
    end
    private
        def article_params
            params.require(:article).permit(:title, :text, :url, :id)
    end
end
