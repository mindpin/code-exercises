def run(time)
  # TODO
  time_interval = Time.now - time
  if time_interval < 0
    return "未来"
  end

  if time_interval > 0 && time_interval < 60
    return "片刻前"
  end

  if time_interval >= 60 && time_interval < 3600
    return "#{(time_interval/60).to_i} 分钟前"
  end

  if time_interval >= 3600 && time_interval < 172800
    return "#{(time_interval/3600).to_i} 小时前"
  end

  if time_interval >= 172800 && time_interval < 604800
    return "#{(time_interval / 86400).to_i} 天前"
  end

  if time_interval >= 604800 && time_interval < 31536000
    return "#{(time_interval / 604800).to_i} 周 #{((time_interval / 86400 ) % 7).to_i} 天前"
  end

  if time_interval >= 31536000
    return "#{(time_interval / 31536000).to_i} 年 #{(time_interval / 86400 - 365).to_i} 天前"
  end
end
