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

- 파이썬 자료형에는 숫자형, 문자형, 논리형이 있다.

### 1. 숫자형 (Numeric)

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



### 2. 문자열 (String)

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

- Length
  - 문자열이면 열의 길이 출력(띄어쓰기 포함)
  - 리스트, 튜플 같은 형식이면 요소의 개소 출력

```python
s1 = 'This is length test'
len(s1)
# 19
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
  '%10s' % 'oh'
  # '        oh'
  
  '%-10s' 'oh'
  # 'oh        '
  
  # - format 함수 (좌측, 우측, 가운데, 공백)
  '{0:<10}'.format('oh')
  # 
  ```
  
  
  
  - 소수점 표현 (포맷 코드, format 함수, f 문자열)
  
  ```python
  ```
  
  
  
  - 1
  
  - 1
  
  - 1
  
  - 1
  
  - 1
  
  - 1
  
  - 1
  
  - 1
  
  - 1
  
  - 1

## 4. 리스트 (List)

- 여러 데이터를 모아서 관리할 수 있게 만드는 것이다.
- 대괄호([])를 사용해서 만든다.
- 다양한 데이터 타입이 올 수 있다. (문자열, 숫자, 불, 리스트, 튜플, 딕셔너리, 세트 등)
- 콤마(,)로 구분하며 아무것도 쓰지 않으면 빈 리스트가 생성된다.

```python
l1 = [1, 2, 3, 4, 5]
print(l1)
# [1, 2, 3, 4, 5]
print(len(l1))
# 5
print(type(l1))
# <class 'list'>

l2 = ['일', '이', '삼', '사', '오']
print(l2)
# ['일', '이', '삼', '사', '오']
print(len(l2))
# 5
print(type(l2))
# <class 'list'>
```



- 인덱싱(Indexing), 슬라이싱(Slicing)

```python
l3 = [1, '이', 3, '사', ['오', 6], ('칠', '팔', '구')]
print(l3[1])
# 이

print(l3[3:5])
# ['사', ['오', 6]]

print(l3[4][1])
# 6
print(type(l3[4]))
#<class 'list'>

print(l3[5][2])
# 구
print(type(l3[5]))
# <class 'tuple'>

print(l3[::2])
# [1, 3, ['오', 6]]
```



- 값 바꾸기, 값 삭제하기

```python
l3 = [1, '이', 3, '사', ['오', 6], ('칠', '팔', '구')]
l3[1] = 2
print(l3)
# [1, 2, 3, '사', ['오', 6], ('칠', '팔', '구')]

l3[4:] = []
print(l3)
# [1, 2, 3, '사']

del l3[3]
print(l3)
# [1, 2, 3]
```



- 리스트 메서드 활용

  - append: 항목 하나를 맨 마지막에 추가
  - extend: 항목 여러개를 맨 마지막에 추가
  - insert: 특정 위치에 항목을 삽입

  ```python
  l4 = [1, 2, 3, 4]
  l4.append(5)
  print(l4)
  # [1, 2, 3, 4, 5]
  
  l4.extend([7, 8])
  print(l4)
  # [1, 2, 3, 4, 5, 7, 8]
  
  l4.insert(5, 6)
  print(l4)
  # [1, 2, 3, 4, 5, 6, 7, 8]
  ```

  

  - remove: 입력값과 첫 번째로 일치하는 항목을 리스트에서 삭제
  - pop: 마지막 항목을 제거한 후에 반환

  ```python
  l5 = [1, 2, 3, 4, 5, 6, 3, 3]
  
  l5.remove(3)
  print(l5)
  # [1, 2, 4, 5, 6, 3, 3]
  
  l5_pop = l5.pop()
  print(l5_pop)
  # 3
  print(l5)
  # [1, 2, 4, 5, 6, 3]
  ```

  

  - index: 인자와 일치하는 첫 번째 항목의 위치를 반환
  - count: 인자와 일치하는 항목의 개수를 반환

  ```python
  l6 = [1, 2, 3, 4, 5, 4, 4, 5]
  l6_index = l6.index(4)
  print(l6_index)
  # 3
  
  l6_count = l6.count(5)
  print(l6_count)
  # 2
  ```

  

  - sort: 순방향으로 정렬
  - reverse: 역방향으로 정렬

  ```python
  l7 = [2, 7, 6, 4, 1]
  l7.sort()
  print(l7)
  # [1, 2, 4, 6, 7]
  
  l7.reverse()
  print(l7)
  # [7, 6, 4, 2, 1]
  ```




## 5. 튜플 (Tuple)

- 튜플의 속성은 리스트와 대부분 같다.
- 다른점1: 대괄호([]) 대신 소괄호(()) 사용한다.
- 다른점2: 데이터 입력된 후에는 항목을 변경하거나 삭제 수 없다.

```python
t1 = (1, 2, 3, 4)
print(t1)
# (1, 2, 3, 4)

print(type(t1))
# <class 'tuple'>

t1[0] = 10
# TypeError: 'tuple' object does not support item assignment

del t1[0]
# TypeError: 'tuple' object doesn't support item deletion

print(t1[:3])
# (1, 2, 3)

print(t1[2])
# 3
```

