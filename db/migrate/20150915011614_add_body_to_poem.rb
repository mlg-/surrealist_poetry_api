class AddBodyToPoem < ActiveRecord::Migration
  def change
    add_column :poems, :body, :text
  end
end
