# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Pamatlidzekli.destroy_all

nosaukums_base = "Mac Book Air 13"
razotajs_base = "Razotajs"
modelis_base = "13"
serijas_nummurs_base = "SN"
kategorija_id_base = 3 
apraksts_base = "Apple Mac Book Air 13 Portatīvais dators"
iegades_datums_base = Date.today 
garantija_base = Date.today + 2.year 
izmaksas_base = 2000.00

# Loop to create 50 records
10.times do |i|
  Pamatlidzekli.create!(
    nosaukums: "#{nosaukums_base}",
    razotajs: "#{razotajs_base}",
    modelis: "#{modelis_base}",
    serijas_nummurs: "#{serijas_nummurs_base} #{i+1}",
    kategorija_id: kategorija_id_base,
    apraksts: "#{apraksts_base}",
    iegades_datums: iegades_datums_base + i.days,
    garantija: garantija_base + i.days,
    izmaksas: izmaksas_base
  )
end