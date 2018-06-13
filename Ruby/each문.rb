# .each do |row| ~ do

# 배열과 hash 일 때의 .each문 사용

# 1. 배열 속의 배열 데이터 추출

dinner_menu = [["a", "b"], ["c", "d"]]

dinner_menu.each do |separate|
  separate.each do |menu|
    puts menu
  end
end


# 2. Hash의 value 추출

dinner_menu = {
  "John" => "a",
  "Jenny" => "b",
  "Jin" => "c",
  "Ho" => "d"
  }
  
# dinner_menu.each do |menu|
# 위의 경우 작동하지 않음 / key와 value를 모두 받아 놓은 후 원하는 값만 출력하기
dinner_menu.each do |guest, menu|
  puts "#{menu}"
end
