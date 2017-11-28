class WelcomeController < ApplicationController
    def index
        @page_title = "Bienvenue sur Forknite"
        @meta_description = "Fortnite Battle Royale est le mode JcJ à 100 joueurs de Fortnite, jouable totalement gratuitement. Une carte géante. Un bus de combat. Tout le système de construction de Fortnite, combiné à des batailles ultraintenses en JcJ. Le dernier survivant est le vainqueur. Disponible sur PC, PlayStation 4, Xbox One et Mac."
        @articles = Article.order('created_at DESC').limit(2)
    end
end
