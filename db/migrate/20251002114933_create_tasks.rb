class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :titulo
      t.string :descricao
      t.boolean :status

      t.timestamps
    end
  end
end
