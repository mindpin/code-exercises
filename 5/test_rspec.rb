require File.expand_path("../test", __FILE__)

def test_5(arg1, arg2)
  expect(run(arg1, arg2)).to eq("#{arg1} 打败了 #{arg2}")
  expect(run(arg2, arg1)).to eq("#{arg2} 输给了 #{arg1}")
end

RSpec.describe "test 5" do
  it "参数不正确" do
    arg1 = "a"
    arg2 = "b"
    expect(run(arg1, arg2)).to eq("参数不正确")
    expect(run(arg2, arg1)).to eq("参数不正确")
  end

  it "剪刀 打败了 布" do
    arg1 = "剪刀"
    arg2 = "布"
    test_5(arg1, arg2)
  end

  it "布 打败了 石头" do
    arg1 = "布"
    arg2 = "石头"
    test_5(arg1, arg2)
  end

  it "石头 打败了 剪刀" do
    arg1 = "石头"
    arg2 = "剪刀"
    test_5(arg1, arg2)
  end

  it "石头 打败了 蜥蜴" do
    arg1 = "石头"
    arg2 = "蜥蜴"
    test_5(arg1, arg2)
  end

  it "蜥蜴 打败了 史波克" do
    arg1 = "蜥蜴"
    arg2 = "史波克"
    test_5(arg1, arg2)
  end

  it "史波克 打败了 剪刀" do
    arg1 = "史波克"
    arg2 = "剪刀"
    test_5(arg1, arg2)
  end

  it "剪刀 打败了 蜥蜴" do
    arg1 = "剪刀"
    arg2 = "蜥蜴"
    test_5(arg1, arg2)
  end

  it "蜥蜴 打败了 布" do
    arg1 = "蜥蜴"
    arg2 = "布"
    test_5(arg1, arg2)
  end

  it "布 打败了 史波克" do
    arg1 = "布"
    arg2 = "史波克"
    test_5(arg1, arg2)
  end

  it "史波克 打败了 石头" do
    arg1 = "史波克"
    arg2 = "石头"
    test_5(arg1, arg2)
  end

end
