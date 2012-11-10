module ApplicationHelper
def active_class?(path)
  "active_menu" if current_page?(path)
end
end
