def who_is_bigger(a, b, c)  
  if a == nil || b == nil || c == nil
    "nil detected" 
  elsif a > b && a > c
    "a is bigger" 
  elsif b > a && b > c
    "b is bigger" 
  else c > a && c > b   
    "c is bigger" 
  end
end

def reverse_upcase_noLTA(str)
  str.reverse.upcase.tr('LTA', '')
end

def array_42(arr)
  arr.any? { |num| num == 42 }
end

def magic_array(arr)
  arr.flatten.sort.map { |num| num * 2 }.reject { |num| num % 3 == 0 }.uniq
end