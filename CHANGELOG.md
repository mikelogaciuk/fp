# Changelog

All notable changes and learning progress for this Elixir syntax research project.

## [Current Progress] - 2025-12-12

### Covered Topics

#### Module Basics
- Module definition with `defmodule`
- Module documentation with `@moduledoc`
- Function documentation with `@doc`
- Type specifications with `@spec`

#### Functions & Recursion
- Function definitions with `def`
- Pattern matching in function parameters
- Guard clauses with `when`
- Recursive function implementation (countdown example)
- Anonymous functions (lambdas) with `fn`

#### Data Types
- **Integers**: decimal and hexadecimal notation
- **Floats**: decimal numbers
- **Atoms**: symbolic constants (`:atom`)
- **Tuples**: fixed-size collections `{1, 2, 3}`
- **Lists**: dynamic collections `[1, 2, 3]`
- **Maps**: key-value pairs `%{key: value}`

#### List Operations
- Head and tail destructuring `[head | tail]`
- Pattern matching in destructuring
- List concatenation with `++`
- ASCII character codes with `?char`
- Charlist representation

#### Ranges & Enumeration
- Range syntax `1..5`
- `Enum.map/2` for transformations
- List comprehensions with `for`

#### Keyword Lists
- Syntax: `[key: value, key2: value2]`
- Usage as function options
- Accessing values with `opts[:key]`
- Nested keyword lists

#### Maps & Structs
- Map creation with `%{}`
- Accessing map values with `.` notation
- Nested maps (receipt example with lines)
- Date literals with `~D[YYYY-MM-DD]`

#### Advanced Pattern Matching
- Destructuring in function parameters
- Extracting specific elements from lists
- Conditional extraction with comprehensions

### Code Examples Implemented
- `count_down/1` function with recursion and pattern matching
- Type exploration with various data structures
- Docker configuration example with keyword lists
- Receipt/invoice structure with nested maps
