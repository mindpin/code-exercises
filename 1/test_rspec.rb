require File.expand_path("../test", __FILE__)

RSpec.describe "test 1" do
  it "如果参数时间在当前时间之后，则返回“未来”" do
    expect(run(Time.now + 60 * 60 * 24)).to eq("未来")
  end

  it "如果参数时间在当前时间之前并距当前时间间隔小于 1 分钟，则返回“片刻前”" do
    expect(run(Time.now - 50)).to eq("片刻前")
  end

  it "如果参数时间在当前时间之前并距当前时间间隔大于 1 分钟且小于 1 小时，则返回“x 分钟前”（x 是具体分钟数）" do
    expect(run(Time.now - 60 * 50 - 10)).to eq("50 分钟前")
  end

  it "如果参数时间在当前时间之前并距当前时间间隔大于 1 小时且小于 2 天，则返回“x 小时前”（x 是具体小时数）" do
    expect(run(Time.now - 60 * 60 * 25 - 10)).to eq("25 小时前")
  end

  it "如果参数时间在当前时间之前并距当前时间间隔大于 2 天且小于 1 周，则返回“x 天前”（x 是具体天数）" do
    expect(run(Time.now - 60 * 60 * 24 * 2 - 10)).to eq("2 天前")
  end

  it "如果参数时间在当前时间之前并距当前时间间隔大于 1 周且小于 1 年，则返回“x 周 y 天前”（x 是具体周数，y 是具体天数。）" do
    expect(run(Time.now - 60 * 60 * 24 * 25 - 10)).to eq("3 周 3 天前")
  end

  it "如果参数时间在当前时间之前并距当前时间间隔大于 1 年，则返回“x 年 y 天前”" do
    expect(run(Time.now - 60 * 60 * 24 * 400 - 10)).to eq("1 年 #{400-365} 天前")
  end
end
