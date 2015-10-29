def run(arg1, arg2)
  # TODO
  guess = ["石头","剪子","布","蜥蜴","史波克"]

  if (arg1 == "a" && arg2 == "b") || (arg1 == "b" && arg2 == "a")
    return "参数不正确"
  end

  if arg1 == "剪刀" && arg2 == "布"
    return "#{arg1} 打败了 #{arg2}"
  end

  if arg1 == "布" && arg2 == "剪刀"
    return "#{arg1} 输给了 #{arg2}"
  end

  if arg1 == "布" && arg2 == "石头"
    return "#{arg1} 打败了 #{arg2}"
  end

  if arg1 == "石头" && arg2 == "布"
    return "#{arg1} 输给了 #{arg2}"
  end

  if arg1 == "石头" && arg2 == "剪刀"
    return "#{arg1} 打败了 #{arg2}"
  end

  if arg1 == "剪刀" && arg2 == "石头"
    return "#{arg1} 输给了 #{arg2}"
  end

  if arg1 == "石头" && arg2 == "蜥蜴"
    return "#{arg1} 打败了 #{arg2}"
  end

  if arg1 == "蜥蜴" && arg2 == "石头"
    return "#{arg1} 输给了 #{arg2}"
  end

  if arg1 == "蜥蜴" && arg2 == "史波克"
    return "#{arg1} 打败了 #{arg2}"
  end

  if arg1 == "史波克" && arg2 == "蜥蜴"
    return "#{arg1} 输给了 #{arg2}"
  end

  if arg1 == "史波克" && arg2 == "剪刀"
    return "#{arg1} 打败了 #{arg2}"
  end

  if arg1 == "剪刀" && arg2 == "史波克"
    return "#{arg1} 输给了 #{arg2}"
  end

  if arg1 == "剪刀" && arg2 == "蜥蜴"
    return "#{arg1} 打败了 #{arg2}"
  end

  if arg1 == "蜥蜴" && arg2 == "剪刀"
    return "#{arg1} 输给了 #{arg2}"
  end

  if arg1 == "蜥蜴" && arg2 == "布"
    return "#{arg1} 打败了 #{arg2}"
  end

  if arg1 == "布" && arg2 == "蜥蜴"
    return "#{arg1} 输给了 #{arg2}"
  end

  if arg1 == "布" && arg2 == "史波克"
    return "#{arg1} 打败了 #{arg2}"
  end

  if arg1 == "史波克" && arg2 == "布"
    return "#{arg1} 输给了 #{arg2}"
  end

  if arg1 == "史波克" && arg2 == "石头"
    return "#{arg1} 打败了 #{arg2}"
  end

  if arg1 == "石头" && arg2 == "史波克"
    return "#{arg1} 输给了 #{arg2}"
  end
end
