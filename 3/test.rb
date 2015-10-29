# TODO 编写两个模型 Person 和 Pet ，分别代表宠物和人
class Person
  hash = {:name =>@name, :age => @age, :gender => @gender}
  def initialize(hash)
    @hash = hash
  end

  def hash
    @hash
  end

  def hash=(hash)
    @hash = hash
  end

  def to_s
    "(#@hash)"
  end
end

class Pet
  hash = {:kind =>@kind, :age => @age}
  def initialize(hash)
    @hash   = hash
  end

  def hash
    @hash
  end

  def hash=(hash)
    @hash = hash
  end

  def to_s
    "(#@hash)"
  end
end

def run(person, pet)
  # TODO 编写一个方法，传入一个人对象和一个宠物对象，根据条件判断该宠物是否适合分配给该人领养。根据判断结果返回“xxx 适合领养该宠物”或“xxx 不适合领养该宠物”（xxx 是人名）#<Person:0x000000020f07d8 @gender={:name=>"tom1", :age=>60, :gender=>"男"}>
  if person.hash[:age] >= 60
    if pet.hash[:kind] == "猫" || pet.hash[:kind] == "狗"|| pet.hash[:kind] == "乌龟"
      return "#{person.hash[:name]} 适合领养该宠物"
    end
  end

  if person.hash[:age] >= 30 && person.hash[:age] < 60
    # 则允许领养乌龟，只允许领养小于等于 2 岁的猫和小于等于 3 岁的狗  
    if pet.hash[:kind] == "乌龟" || (pet.hash[:kind] == "猫" && pet.hash[:age] <= 2) || (pet.hash[:kind] == "狗" && pet.hash[:age] <= 3)
      return "#{person.hash[:name]} 适合领养该宠物"
    end
    if(pet.hash[:kind] == "猫" && pet.hash[:age] > 2) || (pet.hash[:kind] == "狗" && pet.hash[:age] > 3)
      return "#{person.hash[:name]} 不适合领养该宠物"
    end
  end

  if person.hash[:age] >= 16 && person.hash[:age] < 30
    if person.hash[:gender] == "男"
      if pet.hash[:kind] == "狗" || (pet.hash[:kind] == "乌龟" && pet.hash[:age] < 5)
        return "#{person.hash[:name]} 适合领养该宠物"
      end
      if pet.hash[:kind] == "猫" || (pet.hash[:kind] == "乌龟" && pet.hash[:age] >= 5)
        return "#{person.hash[:name]} 不适合领养该宠物"
      end
    end

    if person.hash[:gender] == "女"
      if pet.hash[:kind] == "猫" || (pet.hash[:kind] == "乌龟" && pet.hash[:age] < 5)
        return "#{person.hash[:name]} 适合领养该宠物"
      end
      if pet.hash[:kind] == "狗" || (pet.hash[:kind] == "乌龟" && pet.hash[:age] >= 5)
        return "#{person.hash[:name]} 不适合领养该宠物"
      end
    end
  end

  if person.hash[:age] < 16 
    return "#{person.hash[:name]} 不适合领养该宠物"
  end
end
