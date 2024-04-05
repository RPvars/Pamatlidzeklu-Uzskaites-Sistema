class CreateKategorijas < ActiveRecord::Migration[7.1]
  def change
    create_table :kategorijas do |t|
      t.string :name
      t.text :apraksts

      t.timestamps
    end
  end
end
