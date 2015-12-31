describe "Navigating projects" do
  it "allows navigation from the details page to the listing page" do
    project1 = Project.create(project_attributes)

    visit project_path(project1)
    click_link "All Projects"

    expect(current_path).to eq(projects_path)
  end

  it "allow navigation from the listing page to the details page" do
    project1 = Project.create(project_attributes)

    visit projects_path
    click_link project1.name

    expect(current_path).to eq(project_path(project1))
  end  
end