module ApplicationHelper
  def display_duration(report)
    "#{report.hours}:#{"%02d" % report.minutes}"
  end
end
