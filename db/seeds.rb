Project.delete_all

Project.create!([
  {
    name: "A Gay Ol' Time",
    description: "An anthology of illustrated portraits and short biographical poems of American LGBTQIA and Two-Spirit people born in the 1800s.",
    target_pledge_amount: 2950,
    pledging_ends_on: 3.days.from_now,
    website: "https://www.kickstarter.com/projects/1056477701/a-gay-ol-time?ref=discover_potd"
  },

  {
    name: "Revelation Ale Works - Bringing craft beer to Hallock!",
    description: "Be a Founder of our Northwest Minnesota craft brewery, Revelation Ale Works, launching in Hallock mid-2016!",
    target_pledge_amount: 15000,
    pledging_ends_on: 4.days.ago,
    website: "https://www.kickstarter.com/projects/revales/revelation-ale-works-bringing-craft-beer-to-halloc?ref=recommended"
  },

  {
    name: "Revols - Premium Quick Custom-Fit Wireless Earphones",
    description: "Bluetooth earphones with tips that mold to the unique shape of your ears in 60 seconds. Unparalleled fit, comfort, sound and features.",
    target_pledge_amount: 100000,
    pledging_ends_on: 15.days.from_now,
    website: "https://www.kickstarter.com/projects/revols/revols-premium-quick-custom-fit-wireless-earphones?ref=popular"
  }
])