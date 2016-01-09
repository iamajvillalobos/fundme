describe "Viewing the list of projects" do
  it "shows three projects" do
    project1 = Project.create(name: "Help Save Theresa C Gusek's Life",
               description: "I want to tell you how wonderful my friend, Theresa Corbin Gusek is and how we
               need your help to insure that Theresa can continue to be an amazing mother, wife, daughter,
               sister, friend and one of the finest first grade teachers we have. I want to say these things
               now so I don't have to say them at her funeral in the near future. We hope you will help us
               save her life.",
               target_pledge_amount: 100000.00,
               pledging_ends_on: 10.day.from_now,
               website: "https://www.gofundme.com/theresag")

    project2 = Project.create(name: "Police canine purchase",
                  description: "Hello, my name is William Westbrook and my canine is Maximus. I have been a
                  Police Officer for 17 years and recently suffered an injury that may end my career that
                  I love deeply. Maximus has been with me and my family for the last three years since he
                  was a puppy. Maximus was sent to me from Czechoslovakia and trained in Police work.
                  Maximus is trained in all forms of narcotic detection, tracking, apprehension and
                  handler protection. I am with Maximus 24/7 at work and at home. I was told by my department
                  that Maximus would be taken from me and reassigned to another officer when they retire me.
                  I was given the option to purchase my best friend for 15,000. With five kids and medical
                  bills I dont have the option or means to keep Maximus in the only home he has ever known.
                  I have never done anything like this and my pride makes telling my story hard but Maximus
                  is very important to me and my family. The department will start the transition within
                  the next few weeks. Maximus and my family would appreciate any help we can get to keep
                  him where he belongs. Any extra donations would be used to purchase bulletproof vests for
                  other Police canines to keep them all safe.",
                  target_pledge_amount: 15000.00,
                  pledging_ends_on: 7.day.from_now,
                  website: "https://www.gofundme.com/savek9maximus")

    project3 = Project.create(name: "Facing Homelessness",
                  description: "When confronted with those suffering through homelessness, we
                  often find ourselves overwhelmed and left feeling at a loss for what to do.",
                  target_pledge_amount: 50000.00,
                  pledging_ends_on: 9.day.from_now,
                  website: "https://www.gofundme.com/3gct86f6")

    visit projects_url

    expect(page).to have_text("3 Projects")
    expect(page).to have_text(project1.name)
    expect(page).to have_text(project2.name)
    expect(page).to have_text(project3.name)

    expect(page).to have_text(project1.description[0..10])
    expect(page).to have_text("$100,000.00")
    expect(page).to have_text("9 days remaining")
    expect(page).to have_text(project1.website)
  end

  it "does not show projects that is no longer accepting pledges" do
    project = Project.create(project_attributes(pledging_ends_on: 3.days.ago))

    visit projects_path

    expect(page).to_not have_text(project.name)
  end
end