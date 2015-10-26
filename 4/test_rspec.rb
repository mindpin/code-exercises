require File.expand_path("../test", __FILE__)

RSpec.describe "test 1" do
  it "this is a new begining." do
    str = "this is a new begining."
    res = [
      "aebegg",
      "hiininin",
      "tss",
      "w",
      "",
      "    ."
    ]
    expect(run(str)).to eq(res)
  end

  it "i was 6 years old this year." do
    str = "i was 6 years old this year."
    res = [
      "aeadea",
      "ilhi",
      "srsotsr",
      "wyy",
      "6",
      "      ."
    ]
    expect(run(str)).to eq(res)
  end

end
