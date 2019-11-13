class CreateTaxRates < ActiveRecord::Migration[5.2]
  def change
    create_table :tax_rates do |t|
      t.decimal :tax_rate, default: 1.10

      t.timestamps
    end
  end
end
