#  Python
# 변수와 자료형
## 1. 변수
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

## 2. 자료형

- 파이썬 자료형에는 숫자형, 문자형, 논리형이 있다.

- 숫자형 (Numeric)

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

- 문자형 (String)

  - 문자열의 합, 곱

  ```python
  a = 'This is '
  b = 'string!'
  print(a + b)
  # This is string!
  
  print(b * 4)
  # string!string!string!string!
  
  print(type(a))
  ```

  

## 3. 문자열

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



- 인덱싱(Indexing)

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



- 슬라이싱(Slicing)
  - s2[이상:미만]

```python
s2 = 'This is slicing test'
print(s2[0:5])
# This

print(s2[:5])
# This

print(s2[-4:])
# test
```



## 4. 리스트 



