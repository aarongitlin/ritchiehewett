module ApplicationHelper
  def pageless(total_pages, url=nil, container=nil)
    opts = {
      :totalPages => total_pages,
      :url => '/testimonials/',
      # :loaderMsg => 'Loading more results',
      :loaderImage => image_path("loading.gif")
    }
    
    container && opts[:container] ||= container
    
    javascript_tag("$(document).ready(function() { 
                      $('#testimonials').pageless( #{opts.to_json}
                      );
                    });")
  end
end