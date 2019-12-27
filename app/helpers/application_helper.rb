module ApplicationHelper
  def display_flash
    flash.each do |type, msg|
      type = 'success' if type == 'notice'
      type = 'danger' if %w[alert error].include? type
      concat tag.div msg, class: "alert alert-#{type}"
    end
    nil
  end
end
