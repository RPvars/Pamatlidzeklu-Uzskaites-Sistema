class CreatePamatlidzeklis < ActiveRecord::Migration[7.1]
  def change
    create_table :pamatlidzeklis do |t|
      t.string :nosaukums
      t.string :razotajs
      t.string :modelis
      t.string :serijas_nummurs
      t.references :kategorija, null: false, foreign_key: true
      t.text :apraksts
      t.string :qr_kods
      t.date :iegades_datums
      t.date :garantija
      t.decimal :izmaksas, precision: 8, scale: 2

      t.timestamps
    end
  end
end
