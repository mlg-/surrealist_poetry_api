class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :content, null: false
    end
  end
end
