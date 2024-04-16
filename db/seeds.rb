
# Pamatlidzekli.destroy_all

unless User.where(role: 'admin').present?
  User.create!(email: 'admin@admin.lv', password: 'password', password_confirmation: 'password', role: 'admin')
end

unless Kategorija.any?
  Kategorija.create!(
    nosaukums: "Laptops"
  )
end

# Loop to create 50 records
unless Pamatlidzekli.present?
  nosaukums_base = "Mac Book Air 13"
  razotajs_base = "Apple"
  modelis_base = "13"
  serijas_nummurs_base = "SN"
  kategorija_id_base = Kategorija.sample
  apraksts_base = "Apple Mac Book Air 13 Portatīvais dators"
  iegades_datums_base = Date.today 
  garantija_base = Date.today + 2.year 
  izmaksas_base = 2000.00

  50.times do |i|
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


  nosaukums_phone_base = "iPhone 13"
  razotajs_phone_base = "Apple"
  modelis_phone_base = "13"
  serijas_nummurs_phone_base = "IP"
  kategorija_id_phone_base = 2 
  apraksts_phone_base = "Apple iPhone 13 Smartphone"
  iegades_datums_phone_base = Date.today
  garantija_phone_base = Date.today + 1.year
  izmaksas_phone_base = 1200.00


  20.times do |i|
    Pamatlidzekli.create!(
      nosaukums: "#{nosaukums_phone_base}",
      razotajs: "#{razotajs_phone_base}",
      modelis: "#{modelis_phone_base}",
      serijas_nummurs: "#{serijas_nummurs_phone_base} #{i+1}",
      kategorija_id: kategorija_id_phone_base,
      apraksts: "#{apraksts_phone_base}",
      iegades_datums: iegades_datums_phone_base + i.days,
      garantija: garantija_phone_base + i.days,
      izmaksas: izmaksas_phone_base
    )
  end

  nosaukums_table_base = "Office Table"
  razotajs_table_base = "Furniture Co."
  modelis_table_base = "Standard"
  serijas_nummurs_table_base = "TA"
  kategorija_id_table_base = 4
  apraksts_table_base = "Standard Office Table"
  iegades_datums_table_base = Date.today
  garantija_table_base = Date.today + 3.years 
  izmaksas_table_base = 300.00

  # Loop to create 50 office table records
  10.times do |i|
    Pamatlidzekli.create!(
      nosaukums: "#{nosaukums_table_base}",
      razotajs: "#{razotajs_table_base}",
      modelis: "#{modelis_table_base}",
      serijas_nummurs: "#{serijas_nummurs_table_base} #{i+1}",
      kategorija_id: kategorija_id_table_base,
      apraksts: "#{apraksts_table_base}",
      iegades_datums: iegades_datums_table_base + i.days,
      garantija: garantija_table_base + i.days,
      izmaksas: izmaksas_table_base
    )
  end
end
