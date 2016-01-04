describe "A Project" do
  it "has expired if the pledging_ends_on date is in the past" do
    project = Project.new(pledging_ends_on: 15.days.ago)
    expect(project.expired?).to be(true)
  end

  it "has not expired if the pledging_ends_on date is in the future" do
    project = Project.new(pledging_ends_on: 15.days.from_now)
    expect(project.expired?).to be(false)
  end
end