class RenameNameToNosaukumsInKategorijas < ActiveRecord::Migration[7.1]
  def change
    rename_column :kategorijas, :name, :nosaukums
  end
end
