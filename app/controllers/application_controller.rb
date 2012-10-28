class ApplicationController < ActionController::Base
  protect_from_forgery

 before_filter :load_testimonials

  def load_testimonials
    @testimonials = Refinery::Testimonials::Testimonial.displayed
  end


end
