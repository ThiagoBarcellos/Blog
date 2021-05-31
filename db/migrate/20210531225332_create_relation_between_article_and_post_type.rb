class CreateRelationBetweenArticleAndPostType < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :post_type_id, :integer
  end
end
