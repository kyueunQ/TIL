# Ruby 저장, 조건 반복
# 사례로 접근하는 Ruby 기초


# Example01. Recommend menu
menu = ['chicken', 'pizza', 'noodle', 'rice', 'soup', 'bread', 'icecream']
# sample(n): n개를 비복원 추출
select_menu = menu.sample(3)
# select_menu + string은 출력 불가
# .to_s을 통해 형변환이 필요함
puts '오늘의 삼시세끼 추천메뉴는 ' + select_menu.to_s + ' 입니다.'


# Example02. Lottery Tickets
# (1..45).to_a = *(1..45) : 1부터 45까지의 숫자를 배열로 만들기
# (1..45)는 45 포함 출력, (1...45)는 45 미포함 출력
num = (1..45).to_a
# sort(): 오름차순 정렬
# num.sample(6).sort().reverse: 내림차순
choice = num.sample(6).sort()
puts '추천 로또 번호는 ' + choice.to_s + ' 입니다.'


# Example03. KOSPI 지수 크롤링하기
# require: python의 import
require 'httparty'
require 'nokogiri'

# 아래의 주소를 가져올 것을 요청함
# Python 크롤링의 requests.get()
response = HTTParty.get("http://finance.daum.net/quote/kospi.daum?nil_stock=refresh")
# Nokogiri: HTML, XML, SAX, and Reader parse
# Python 크롤링의 BeautifulSoup, bs(response, "html.parser")와 유사
kospi = Nokogiri::HTML(response)
# Python 크롤링의 해당 구역 찾기, 
# result.find_all("div", {'class' : 'wpb_wrapper'})와 유사
result = kospi.css("#hyenCost > b")
# result를 출력하면 <b>2,453.76</b>를 출력
# 온전히 데이터만 출력하기 위해 .text로 변형
puts result.text


# Example04. 1부터 100까지의 숫자 중 하나를 뽑아, 1~25는 admin 1, 26~50은 admin 2, 51~75는 admin 3, 76~100은 admin 4를 출력
# 1. if문으로 작성하기
# if ~ elsif ~ else ~ end
x = *(1..100)
y = x.sample()

if 1 < y and y <= 25
  puts "admin 1"
elsif 25 < y and y <= 50
  puts "admin 2"
elsif 50 < y and y <= 75
  puts "admin 3"
else
  puts "admin 4"
puts y
end

# 2. case ~ when문으로 작성하기
# case ~ when ~ else ~ end
a = *(1..100)
b = a.sample()

case b
  when 1..25
  puts "admin 1"
  when 26..50
  puts "admin 2"
  when 51..75
  puts "admin 3"
  else
  puts "admin 4"
end
