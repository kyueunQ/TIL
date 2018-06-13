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



# 3. each do & .sort_by do를 활용한 단어 빈도 수 측정하기
puts "Type messages : "
text = gets.chomp

words = text.split

# hash를 생성 (default value 값 = 0)
frequencies = Hash.new(0)

# key값이 word로 value값은 현재 0
words.each do |word| 
  frequencies[word] += 1
end

# hash 형태로 데이터가 저장되어 있음
print frequencies

# hash를 배열로 정돈함
frequencies = frequencies.sort_by do |letter, count|
  # sort_by를 통해 오름차순 정렬을 하는데, letter 기준으로 할지, count 기준으로 할지 정하기
  count
end
# 내림차순 정렬
frequencies.reverse!

# 배열 형태로 데이터가 저장되어 있음
print frequencies

frequencies.each do |letter, count|
  puts letter + " " + count.to_s
end
