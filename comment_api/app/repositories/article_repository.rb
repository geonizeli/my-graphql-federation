class ArticleRepository
  class << self
    def find(id)
      response = RestClient.get("#{ENV.fetch('ARTICLE_API_URL')}/articles/#{id}")
      article_hash = JSON.parse(response.body).with_indifferent_access
      OpenStruct.new(article_hash)
    end
  end
end