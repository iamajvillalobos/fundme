describe "Viewing an individual project" do
  it "shows the project's details" do
    project1 = Project.create(name: "Help Save Theresa C Gusek's Life",
           description: "I want to tell you how wonderful my friend, Theresa Corbin Gusek is and how we 
           need your help to insure that Theresa can continue to be an amazing mother, wife, daughter, 
           sister, friend and one of the finest first grade teachers we have. I want to say these things 
           now so I don't have to say them at her funeral in the near future. We hope you will help us 
           save her life.",
           target_pledge_amount: 100000.00,
           pledging_ends_on: 10.day.from_now,
           website: "https://www.gofundme.com/theresag")

    visit project_path(project1)

    expect(page).to have_text(project1.name)
    expect(page).to have_text(project1.description[0..9])
    expect(page).to have_text("$100,000.00")
    expect(page).to have_text(project1.pledging_ends_on)
    expect(page).to have_text(project1.website)
  end
end