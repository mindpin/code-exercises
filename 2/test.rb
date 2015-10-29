def run(money)
  # TODO
  if money <= 1455
    persons = money * 0.03
    return persons
  end

  if money > 1455 && money <= 4500
    pers = money * 0.1 - 105
    return pers
  end

  if money > 4155 && money <= 9000
    peopels = money * 0.2 - 555
    return peopels
  end

  if money > 7755 && money <= 35000
    pepls = money * 0.25 - 1005
    return pepls
  end

  if money > 27255 && money <= 55000
    individual = money * 0.3 - 2755
    return individual
  end

  if money > 41255 && money <= 80000
    individuals = money * 0.35 - 5505
    return individuals
  end

  if money > 57505
    indvls = money * 0.45 - 13505
    return indvls
  end
end
