#import "@preview/polylux:0.4.0": *

#set page(paper: "presentation-16-9")
#set text(size: 25pt, font: "NanumMyeongjo")

#slide[
  = Phoenix

  2025-11-05
]

#slide[
  == 기초 환경 설정

  - https://github.com/KWEBofficial/2025-2R-phoenix-study
    - PR로 주차별 과제 제출
    - PR에서 테스트 수행
    - 예시: #link("https://github.com/KWEBofficial/2025-2R-phoenix-study/pull/14")[PR\#14]
]

#slide[
  == 학습한 내용

  - 기초 Type
  - Pattern Matching
]

#slide[
  === 기초 Type

  - REPL

  #figure(image("./asset/basic-type.png"))
]

#slide[
  === 기초 Type

  - integer
  - float
  - boolean
    - short-circuit
  - atom
  - string
  - list
  - tuple
]

#slide[
  === Pattern Matching

  - 동작만 생각하면 JavaScript에서 Destructing Assignment와 유사
    - Value에도 matching 가능하다는 특징이 있음

  #figure(image("asset/pattern-matching.png"))
]

#slide[
  == 과제

  - Pattern Matching을 사용해서 list의 길이를 구하는 함수를 만들어보기

  ```elixir
  defmodule ListUtils do
    def my_length([]), do: 0
    def my_length([_ | tail]), do: 1 + my_length(tail)
  end
  ```
]
