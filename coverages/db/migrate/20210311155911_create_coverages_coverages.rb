class CreateCoveragesCoverages < ActiveRecord::Migration[5.2]
  def change
    create_table :coverages_coverages do |t|
      t.string :title

      t.timestamps
    end
  end
end
