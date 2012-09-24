# This migration comes from refinery_recommendations (originally 2)
class AddSlugToRecommendationsRecommendations < ActiveRecord::Migration
    def up
      add_column :refinery_recommendations, :slus, :string
    end

    def down
      remove_column :refinery_recommendations, :slug
    end
end


