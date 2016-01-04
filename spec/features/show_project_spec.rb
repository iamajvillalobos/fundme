describe "Viewing an individual project" do
  it "shows the project's details" do
    project = Project.create(project_attributes)

    visit project_path(project)

    expect(page).to have_text(project.name)
    expect(page).to have_text(project.description[0..9])
    expect(page).to have_text("$100,000.00")
    expect(page).to have_text(project.website)
  end

  it "shows the number of days remaining if the pledging end date is in the future" do
    project = Project.create(project_attributes(pledging_ends_on: 15.day.from_now))

    visit project_path(project)

    expect(page).to have_text("14 days remaining")
  end

  it "shows 'All Done! if the pledging end date is in the past" do
    project = Project.create(project_attributes(pledging_ends_on: 15.days.ago))

    visit project_path(project)

    expect(page).to have_text("All Done!")
  end
end