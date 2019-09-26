class CreateTablePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
    end
  end
end
