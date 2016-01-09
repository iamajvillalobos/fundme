describe "Creating a new project" do
  it "saves the project and shows the new project details" do
    visit projects_url
    click_link 'Add Project'
    expect(current_path).to eq(new_project_path)

    fill_in 'Name', with: 'New Project Name'
    fill_in 'Description', with: 'New project description'
    fill_in 'Target pledge amount', with: '50000'
    fill_in 'Pledging ends on', with: (Time.now + 1).to_s
    fill_in 'Website', with: 'http://example.com'
    fill_in 'Team members', with: 'team members'
    fill_in "Image file name", with: "project.png"

    click_button 'Create Project'
    expect(current_path).to eq(project_path(Project.last))
    expect(page).to have_text('New Project Name')
  end
end