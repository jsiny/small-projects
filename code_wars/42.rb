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

p format_duration(0)            == "now"
p format_duration(62)           == "1 minute and 2 seconds"
p format_duration(3662)         == "1 hour, 1 minute and 2 seconds"
p format_duration(86401)        == "1 day and 1 second"
p format_duration(15_731_080)   == "182 days, 1 hour, 44 minutes and 40 seconds"
p format_duration(132_030_240)  == "4 years, 68 days, 3 hours and 4 minutes"

# Other solutions I need to study

def format_duration(total)
  if total == 0
    "now"
  else
    duration = {
      year:   total / (60 * 60 * 24 * 365),
      day:    total / (60 * 60 * 24) % 365,
      hour:   total / (60 * 60) % 24,
      minute: total / 60 % 60,
      second: total % 60
    }
  
    @output = []
  
    duration.each do |key, value|
      if value > 0
        @output << "#{value} #{key}"
        @output.last << "s" if value != 1
      end
    end
  
    @output.join(', ').gsub(/\,\s(?=\d+\s\w+$)/, " and ")
  end
end

def format_duration(seconds)
  return "now" if seconds == 0
  m,s = seconds.divmod(60)
  h,m = m.divmod(60)
  d,h = h.divmod(24)
  y,d = d.divmod(365)

  *f,l = {'year'=>y,'day'=>d,'hour'=>h,'minute'=>m,'second'=>s}.to_a.select{|i| i.last > 0}.map{|i| (i.last>1)? "#{i.last} #{i.first+'s'}": "#{i.last} #{i.first}"}
  (f.count > 0)? f.join(', ') + ' and '+l : l
end