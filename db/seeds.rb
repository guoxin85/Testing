10.times { |testpost| 
  Testapp.create!(
    title: "Testpost #{testpost + 1}",
    body: "This is body texttttt"
    ) 
}

50.times { |post| 
  Post.create!(
    title: "Testpost #{post + 1}",
    summary: "This is summary texttttt"
    ) 
}