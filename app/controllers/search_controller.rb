class SearchController < ApplicationController
    def index
        @articles = Article.search(params[:term])
    end
 
    def task_params
        params.require(:task).permit(:name, :complete, :due_date, :term)
    end
end
