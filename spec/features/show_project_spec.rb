describe "Viewing an individual project" do
  it "shows the project's details" do
    project1 = Project.create(project_attributes)

    visit project_path(project1)

    expect(page).to have_text(project1.name)
    expect(page).to have_text(project1.description[0..9])
    expect(page).to have_text("$100,000.00")
    expect(page).to have_text(project1.pledging_ends_on)
    expect(page).to have_text(project1.website)
  end
end