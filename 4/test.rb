def run(str)
  # TODO
  first_group  = [ "a", "b", "c", "d", "e", "f", "g" ]
  second_group = [ "h", "i", "j", "k", "l", "m", "n" ]
  third_group  = [ "o", "p", "q", "r", "s", "t", "u" ]
  fourth_group = [ "v", "w", "x", "y", "z" ]
  fifth_group  = [ "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" ]
  sixth_group  = [ " ", ",", "." ]
  change_str = str.split(//)
  a = [ ]
  b = [ ]
  c = [ ]
  d = [ ]
  e = [ ]
  f = [ ]
  for i in change_str.each
    for j in first_group.each
      if i == j
        a.push( j )
      end
    end

    for n in second_group.each
      if i == n
        b.push( n )
      end
    end

    for q in third_group.each
      if i == q
        c.push( q )
      end
    end

    for p in fourth_group.each
      if i == p
        d.push( p )
      end
    end

    for l in fifth_group.each
      if i == l
        e.push( l )
      end
    end

    for m in sixth_group.each
      if i == m
        f.push( m )
      end
    end

  end

  one   = a.join #将数组转成字符
  two   = b.join
  three = c.join
  four  = d.join
  five  = e.join
  six   = f.join
  res = [ one, two, three, four, five, six ]
  
  return res
end
