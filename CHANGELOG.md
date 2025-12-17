# Changelog

All notable changes and learning progress for this Elixir syntax research project.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [Unreleased]

### Planned
- Testing with ExUnit
- Protocols and custom implementations
- OTP Basics (GenServer, Supervisor)
- File I/O operations
- Process management
- Agents and Tasks

## [0.4.0] - 2025-12-17

### Added
- Nested module structures (`Fp.Module.Core.Example`)
- Named functions in modules with `def`
- Struct definitions with `defstruct`
- Multiple struct pattern examples:
  - Empty structs with nil defaults (`Fp.Struct.User.Empty`)
  - Structs with default values (`Fp.Struct.User.DefaultValue`)
  - Mixed default and required fields (`Fp.Struct.User.DefaultValueAnother`)
  - Enforced keys with `@enforce_keys` (`Fp.Struct.User.EnforcedKeys`)
- Type specifications for structs with `@type`
- Union types in struct specs (`:aws | :google | :microsoft`)
- Module aliases with `alias` for cleaner code
- Struct operations: creation, updating with `|`, field access
- `Fp.Structs.Modules.Runner` module for demonstrating struct usage
- Tuple comprehensions with multiple generators
- Random number generation with `:rand.uniform/1`

### Documented
- Note about structs not implementing Enumerable protocol
- Usage of `Map.from_struct/1` for enumeration
- Pattern for organizing structs and their usage modules separately

### Changed
- Extended comprehension examples with tuple creation

## [0.3.0] - 2025-12-15

### Added
- Pipe operator examples with data transformation
- Control flow statements: `if`, `unless`, `case`, `cond`
- Guards in functions and anonymous functions
- Custom exception handling with `ZeroTotalError`
- Error tuples pattern: `{:ok, value}` and `{:error, reason}`
- Advanced Enum operations: `reduce`, `find`, `any?`, `filter`, `join`
- String operations pipeline example
- Temperature checker with `cond`
- `GuardsExample` module

### Changed
- Translated all comments from Polish to English
- Updated documentation to reflect all implemented topics

## [0.2.0] - 2025-12-12

### Added
- Map operations with nested structures
- Receipt/invoice example with line items
- Keyword lists for function parameters
- List comprehensions with ranges
- Enum module exploration
- Docker configuration example
- Date literals with `~D[YYYY-MM-DD]`

## [0.1.0] - 2025-12-10

### Added
- Initial project setup with Mix
- Module basics with `defmodule`
- Function documentation with `@doc` and `@moduledoc`
- Type specifications with `@spec`
- Recursive `count_down/1` function
- Pattern matching examples
- Basic data types exploration
- List operations (head/tail, concatenation)
- ASCII character codes
- Range syntax

## [Current Progress] - 2025-12-15

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

#### Pipe Operator
- Chaining operations with `|>`
- Data transformation pipelines
- Text processing example: upcase → split → reverse → join

#### Control Flow
- `if/do/end` statements with boolean expressions
- `unless` for negative conditions (noted as deprecated)
- `case` statements with pattern matching and guards
- `cond` for multiple conditions (alternative to nested ifs)

#### Guards
- Using guards in function definitions with `when`
- Guards in anonymous functions
- Multiple guard clauses for different conditions
- `GuardsExample` module demonstrating guard patterns

#### Error Handling
- Custom exceptions with `defexception`
- `ZeroTotalError` custom exception module
- Error tuples: `{:ok, value}` and `{:error, reason}`
- Using `raise` for exceptions
- Pattern matching on error results

#### Advanced Enumeration
- `Enum.reduce/3` for aggregation
- `Enum.find/2` for searching
- `Enum.any?/2` for existence checks
- `Enum.filter/2` for filtering collections
- `Enum.join/2` for string concatenation
- Combining multiple `Enum` operations with pipes

#### String Operations
- `String.upcase/1` for case conversion
- `String.split/1` for tokenization
- `String.reverse/1` for reversing strings
- Combining string operations in pipelines

#### Modules & Named Functions
- Nested module definitions (`Fp.Module.Core.Example`)
- Named function definitions with `def`
- Module documentation with `@moduledoc`
- Module aliases with `alias` keyword
- Organizing related functionality in modules

#### Structs
- Struct definition with `defstruct`
- Empty struct fields (`:field` or `field: nil`)
- Default values for struct fields
- Enforcing required keys with `@enforce_keys`
- Type specifications for structs with `@type t`
- Union types in type specs (`:atom1 | :atom2 | :atom3`)
- Creating struct instances with `%ModuleName{}`
- Updating structs with `%{struct | field: new_value}` syntax
- Accessing struct fields with dot notation
- Pattern matching on structs

#### Comprehensions (Extended)
- Multiple generators in comprehensions
- Creating tuples with comprehensions
- Filtering comprehension results
- Extracting values from keyword lists

### Code Examples Implemented
- `count_down/1` function with recursion and pattern matching
- Type exploration with various data structures
- Docker configuration example with keyword lists
- Receipt/invoice structure with nested maps and line items
- Receipt total calculation using `Enum.reduce`
- Custom error handling with `check_total` functions
- `ZeroTotalError` custom exception module
- Text processing pipeline with pipes
- Temperature checker with `cond`
- `GuardsExample` module with guard demonstrations
- List comprehensions with filtering (values > 8000)
- Tuple comprehensions with multiple generators
- `Fp.Module.Core.Example` with named function `fly/0`
- `Fp.Struct.User.Empty` - empty struct example
- `Fp.Struct.User.DefaultValue` - struct with default values
- `Fp.Struct.User.DefaultValueAnother` - mixed fields struct
- `Fp.Struct.User.EnforcedKeys` - typed struct with required fields
- `Fp.Structs.Modules.Runner` - demonstration module for all struct patterns
- Struct creation, update, and field access patterns
- Using `:rand.uniform/1` for random numbers
