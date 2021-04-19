class Comment < ApplicationRecord
  def article
    ArticleRepository.find(article_id)
  end
end
