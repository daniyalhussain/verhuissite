class CreateAanvraags < ActiveRecord::Migration[5.1]
  def change
    create_table :aanvraags do |t|
      t.string :adres_a
      t.string :huisnummer_a
      t.string :plaats_a
      t.string :postcode_a
      t.string :adres_b
      t.string :huisnummer_b
      t.string :plaats_b
      t.string :postcode_b
      t.string :adres_c
      t.string :huisnummer_c
      t.string :plaats_c
      t.string :postcode_c
      t.boolean :tussenadres
      t.string :typeverhuizing
      t.string :typeinventarisatie
      t.string :typeverhuizer
      t.string :typewoning_a
      t.string :verdiepingen_a, array:true, default: [].to_yaml
      t.boolean :internelift_a
      t.string :typewoning_b
      t.string :verdiepingen_b
      t.boolean :internelift_b
      t.date :datumvan
      t.date :datumtot
      t.boolean :filled
      t.string :status
      t.string :token

      t.timestamps
    end
  end
end
