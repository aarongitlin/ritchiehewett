module Refinery
  module Testimonials
    class TestimonialsController < ::ApplicationController

      before_filter :find_all_testimonials
      before_filter :find_page

      def index
        @testimonials = Testimonial.paginate(:page => params[:page], :per_page => 2, :order => 'date DESC')
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @testimonial in the line below:
        if request.xhr?
          sleep(3)
          render :partial => @testimonials
        end
        present(@page)
      end

      def show
        @testimonial = Testimonial.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @testimonial in the line below:
        present(@page)
      end

    protected

      def find_all_testimonials
        @testimonials = Testimonial.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/testimonials").first
      end

    end
  end
end
