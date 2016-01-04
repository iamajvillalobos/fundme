module ProjectsHelper
  def format_pledging_date(project)
    if project.expired?
      content_tag(:strong, "All Done!")
    else
      "#{distance_of_time_in_words(Time.current, project.pledging_ends_on)} remaining"
    end
  end
end
