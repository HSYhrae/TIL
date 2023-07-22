# Python

# 리스트(List), 튜플(Tuple), 세트(Set), 딕셔너리(Dictionary)

## 1. 리스트 (List)

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



- 리스트 더하기(+), 반복하기(*)

```python
lst1 = [1, 2, 3]
lst2 = [4, 5, 6]
lst1 + lst2
# [1, 2, 3, 4, 5, 6]

lst1 * 5
# [1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3]
```



- 리스트 메서드 활용

  - append: 항목 하나를 맨 마지막에 추가
  - extend: 항목 여러개를 맨 마지막에 추가
  - insert(특정 위치, 삽입할 값): 특정 위치에 항목을 삽입

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

  

  - remove(제거할 값): 입력값과 첫 번째로 일치하는 항목을 리스트에서 삭제
  - pop(인덱스 값): 지정한 순서에 있는 값을 제거한 후 반환, 비어 있으면 마지막 항목을 제거한 후에 반환

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
  
  l5.pop(2)
  # 4
  
  l5
  # [1, 2, 5, 6, 3]
  ```

  

  - index(찾을 값): 찾을 값과 일치하는 첫 번째 항목의 위치를 반환
  - count(찾을 값): 찾을 값과 일치하는 항목의 개수를 반환

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




## 2. 튜플 (Tuple)

- 튜플의 속성은 리스트와 대부분 같다.
- 항목을 하나만 생성하려고 해도 무조건 콤마(,)를 입력해야 한다.
- 다른점1: 대괄호([]) 대신 소괄호(()) 사용한다.
- 다른점2: 데이터 입력된 후에는 항목을 변경하거나 삭제 수 없다.
- 다른점3: 소괄호 없이 생성하면 자동으로 튜플로 자료가 만들어 진다.

```python
t0 = (1,)
t0
# (1,)

t1 = (1, 2, 3, 4)
print(t1)
# (1, 2, 3, 4)

print(type(t1))
# <class 'tuple'>

t1[0] = 10
# TypeError: 'tuple' object does not support item assignment

del t1[0]
# TypeError: 'tuple' object doesn't support item deletion

t2 = 1, 2, 3, 4
t2
# (1, 2, 3, 4)
```



- 인덱싱(Indexing), 슬라이싱(Slicing)

```python
t3 = (1, '이', 3, ('four', 5), [6, '칠', 'eight'] )

print(t3[3])
# ('four', 5)

print(t3[4][1])
# 칠

print(t3[:2])
# (1, '이')

print(t3[4][:2])
# [6, '칠']
```



- 더하기, 곱하기, 길이 구하기

```python
t4 = (1, 2, 3)
t5 = (4, 5, 6)
t4 + t5
# (1, 2, 3, 4, 5, 6)

t4 * 3
# (1, 2, 3, 1, 2, 3, 1, 2, 3)

len(t4)
# 3
```



- 튜플 사용 함수 (튜플은 변경, 삭제, 추가)

  - count(요소): 특정 요소의 개수 반환
  - index(요소): 특정 요소의 첫번째 인덱스 반환

  ```python
  t6 = ('a', 'b', 's', 'e', 'g', 's', 's')
  t6.count('s')
  # 3
  
  t6.index('s')
  # 2
  ```



## 3. 집합(Set)

- '{}', 'set([])', set('문자열')의 방식으로 생성된다.
- 특징1: 중복을 허용하지 않는다.
- 특징2: 순서가 없다. 따라서 인덱싱, 슬라이싱이 불가능하다. 

```python
s1 = {1, 2, 3, 4, 5}
s1 
# {1, 2, 3, 4, 5}

s2 = set([4, 5, 6, 7, 8])
s2
# {4, 5, 6, 7, 8}

s3 = set('hello')
s3
# {'e', 'h', 'l', 'o'}

s1_1 = {1, 2, 3, 3, 3}
s1_1
# {1, 2, 3}

# Set 인덱싱하는 방법
s1 = {1, 2, 3, 4, 5}
l1 = list(s1)			# 리스트로 타입 변환
l1
# [1, 2, 3, 4, 5]
l1[3]
# 4

