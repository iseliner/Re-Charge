class MakeMemories < ActiveRecord::Migration[5.2]
  def change
    create_table :memories do |t|
      t.string :title
      t.text :description, limit: 2000
    end
  end
end
