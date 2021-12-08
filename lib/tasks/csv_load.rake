require 'csv'

namespace :csv_load do
  desc "Import items from csv file"
    task items: :environment do
      file = "data/items.csv"
      CSV.foreach(file, headers: true) do |row|
        item_hash = row.to_hash
        Item.create!(item_hash)
      end
      ActiveRecord::Base.connection.reset_pk_sequence!(:items)
    end

    task all: :environment do
      Item.destroy_all
      Rake::Task["csv_load:items"].invoke
    end
end
