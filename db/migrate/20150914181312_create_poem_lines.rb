class CreatePoemLines < ActiveRecord::Migration
  def change
    create_table :poem_lines do |t|
      t.belongs_to :line, null: false
      t.belongs_to :poem, null: false
    end
  end
end
