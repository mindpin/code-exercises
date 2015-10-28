require File.expand_path("../test", __FILE__)

RSpec.describe "test 6" do
  it "adbc abc cda" do
    str = "adbc abc cda"
    res = [
      {:name => "a", :count => 3, :index => [0, 5, 11]},
      {:name => "d", :count => 2, :index => [1, 10]},
      {:name => "b", :count => 2, :index => [2, 6]},
      {:name => "c", :count => 3, :index => [3, 7, 9]},
      {:name => " ", :count => 2, :index => [4, 8]}
    ]
    expect(run(str)).to eq(res)
  end

  it "expect(run(str)).to eq(res)" do
    str = "expect(run(str)).to eq(res)"
    res = [
      {:name => "e", :count => 1, :index => [0, 3, 20, 24]},
      {:name => "x", :count => 1, :index => [1]},
      {:name => "p", :count => 1, :index => [2]},
      {:name => "c", :count => 1, :index => [4]},
      {:name => "t", :count => 1, :index => [5, 12, 17]},
      {:name => "(", :count => 1, :index => [6, 10, 22]},
      {:name => "r", :count => 1, :index => [7, 13, 23]},
      {:name => "u", :count => 1, :index => [8]},
      {:name => "n", :count => 1, :index => [9]},
      {:name => "s", :count => 1, :index => [11, 25]},
      {:name => ")", :count => 1, :index => [14, 15, 26]},
      {:name => ".", :count => 1, :index => [16]},
      {:name => "o", :count => 1, :index => [18]},
      {:name => " ", :count => 1, :index => [19]},
      {:name => "q", :count => 1, :index => [21]}
    ]
    expect(run(str)).to eq(res)
  end

end
