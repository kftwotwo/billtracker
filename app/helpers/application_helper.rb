module ApplicationHelper
  def flash_class(level)
    case level.to_sym
    when :success
      "ui green message"
    when :alert
      "ui red message"
    when :notice
      "ui blue message"
    end
  end
end
