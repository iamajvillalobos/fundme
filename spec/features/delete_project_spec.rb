describe "Deleting a project" do
  it "destroys the project and show the project listing without the deleted project" do
    project = Project.create(project_attributes)

    visit project_path(project)
    click_link 'Delete'

    expect(current_path).to eq(projects_path)
    expect(page).to_not have_text(project.name)
  end
end