s1 = {1, 2, 3, 4, 5}
t1 = list(s1)			# 튜플로 타입 변환
t1
# (1, 2, 3, 4, 5)
t1[3]
# 4
```



- 수학에서 집합의 개념과 같다. (교집합, 합집합, 차집합 등)
  - 교집합(intersection): 두 집합 A, B가 있을 때 두 집합 모두에 포함된 원소들로 이루어진 집합
  
  ```python
  s1 = {1, 2, 3, 4, 5}
  s2 = {4, 5, 6, 7, 8}
  s1.intersection(s2)
  # {4, 5}
  
  s1 & s2
  # {4, 5}
  ```
  
  
  
  - 합집합(union): 두 집합 A, B가 있을 때 두 집합 중 어느 한쪽에라도 속하는 원소들로 이루어진 집합
  
  ```python
  s1 = {1, 2, 3, 4, 5}
  s2 = {4, 5, 6, 7, 8}
  s1.union(s2)
  # {1, 2, 3, 4, 5, 6, 7, 8}
  
  s1 | s2
  # {1, 2, 3, 4, 5, 6, 7, 8}
  ```
  
  
  
  - 차집합(difference): 두 집합 A, B가 있을 때 'A - B' 라면 집합 A에만 속하는 원소들로 이루어진 집합
  
  ```python
  s1 = {1, 2, 3, 4, 5}
  s2 = {4, 5, 6, 7, 8}
  s1.difference(s2)
  # {1, 2, 3}
  
  s2.difference(s1)
  # {6, 7, 8}
  
  s1 - s2
  # {1, 2, 3}
  
  s2 - s1
  # {6, 7, 8}
  ```
  
  
  
  - 집합 관련 함수
  
    - add(추가할 값): 1개의 값 추가
  
    ```python
    s4 = {1, 2, 3}
    s4.add(4)
    s4
    # {1, 2, 3, 4}
    ```
  
    
  
    - update([추가할 값1, 추가할 값2, ...]): 여러 개의 값 한번에 추가
  
    ```python
    s5 = {1, 2, 3}
    s5.update([4, 5, 6])
    s5
    # {1, 2, 3, 4, 5, 6}
    ```
  
    



- 리스트, 튜플, 세트 간 타입 변환

```python
l = [1, 2, 3, 4]
type(l)
# list

t = tuple(l)
t
# (1, 2, 3, 4)
type(t)
# tuple

s = set(t)
s
# {1, 2, 3, 4}
type(s)
# set

l1 = list(s)
l1
# [1, 2, 3, 4]
type(l1)
# list
```



## 4. 딕셔너리 (Dictionary)

- Key와 Value를 한 쌍으로 가지는 자료형이다. (사전의 형식과 유사하다.)
- 리스트, 튜플과 달리 순차적으로 요소값을 찾지 않고 Key를 통해 Value를 찾는다.
- Key는 고유의 값으로 중복될 수 없다.
- Key값에 사용할 수 있는 것으로는 숫자, 문자열, 튜플이 있다. Value값에는 모든 값을 다 사용할 수 있다.

``` python
dic1 = {1: 'hello', 'name': 'Tom', 'fruit': ['apple', 'banana'], (3, 4): (5, 6, 7)}
dic1
# {1: 'hello', 'name': 'Tom', 'fruit': ['apple', 'banana'], (3, 4): (5, 6, 7)}

dic2 = {1: 1, 1: 2, 1: 3}
dic2
# {1: 3} 					# 마지막 하나의 Key:Value만 반환한다.
```



- 딕셔너리 쌍 추가하기

```python
dic3 = {'a': 1}
dic3
# {'a': 1}

dic3['b'] = 2
dic3
# {'a': 1, 'b': 2}
```



- 딕셔너리 요소 삭제하기

```python
dic3 = {'a': 1, 'b': 2}
dic3
# {'a': 1, 'b': 2}

