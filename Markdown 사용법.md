#  Markdown 사용법

<br>

1. '#'을 사용한 크기 조정

   # # 1개 사용

   ## ## 2개 사용

   ### ### 3개 사용

<br>

2. <ul>표기
   - '-' 한 번 타이핑

- '-' 한 번 타이핑 후 엔터
- - 위 보다 안 쪽에서 '-' 한 번 타이핑 후 엔터

<br>

3. 소스 코드 입력 창 

   **```**(3번) 타이핑 후 

   ruby, python 등 소스코드를 삽입하는데 사용할 언어를 적어주면, 

   아래와 같이 박스가 생성되고 소스를 적을 수 있음 

    ```ruby
   get '/markdown' do
       # parameter 값으로 num1을 보낼 것임
       # num1 현재 string 따라서, 숫자로 형 변환이 필요함
       num1 = params[:num1].to_i
       num2 = params[:num2].to_i
       
       # @를 붙여주면 client도 접근할 수 있는 변수로 설정됨
       @num_sum = num1 + num2
       @num_mul = num1 * num2
       @num_minus = num1 - num2
       @num_divi = num1 / num2
       
       erb :(파일명)
   end
   ```



   ​	**``**(2번)  타이핑 후

   ​	짧은 소스 코드를 작은 박스에 위와 같이 처리함

   ​	``def a_sum(a):`

<br>

4. 글자 굵게 혹은 기울여 표시하기

   **굵게** *(2개)를 굵게 표현하고 싶은 곳의 앞 뒤에 붙이기

   *기울기* *(1개)를 기울여 표현하고 싶은 곳의 앞/뒤에 붙이기

