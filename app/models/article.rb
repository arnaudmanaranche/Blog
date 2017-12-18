class Article < ApplicationRecord
	def self.search(term)
    if term
      where('title LIKE ?', "%#{term}%").order('id DESC')
    else
      all
    end
  end
  
	has_many :comments, dependent: :destroy
    validates   :title, presence: true, 
                length: { minimum: 5 }
end
