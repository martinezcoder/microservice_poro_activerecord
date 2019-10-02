describe Pet do
  it "works" do
    expect {
      Pet.create!(name: "gato")
    }.to change { Pet.count }.by(1)
  end
end
