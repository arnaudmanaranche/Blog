class CommentsController < ApplicationController
    
    http_basic_authenticate_with name: "admin", password: "admin", only: [:destroy, :edit]
    
    def create
      @article = Article.find(params[:article_id])
      @comment = @article.comments.create(comment_params)
      redirect_to article_path(@article)
    end

    def destroy
      @article = Article.find(params[:article_id])
      @comment = @article.comments.find(params[:id])
      @comment.destroy
      redirect_to article_path(@article)
    end

    def edit
      @article = Article.find(params[:article_id])
      @comment = @article.comments.find(params[:id])
    end

    def update
      @comment = Comment.find(params[:id])
      @article = Article.find(params[:article_id])
      if @comment.update(comment_params)
        redirect_to article_path(@article)
      else
        render 'edit'
      end
    end

    private
      def comment_params
        params.require(:comment).permit(:commenter, :body)
      end
  end