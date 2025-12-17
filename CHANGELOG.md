# Changelog

All notable changes and learning progress for this Elixir syntax research project.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [Unreleased]

### Planned
- Further clean-up of existing examples and organization
- Testing with ExUnit
- Protocols and custom implementations
- Mix tasks
- OTP Basics (Agents and Tasks, GenServer, Supervisor)
- File I/O operations
- Process management
- Macros and metaprogramming
- `with` statement for error handling

## [0.5.0] - 2025-12-17

### Added
- Multi-file architecture with separate module files
- GitHub Actions workflow for automated testing (`.github/workflows/test.yml`)
- Consolidated `Fp.Runner` module as main entry point in `lib/fp.ex`
- Separate module files:
  - `lib/countdown.ex` for `Fp.Countdown`
  - `lib/guards_example.ex` for `Fp.GuardsExample`
  - `lib/zero_total_error.ex` for `Fp.ZeroTotalError`
  - `lib/module/core/example.ex` for `Fp.Module.Core.Example`
  - `lib/structs/user/*.ex` for all struct definitions

### Changed
- Renamed `Fp.Struct.*` modules to `Fp.Structs.*` for consistency
- Moved struct directory from `lib/struct/` to `lib/structs/`
- Consolidated runner code into `Fp.Runner.run()` in `lib/fp.ex`
- Removed separate `lib/structs/modules/runner.ex` file
- Updated all module references and aliases to use new naming

### Improved
- Completed documentation for `hello/0` function with proper doctest example
- Cleaned up README.md by removing duplicate roadmap entries
- Cleaned up CHANGELOG.md by removing redundant "Current Progress" section
- Better project organization following multi-file pattern

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
