class Article < ApplicationRecord
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

    settings do
        mappings dynamic: false do
            indexes :title, type: 'text', analyzer: 'english'
            # indexes :body, type: 'text', analyzer: 'english'
        end
    end
end
