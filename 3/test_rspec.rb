require File.expand_path("../test", __FILE__)

RSpec.describe "test 3" do

  describe "如果主人年龄大于等于 60 岁，则允许领养所有宠物。" do
    before{
      @person1 = Person.new(:name => "tom1", :age => 60, :gender => "男")
      @person2 = Person.new(:name => "tom2", :age => 61, :gender => "男")
    }

    it "允许领养猫" do
      pet = Pet.new(:kind => "猫", :age => 1)
      expect(run(@person1, pet)).to eq("tom1 适合领养该宠物")
      expect(run(@person2, pet)).to eq("tom2 适合领养该宠物")
    end

    it "允许领养狗" do
      pet = Pet.new(:kind => "狗", :age => 1)
      expect(run(@person1, pet)).to eq("tom1 适合领养该宠物")
      expect(run(@person2, pet)).to eq("tom2 适合领养该宠物")
    end

    it "允许领养乌龟" do
      pet = Pet.new(:kind => "乌龟", :age => 1)
      expect(run(@person1, pet)).to eq("tom1 适合领养该宠物")
      expect(run(@person2, pet)).to eq("tom2 适合领养该宠物")
    end

  end

  describe "如果主人年龄大于等于 30 岁且小于 60 岁，则允许领养乌龟，只允许领养小于等于 2 岁的猫和小于等于 3 岁的狗" do
    before{
      @person1 = Person.new(:name => "tom1", :age => 30, :gender => "男")
      @person2 = Person.new(:name => "tom2", :age => 40, :gender => "男")
    }

    it "允许领养乌龟" do
      pet = Pet.new(:kind => "乌龟", :age => 1)
      expect(run(@person1, pet)).to eq("tom1 适合领养该宠物")
      expect(run(@person2, pet)).to eq("tom2 适合领养该宠物")
    end

    it "允许领养 2 岁的猫" do
      pet = Pet.new(:kind => "猫", :age => 2)
      expect(run(@person1, pet)).to eq("tom1 适合领养该宠物")
      expect(run(@person2, pet)).to eq("tom2 适合领养该宠物")
    end

    it "允许领养小于 2 岁的猫" do
      pet = Pet.new(:kind => "猫", :age => 1)
      expect(run(@person1, pet)).to eq("tom1 适合领养该宠物")
      expect(run(@person2, pet)).to eq("tom2 适合领养该宠物")
    end

    it "不允许领养大于 2 岁的猫" do
      pet = Pet.new(:kind => "猫", :age => 3)
      expect(run(@person1, pet)).to eq("tom1 不适合领养该宠物")
      expect(run(@person2, pet)).to eq("tom2 不适合领养该宠物")
    end

    it "允许领养 3 岁的狗" do
      pet = Pet.new(:kind => "狗", :age => 3)
      expect(run(@person1, pet)).to eq("tom1 适合领养该宠物")
      expect(run(@person2, pet)).to eq("tom2 适合领养该宠物")
    end

    it "允许领养小于 3 岁的狗" do
      pet = Pet.new(:kind => "狗", :age => 2)
      expect(run(@person1, pet)).to eq("tom1 适合领养该宠物")
      expect(run(@person2, pet)).to eq("tom2 适合领养该宠物")
    end

    it "不允许领养大于 3 岁的狗" do
      pet = Pet.new(:kind => "狗", :age => 4)
      expect(run(@person1, pet)).to eq("tom1 不适合领养该宠物")
      expect(run(@person2, pet)).to eq("tom2 不适合领养该宠物")
    end
  end

  describe "如果主人年龄大于等于 16 岁且小于 30 岁，则男生只允许养狗以及小于 5 岁的乌龟，女生只允许养猫以及小于 5 岁的乌龟" do
    before{
      @person1 = Person.new(:name => "tom1", :age => 16, :gender => "男")
      @person2 = Person.new(:name => "tom2", :age => 20, :gender => "男")
      @person3 = Person.new(:name => "tom3", :age => 16, :gender => "女")
      @person4 = Person.new(:name => "tom4", :age => 20, :gender => "女")
    }

    it "允许领养小于 5 岁的乌龟" do
      pet = Pet.new(:kind => "乌龟", :age => 4)
      expect(run(@person1, pet)).to eq("tom1 适合领养该宠物")
      expect(run(@person2, pet)).to eq("tom2 适合领养该宠物")
      expect(run(@person3, pet)).to eq("tom3 适合领养该宠物")
      expect(run(@person4, pet)).to eq("tom4 适合领养该宠物")
    end

    it "不允许领养 5 岁的乌龟" do
      pet = Pet.new(:kind => "乌龟", :age => 5)
      expect(run(@person1, pet)).to eq("tom1 不适合领养该宠物")
      expect(run(@person2, pet)).to eq("tom2 不适合领养该宠物")
      expect(run(@person3, pet)).to eq("tom3 不适合领养该宠物")
      expect(run(@person4, pet)).to eq("tom4 不适合领养该宠物")
    end

    it "不允许领养大于 5 岁的乌龟" do
      pet = Pet.new(:kind => "乌龟", :age => 6)
      expect(run(@person1, pet)).to eq("tom1 不适合领养该宠物")
      expect(run(@person2, pet)).to eq("tom2 不适合领养该宠物")
      expect(run(@person3, pet)).to eq("tom3 不适合领养该宠物")
      expect(run(@person4, pet)).to eq("tom4 不适合领养该宠物")
    end

    it "男生允许养狗" do
      pet = Pet.new(:kind => "狗", :age => 4)
      expect(run(@person1, pet)).to eq("tom1 适合领养该宠物")
      expect(run(@person2, pet)).to eq("tom2 适合领养该宠物")
    end

    it "男生不允许养猫" do
      pet = Pet.new(:kind => "猫", :age => 4)
      expect(run(@person1, pet)).to eq("tom1 不适合领养该宠物")
      expect(run(@person2, pet)).to eq("tom2 不适合领养该宠物")
    end

    it "女生允许养猫" do
      pet = Pet.new(:kind => "猫", :age => 5)
      expect(run(@person3, pet)).to eq("tom3 适合领养该宠物")
      expect(run(@person4, pet)).to eq("tom4 适合领养该宠物")
    end

    it "女生不允许养狗" do
      pet = Pet.new(:kind => "狗", :age => 5)
      expect(run(@person3, pet)).to eq("tom3 不适合领养该宠物")
      expect(run(@person4, pet)).to eq("tom4 不适合领养该宠物")
    end
  end

  describe "年龄在 16 岁以下的主人不允许领养宠物" do
    before{
      @person = Person.new(:name => "tom", :age => 10, :gender => "男")
    }

    it "不允许领养猫" do
      pet = Pet.new(:kind => "猫", :age => 1)
      expect(run(@person, pet)).to eq("tom 不适合领养该宠物")
    end

    it "不允许领养狗" do
      pet = Pet.new(:kind => "狗", :age => 1)
      expect(run(@person, pet)).to eq("tom 不适合领养该宠物")
    end

    it "不允许领养乌龟" do
      pet = Pet.new(:kind => "乌龟", :age => 1)
      expect(run(@person, pet)).to eq("tom 不适合领养该宠物")
    end
  end
end
