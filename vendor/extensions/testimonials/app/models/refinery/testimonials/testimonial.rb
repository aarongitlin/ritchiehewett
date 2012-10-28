module Refinery
  module Testimonials
    class Testimonial < Refinery::Core::BaseModel
      self.table_name = 'refinery_testimonials'

      attr_accessible :title, :area, :location, :date, :photo_id, :text, :position, :is_displayed

      acts_as_indexed :fields => [:title, :area, :location, :text]

      validates :title, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
      
      scope :displayed, where(:is_displayed => true)


	 def next
       self.class.find :first,
          :conditions => ["date > ?",self.date],
          :order => "date DESC"
      end
  
     def previous
      self.class.find :first,
          :conditions => ["date < ?",self.date],
          :order => "date DESC"
     end

    end
  end
end
