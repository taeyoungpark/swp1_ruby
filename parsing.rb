require 'nokogiri'
require 'open-uri'

#파싱(parsing)할 페이지(예제 : 중앙일보)
PAGE_URL = "http://news.nate.com/view/20150924n50886?mid=n0505"

#open-uri 와 nokogiri 를 이용해서 중앙일보 페이지를 파싱
page = Nokogiri::HTML(open(PAGE_URL))
#div.main_article
#파싱한 페이지 내에서 main_article 이라는 class 를 가진 태그에 접근.
#li a
#그리고 자식들 중 li 태그 또 그 자식들 중에 a 태그에 접근
article = page.css('#articleContetns')
#제목을 담을 배열을 생성


#그 후 puts 를 이용해서 출력
puts article