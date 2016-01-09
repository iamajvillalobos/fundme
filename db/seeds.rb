Project.delete_all
Project.create!([
  {
    name: "New Hexoskin Smart: World's Leading Smart Shirt",
    description: "The best smart shirt on the market now connects
    to apps like Runkeeper & Strava!",
    "target_pledge_amount": 50000,
    "pledging_ends_on": 46.days.from_now,
    "website": "https://www.indiegogo.com/projects/new-hexoskin-smart-world-s-leading-smart-shirt#/",
    "team_members": "Hexoskin Wearable Body Metrics, Francois Gauthier,
    Teneisha Collins, Julie St-Jean, Thomas Merlin",
    "image_file_name": "hexo_skin.png"
  },
  {
    name: "mJoose: More Bars in More Places, 2x Battery Life",
    description: "The first smartphone case that improves cell signals by 100x,
    2x battery life, and 2x faster charge!",
    "target_pledge_amount": 15000,
    "pledging_ends_on": 5.days.from_now,
    "website": "https://www.indiegogo.com/projects/mjoose-more-bars-in-more-places-2x-battery-life#/",
    "team_members": "Daniel Ash, Ruth Doering, Christine Schumacher",
    "image_file_name": "mjoose.png"
  },
  {
    name: "Hydrate Mate",
    description: "The Electronic Fuel Gauge For Your Hydration Pack. Never
    run out of water again",
    "target_pledge_amount": 17424.60,
    "pledging_ends_on": 45.days.from_now,
    "website": "https://www.indiegogo.com/projects/hydrate-mate#/",
    "team_members": "Andrew Saville",
    "image_file_name": "hydrate_master.png"
  },

])