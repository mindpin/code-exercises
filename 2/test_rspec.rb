require File.expand_path("../test", __FILE__)

RSpec.describe "test 2" do

  it "应缴税所得额是 1000" do
    expect(run(1000)).to eq(30)
  end

  it "应缴税所得额是 3000" do
    expect(run(3000)).to eq(195)
  end

  it "应缴税所得额是 5000" do
    expect(run(5000)).to eq(445)
  end

  it "应缴税所得额是 20 000" do
    expect(run(20000)).to eq(3995)
  end

  it "应缴税所得额是 40 000" do
    expect(run(40000)).to eq(9245)
  end

  it "应缴税所得额是 60 000" do
    expect(run(60000)).to eq(15495)
  end

  it "应缴税所得额是 90 000" do
    expect(run(90000)).to eq(26995)
  end
end
