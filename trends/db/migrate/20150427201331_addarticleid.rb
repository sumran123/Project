class Addarticleid < ActiveRecord::Migration
  def change
  	add_column :trends, :trendid, :integer
  end
end
