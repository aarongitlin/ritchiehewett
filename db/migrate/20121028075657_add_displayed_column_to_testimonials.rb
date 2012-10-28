class AddDisplayedColumnToTestimonials < ActiveRecord::Migration
  def change
    add_column :refinery_testimonials, :is_displayed, :boolean
  end
end
