# Fp

![fp](./img/fp.png)

- [Fp](#fp)
  - [Description](#description)
  - [Usage](#usage)
  - [Topics Covered](#topics-covered)
    - [✅ Completed](#-completed)
  - [Roadmap](#roadmap)
    - [🎯 Next Topics to Explore](#-next-topics-to-explore)
  - [Resources](#resources)

## Description

This code is for re-learning and re-searching Elixir syntax purposes. A personal playground for exploring Elixir language features and patterns.

`Code Claude 4.5` was used for CHANGELOG.md and README.md updates and planning.

## Usage

To run the code:

```shell
mix run .\lib\fp.ex
```

## Topics Covered

### ✅ Completed

- **Module Basics**: `defmodule`, documentation with `@moduledoc` and `@doc`, type specs with `@spec`, nested modules
- **Functions & Recursion**: pattern matching, guards with `when`, recursive implementations, named functions
- **Data Types**: integers (decimal, hex), floats, atoms, tuples, lists, maps
- **List Operations**: head/tail destructuring, concatenation with `++`, ASCII codes with `?char`
- **Ranges & Enumeration**: ranges `1..5`, `Enum.map`, `Enum.each`, `Enum.find`, `Enum.reduce`, `Enum.any?`, `Enum.filter`, `Enum.join`
- **Keyword Lists**: function options, nested structures, accessing with `opts[:key]`
- **Maps**: creation, dot notation access, nested maps with line items, date literals `~D[YYYY-MM-DD]`
- **Pattern Matching**: destructuring in lists and function parameters
- **Pipe Operator**: chaining operations with `|>`transforming data through multiple steps
- **Control Flow**: `if/do`, `unless`, `case` with guards, `cond` for multiple conditions
- **Guards**: in function definitions and anonymous functions
- **Error Handling**: custom exceptions with `defexception`, error tuples `{:ok, value}` and `{:error, reason}`
- **Comprehensions**: `for` with filters and collections, extracting values from keyword lists, tuple creation
- **String Operations**: `String.upcase`, `String.split`, `String.reverse`
- **Structs**: `defstruct` with empty fields, default values, enforced keys with `@enforce_keys`, type specifications with `@type`
- **Module Organization**: nested modules, module aliases with `alias`, separating struct definitions from usage
- **Struct Operations**: creation, updating with `|` syntax, accessing fields with dot notation, pattern matching

## Roadmap

### 🎯 Next Topics to Explore

- **Further clean-up** of existing examples and organization
- **Testing**: ExUnit framework, test cases, assertions
- **Protocols**: polymorphism, implementing protocols for custom types
- **Behaviors**: defining interfaces with `@callback`, implementing behaviours
- **File I/O**: reading, writing, streams
- **Processes**: spawning, message passing, `receive`
- **Agents & Tasks**: simple state management and async
- **OTP Basics**: GenServer, Supervisor, Application
- **Mix Tasks**: custom build tasks
- **Macros**: metaprogramming basics
- **With Statement**: elegant error handling
operations

## Resources

See [CHANGELOG.md](CHANGELOG.md) for detailed progress and examples.
