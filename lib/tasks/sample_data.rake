# encoding: UTF-8

namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    unidades = ['quilograma', 'litro', 'unitário', 'grama', 'galão', 'arroba', 'metro', 'tonelada', 'dúzia']
    unidades.each do |unidade|
      Unit.create!(name: unidade)
    end

    fazendas = ['Fazenda Mundo Novo', 'Fazenda Jordão', 'Fazenda Aquário', 'Fazenda Barreirão']
    fazendas.each do |fazenda|
      StorageLocation.create!(name: fazenda)
    end

    100.times do |n|
      Material.create!(name: Forgery(:name).full_name, unit_id: rand(9)+1)
    end
  end
end