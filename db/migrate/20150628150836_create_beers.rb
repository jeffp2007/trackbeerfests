class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|

      t.string :beer_name
      t.string :beer_style
      t.text :beer_description
      t.integer :beer_ibu
	  t.integer :beer_abv


      t.timestamps
    end
  end
end
