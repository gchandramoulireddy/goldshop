class CreateInvoices < ActiveRecord::Migration
  def self.up
    create_table :invoices do |t|
      t.string :name
      t.text :address
      t.decimal :grams, :decimal,:precision => 10, :scale => 2
      t.decimal :wastage, :decimal,:precision => 10, :scale => 2
      t.decimal :gram_amt, :decimal,:precision => 10, :scale => 2
      t.decimal :discount, :decimal,:precision => 10, :scale => 2
      t.decimal :total, :decimal,:precision => 10, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :invoices
  end
end
