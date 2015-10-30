def run(str)
  # TODO
  # str.each_char { |c| index(c) }
  # p str[/a.*z/]
  str_split = str.split(//)
  first_group  = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "(", ")", ".", " " ]

  a = []
  b = []
  res = []
  d = []
  # str.scan(%r{a}).each{ |item| puts str.index(item) }
  # p str[%r{a.*d}]
  # p str =~/b/
  # p str[0]
  for i in first_group.each
    for j in str_split.each
      if i == j
        a.push(j)
      end
    end
  end
  one = a.join.squeeze
  one_split = one.split(//)
  extract = str_split & one_split

  for lm in 0..str.length-1
    b.push(lm)
  end

  # for k in one_split.each
  #   # p str[k]
  #   for m in b.each
  #     if k == str[m]
  #       d.push(m)
  #     end
  #   end
  # end
  # p d
  h = 0
  for r in extract.each
    for m in b.each
      if r == str[m] && m <= str.length-1
        d.push(m)
        h = h + 1
      end
    end
    hash = {:name => r, :count => h, :index =>d }
    p hash
    res.push(hash)
    d = []
    h = 0
    # p res
  end
  return res
end
