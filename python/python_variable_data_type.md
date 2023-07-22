#  Python
# 변수와 자료형
## 1. 변수 (Variable)
- 반복적으로 사용되는 값을 필요할 때마다 계속 입력하는 것은 비효율적으므로 우리는 변수를 사용한다.
- 파이썬에서는 등호를 사용하여 변수에 자료를 할당한다.
    - 그 후부터는 필요할 때 변수명을 이용하면 된다.
    - 변수를 할당할 때 변수명, 등호, 자료 사이의 공백을 무시된다.
```python
abc = 12340
print(abc)
# 12340
```

- print()함수를 사용하지 않아도 출력가능
```python
abc
# 12340
```

- 변수명 설정 규칙
    1. 변수명은 문자, 숫자, 밑줄 기호(_)를 이용해 만든다.(밑줄 기호로 시작하는 변수명은 보통 사용하지 않는다.)
    2. 숫자로 시작하는 변수명은 만들 수 없다.
    3. 대소문자를 구분한다.
    4. 공백을 포함할 수 없다. 밑줄 기호(_)나 대문자를 활용한다.
    5. 밑줄 이외의 기호는 변수에 이용할 수 없다.
    6. 예약어는 변수명으로 이용할 수 없다. (예약어는 'import keyword \n keyword.kwlist'로 확할 수 있다.)

- 상수(constant variable): 한 번 지정한 후 그 값이 변하지 않는 변수
    - ex) PI(파이, 원주율)


## 2. 자료형 (Data type)

### 1) 숫자형 (Numeric)

  - 정수, 2진수, 8진수, 16진수, 실수, 복소수(Complex, 파이썬에서는 i대신 j사용)

  ```python
  print(888)
  print(type(888))
  # 888
  # <class 'int'>
  
  print(0b1001)
  print(type(0b1001))
  # 9
  # <class 'int'>
  
  print(0o77)
  print(type(0o77))
  # 63
  # <class 'int'>
  
  print(0xff)
  print(type(0xff))
  # 63
  # <class 'int'>
  
  print(3.14)
  print(type(3.14))
  # 3.14
  # <class 'float'>
  
  print(8 + 9j)
  print(type(8 + 9j))
  # (8+9j)
  # <class 'complex'>
  ```



### 2) 문자열 (String)

