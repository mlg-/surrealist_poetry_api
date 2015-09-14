class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.string :title
    end
  end
end
