# https://www.codewars.com/kata/human-readable-duration-format

SECONDS_IN_AN_HOUR = 3600
SECONDS_IN_A_DAY = 24 * SECONDS_IN_AN_HOUR
SECONDS_IN_A_YEAR = 365 * SECONDS_IN_A_DAY
TIME = %w[year day hour minute second]

def format_duration(sec)
  return 'now' if sec.zero?

  years, days = sec.divmod(SECONDS_IN_A_YEAR)
  days, hours = days.divmod(SECONDS_IN_A_DAY)
  hours, min = hours.divmod(SECONDS_IN_AN_HOUR)
  min, sec = min.divmod(60)

  display_duration([years, days, hours, min, sec])
end

def display_duration(arr)
  times = arr.each_with_object([]).with_index do |(time, ary), i|
    case time
    when 0 then next
    when 1 then ary << "1 #{TIME[i]}"
    else        ary << "#{time} #{TIME[i]}s"
    end
  end
  join_and(times)
end

def join_and(arr)
  case arr.size
  when 1 then arr.join
  when 2 then arr.join(' and ')
  else        arr[0, arr.size - 1].join(', ') + " and #{arr[-1]}"
  end
end

# After studying best katas

TIME = %w[year day hour minute second]

def format_duration(sec)
  return 'now' if sec.zero?

  m, s = sec.divmod(60)
  h, m = m.divmod(60)
  d, h = h.divmod(24)
  y, d = d.divmod(365)

  *first, last = TIME.zip([y, d, h, m, s]).reject { |unit, n| n.zero? }
                     .map { |unit, n| n > 1 ? "#{n} #{unit}s" : "1 #{unit}" }
  
  first.empty? ? last : first.join(', ') + ' and ' + last
end

p format_duration(0)            == "now"
p format_duration(62)           == "1 minute and 2 seconds"
p format_duration(3662)         == "1 hour, 1 minute and 2 seconds"
p format_duration(86401)        == "1 day and 1 second"
p format_duration(15_731_080)   == "182 days, 1 hour, 44 minutes and 40 seconds"
p format_duration(132_030_240)  == "4 years, 68 days, 3 hours and 4 minutes"
