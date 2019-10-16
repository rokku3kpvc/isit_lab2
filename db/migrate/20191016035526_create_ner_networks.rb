class CreateNerNetworks < ActiveRecord::Migration[5.2]
  def change
    create_table :ner_networks do |t|
      t.string :input, null: false, limit: 15
      t.boolean :result, null: false

      t.timestamps
    end
  end
end
