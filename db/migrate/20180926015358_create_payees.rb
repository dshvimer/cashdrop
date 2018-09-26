class CreatePayees < ActiveRecord::Migration[5.2]
  def change
    create_table :payees do |t|
      t.references :user
      t.string :stripe_id

      t.timestamps
    end
  end
end
