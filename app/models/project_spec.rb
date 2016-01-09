describe "A Project" do
  it "has expired if the pledging_ends_on date is in the past" do
    project = Project.new(pledging_ends_on: 15.days.ago)
    expect(project.expired?).to be(true)
  end

  it "has not expired if the pledging_ends_on date is in the future" do
    project = Project.new(pledging_ends_on: 15.days.from_now)
    expect(project.expired?).to be(false)
  end

  it "is ongoing if the pledging_ends_on date is date is in the future" do
    project = Project.create(pledging_ends_on: 15.days.from_now)
    expect(Project.ongoing).to include(project)
  end

  it "is not ongoing if the pledging_ends_on date is date is in the pass" do
    project = Project.create(pledging_ends_on: 15.days.ago)
    expect(Project.ongoing).not_to include(project)
  end
end