- 문자열 표시를 위해선 문자열 시작과 끝에 큰따옴표(")나 작은 따옴표(')를 지정한다. 양쪽에 같은 기호 사용!

```python
print("String Test")
# String Test

print('String Test')
# String Test

print(type("String Test"))
# str

print(type('String Test'))
# str
```



- 문자열안에 큰 따옴표("), 작은 따옴표(') 혹은 둘 다 집어넣기

```python
s1 = 'This is a "double" quotation test'
print(s1)
# This is a "double" quotation test

s2 = "This is a 'single' quotation test"
print(s2)
# This is a 'single' quotation test

''' 삼중 작은 따옴표
여러 행 입력 가능
("") 혹은 ('')도 입력 가능 '''
#  삼중 작은 따옴표
여러 행 입력 가능
("") 혹은 ('')도 입력 가능

""" 삼중 큰 따옴표
여러 행 입력 가능
("") 혹은 ('')도 입력 가능 """ 
# 삼중 큰 따옴표
여러 행 입력 가능
("") 혹은 ('')도 입력 가능
```

- 문자열의 합, 곱

```python
a = 'This is '
b = 'string!'
print(a + b)
# This is string!

print(b * 4)
# string!string!string!string!

print(type(a))
# <class 'str'>
```



- 인덱싱 (Indexing)
  - 문자열[인덱스 값]


```python
s1 = 'This is indexing test'
print(s1[0])
# T

print(s1[-21])
# T

print(s1[1])
# h

print(s1[-1])
# t

print(s1[20])
# t
```



- 슬라이싱 (Slicing)
  - 문자열[이상:미만]

```python
s2 = 'This is slicing test'
print(s2[0:5])
# This

print(s2[:5])
# This

print(s2[-4:])
# test
```



- 포메팅 (Formating)

  - 문자열 안의 특정값을 편하게 바꿀 수 있는 기능이다.

  - 포맷코드 

  - | 코드 | 설명                     |
    | :--- | ------------------------ |
    | %s   | 문자열(String)           |
    | %c   | 문자 1개(character)      |
    | %d   | 정수(Ineteger)           |
    | %f   | 부동소수(floating-point) |
    | %o   | 8진수                    |
    | %x   | 16진수                   |
    | %%   | 그냥 % (문자 % 출력)     |
  
    

  - 1. 숫자 대입 (포맷 코드, format 함수)
  
    ```python
    # - 포맷 코드
    'My height is %d.' % 176
    # My height is 176.
    
    # - format 함수
    'My height is {0}.'.format(176)
    # My height is 176.
    ```
  
  - 2. 문자열 대입 (포맷 코드, format 함수)
  
    ```python
    # - 포맷 코드
    'My %s is 176.' % 'height'
    # My height is 176.
    
    # - format 함수
    'My {0} is 176.'.format('height')
    # My height is 176.
    ```

  - 3. 숫자 값을 변수로 대입 (포맷 코드, format 함수)

    ```python
    # - 포맷 코드
    number = 176
    'My height is %d.' % number
    # My height is 176.
    
    # - format 함수
    number = 176
    'My height is {0}.'.format(number)
    # My height is 176.
    ```
  
  - 4. 2개 이상의 값 넣기 (포맷 코드, format 함수)
  
    ```python
    # - 포맷 코드
    number = 176
    word = 'height'
    'My %s is %d.' % (word, number)
    # My height is 176.
    
    # - format 함수
    number = 176
    word = 'height'
    'My {0} is {1}.'.format(word, number)
    # My height is 176.
    
    'My {word} is {number}.'.format(word = 'height', number = 176)
    # My height is 176.
    ```
  
    
  
  - f 문자열 
  
  ```python
  number = 176
  word = 'height'
  f'My {word} is {number}.'
  # My height is 176.
  
  # - 계산식 사용도 가능
  number = 176
  f'My height is {number + 1}.'
  # My height is 177.
  
  # - 딕셔너리 활용
  d = {'word': 'height', 'number': '176'}
  f'My {d["word"]} is {d["number"]}.'
  # My height is 176.
  ```
  
  
  
  - 정렬과 공백 (포맷 코드, format 함수, f 문자열)
  
  ```python
  # - 포맷 코드 (좌측, 우측)
  '%-10s' 'oh'
  # 'oh        '
  
  '%10s' % 'oh'
  # '        oh'
  
  
  # - format 함수 (좌측, 우측, 가운데, 공백)
  '{0:<10}'.format('oh')
  # 'oh        '
  
  '{0:>10}'.format('oh')
  # '        oh'
  
  '{0:^10}'.format('oh')
  # '    oh    '
  
  '{0:=^10}'.format('oh')
  #'====oh===='
  
  '{0:!<10}'.format('oh')
  #'oh!!!!!!!!'
  
  # - f 문자열 (좌측, 우측, 가운데, 공백)
  f'{"oh":<10}'
  # 'oh        '
  
  f'{"oh":>10}'
  # '        oh'
  
  f'{"oh":^10}'
  # '    oh    '
  
  f'{"oh":=^10}'
  # '====oh===='
  ```
  
  
  
  - 소수점 표현 (포맷 코드, format 함수, f 문자열)
  
  ```python
  # -포맷 코드
  "%0.4f" % 3.141592
  # 3.1416 				# 반올림을 해주는 것을 알 수 있음
  
  "%10.4" % 3.141592
  # '    3.1416'			# 총 10칸을 사용하며 오른쪽 정렬을 시킴
  
  "%-10.4" % 3.141592
  # '3.1416    '			# 총 10칸을 사용하며 왼쪽 정렬을 시킴
  
  # -format 함수
  pi = 3.141592
  "{0:0.4f}".format(pi)
  # 3.1416
  
  "{0:10.4f}".format(pi)		# 숫자 앞에 '>'는 생략해도 됨
  # '    3.1416'
  
  "{0:<10.4f}".format(pi)
  # '3.1416    '
  
  # -f 문자열
  pi = 3.141592
  f'{pi:0.4f}'
  # 3.1416
  
  f'{pi:10.4f}'
  # '    3.1416'
  
  f'{pi:<10.4f}'
  # '3.1416    '
  ```
  
  
  
  - 문자열 관련 함수 (문자열 변수 뒤에 '.'을 붙이고 함수 이름을 입력한다.)
    
  	- 문자열 관련 함수들은 함수를 사용한다고 변수의 값이 변하지 않는다. 따라서 완전히 바꾸고 싶다면 대입문(a = a.함수())을 사용해야 한다.
  	- count(찾을 값): 문자 개수 세는 함수
  	
  	```python
  	a = 'swimming'
  	a.count('i')
  	# 2
  	
  	a.count('m')
  	# 2
  	```
  	
  	
  	
  	- find(찾을 값, 시작인덱스, 종료인덱스): 위치 알려주는 함수
  	- index(찾을 값, 시작인덱스, 종료인덱): 위치 알려주는 함수
  	
  	```python
  	a = 'I want to find the location.'
  	a.find('a') 
  	# 3
  	
  	a.find('a', 4)
  	# 22
  	
  	a.index('a')
  	# 3
  	
  	a.index('a', 4)
  	# 22
  	```
  	
  	- find와 index 차이점
  	
  	```python
  	a = 'I want to find the location.'
  	a.find('k')
  	# -1			# 찾는 값이 없으면 -1 반환
  	
  	a.index('k')
  	# ValueError: substring not found	# 찾는 값이 없으면 오류 발생
  	```
  	
  	
  	
  	- len(문자열): 문자열이면 열의 길이 출력(띄어쓰기 포함)
  	
  	  - 리스트, 튜플 같은 형식이면 요소의 개소 출력
  	
  	  ```python
  	  s1 = 'This is length test'
  	  len(s1)
  	  # 19
  	  ```
  	
  	  
  	
  	- 구분자.join(문자열): 문자열 사이에 구분자를 삽입
  	
  	```python
  	" ".join('qwer')
  	# q w e r
  	```
  	
  	
  	
  	- split(구분자): 문자열을 구분자로 나눔(리스트 형태로 반환)
  	
  	```python
  	a = "I'm using split method."
  	a.split()
  	# ["I'm", 'using', 'split', 'method.']
  	
  	b = 'q:w:e:r:t'
  	b.split(':')
  	# ['q', 'w', 'e', 'r', 't']
  	```
  	
  	
  	
  	- upper(문자열): 소문자를 대문자로 바꿈
  	- lower(문자열): 대문자를 소문자로 바꿈
  	
  	```python
  	a = 'ok'
  	a.upper()
  	# OK
  	
  	b = 'OK'
  	b.lower()
  	# ok
  	```
  	
  	
  	
  	- strip(제거할 값): 양쪽의 공백 제거
  	- lstrip(제거할 값): 왼쪽의 공백 제거
  	- rstrip(제거할 값): 오른쪽의 공백 제거
  	
  	```
  	a = '--ok--'
  	a.strip('-')
  	# ok
  	
  	a.lstrip('-')
  	# ok--
  	
  	a.rstrip('-')
  	# --ok
  	```
  	
  	
  	
  	- replace(기존 값, 변경할 값, 변경횟수): 변경횟수만큼 값을 변경함(횟수 지정하지 않으면 전부 변경)
  	
  	```python
  	a = 'I like you.'
  	a.replace('like', 'love')
  	# I love you.
  	
  	b = 'q,w,e,r,t'
  	b.replace(',', ':', 1)
  	# q:w,e,r,t
  	
  	b.replace(',', ':', 3)
  	# q:w:e:r,t
  	```
  	
  	

## 불 자료형 (Bool)

- 참(True)과 거짓(False)을 나타내는 자료형 (각 문자의 첫 글자는 무조건 대문자로 작성해야함)
- 자료형별로 참(1, 'word' [1, 2, 3], (1, 2, 3), {'a': 1, 'b': 2}), 거짓(0, '', [], (), {}, None)
  - 1 혹은 각 자료형에 내용이 있다면 참(True), 0, None 혹은 각 자료형에 내용이 없으면 거짓(False)
- bool(내용): 괄호안에 내용이 참인지 거짓인지 알려주는 함수

```python
bool(1)
# True

bool(0)
# False

bool('word')
# True

bool('')
# False

bool([1, 2, 3])
# True

bool([])
# False

bool((1, 2, 3))
# True

bool(())
# False

bool({'a': 1, 'b': 2})
# True

bool({})
# False

bool(None)
# False
```

