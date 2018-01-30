class WelcomeController < ApplicationController
    def index
        @page_title = "Rubyblognonaise | Blog"
        @articles = Article.order('created_at DESC').limit(2)
        session[:user] = 123
    end
end
