class AddIndexToPosts < ActiveRecord::Migration[8.0]
  def change
    add_index :posts, [ :status, :view_count ], order: { view_count: :desc }
  end
end
