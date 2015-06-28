class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|

      t.string :brewery_name
      t.string :brewery_address
      t.string :brewery_city
      t.string :brewery_state
      t.string :brewery_zip
      t.string :brewery_country

      t.string :brewery_description
      t.string :brewery_website
      t.string :brewery_twitter
      t.string :brewery_facebook

      t.timestamps
    end
  end
end