del dic3['a']
dic3
# {'b': 2}
```



- 딕셔너리에서 Key를 사용해 Value 얻기

```python
dic1 = {1: 'hello', 'name': 'Tom', 'fruit': ['apple', 'banana'], (3, 4): (5, 6, 7)}
dic1
# {1: 'hello', 'name': 'Tom', 'fruit': ['apple', 'banana'], (3, 4): (5, 6, 7)}

dic1['fruit']
# ['apple', 'banana']

dic1[(3, 4)]
# (5, 6, 7)
```



- 딕셔너리 관련 함수

  - keys(): 딕셔너리에서 모든 키를 리스트로 반환한다.
  - values(): 딕셔너리에서 모든 값을 리스트로 반환한다.
  - items(): 딕셔너리에서 키와 값의 쌍을 튜플 형태로 반환한다.

  ```python
  dic1 = {1: 'hello', 'name': 'Tom', 'fruit': ['apple', 'banana'], (3, 4): (5, 6, 7)}
  dic1
  # {1: 'hello', 'name': 'Tom', 'fruit': ['apple', 'banana'], (3, 4): (5, 6, 7)}
  
  dic1.keys()
  # dict_keys([1, 'name', 'fruit', (3, 4)])
  
  dic1.values()
  # dict_values(['hello', 'Tom', ['apple', 'banana'], (5, 6, 7)])
  
  dic1.items()
  # dict_items([(1, 'hello'), ('name', 'Tom'), ('fruit', ['apple', 'banana']), ((3, 4), (5, 6, 7))])
  
  # 각각 반환된 값을 list() 함수를 사용해 리스트로 변환할 수 있다.
  ```

  

  - get(키): Key로 Value를 얻는다.

    ```python
    dic4 = {1: 'q', 2: 'w', 3: 'e', 4: 'r'}
    dic4
    # {1: 'q', 2: 'w', 3: 'e', 4: 'r'}
    
    dic4.get(3)
    # e
    ```

    - 딕셔너리[키] 방식과의 차이점

    ```python
    dic4 = {1: 'q', 2: 'w', 3: 'e', 4: 'r'}
    dic4
    # {1: 'q', 2: 'w', 3: 'e', 4: 'r'}
    
    dic4[5]
    # KeyError: 5
    
    dic4.get(5)
    # None
    
    dic4.get(5, '해당 키를 찾을 수 없습니다.')	# 없는 키를 찾을 때 미리 정한 값이 반환되도록 설정할 수 있다.
    # 해당 키를 찾을 수 없습니다.			
    ```

    

  - 키 in  딕셔너리: 해당 키가 딕셔너리에 있는 조사한다. (True 혹은 False 반환)

  ```python
  dic4 = {1: 'q', 2: 'w', 3: 'e', 4: 'r'}
  dic4
  # {1: 'q', 2: 'w', 3: 'e', 4: 'r'}
  
  1 in dic4
  # True
  
  5 in dic4
  # False
  ```

  

  - update(딕셔너리): 딕셔너리에 딕셔너리 데이터 추가한다.  

  ```python
  dic4 = {1: 'q', 2: 'w', 3: 'e', 4: 'r'}
  dic4
  # {1: 'q', 2: 'w', 3: 'e', 4: 'r'}
  
  dic5 = {5: 't'}
  dic4.update(dic5)
  dic4
  # {1: 'q', 2: 'w', 3: 'e', 4: 'r', 5: 't'}
  
  dic6 = {6: 'y', 7: 'u'} 	# 여러 키, 값 쌍을 추가할 수 있다.
  dic4.update(dic6) 
  dic4
  # {1: 'q', 2: 'w', 3: 'e', 4: 'r', 5: 't', 6: 'y', 7: 'u'}
  ```

  

  - clear(): 딕셔너리의 모든 항목을 삭제한다.

  ```python
  dic4 = {1: 'q', 2: 'w', 3: 'e', 4: 'r'}
  dic4
  # {1: 'q', 2: 'w', 3: 'e', 4: 'r'}
  
  dic4.clear()
  dic4
  # {}
  ```

  

