# Copilot Instructions for Fp

## Project Overview

This is a **personal learning playground** for exploring Elixir language features and patterns. Modules are organized in separate files under `lib/` and executed via a Runner pattern from [lib/fp.ex](../lib/fp.ex). This is intentional for learning - not production code structure.

## Critical Context

- **Multi-file architecture**: Each module concept lives in its own file under `lib/`, orchestrated by `lib/fp.ex` using Runner modules
- **Runner pattern**: `Fp.Structs.Modules.Runner` and similar modules execute examples (structs can't be used in the file that defines them)
- **No application runtime**: This is a script-style project, not an OTP application - no GenServers or processes (yet)
- **Learning progression**: Code is organized by topic mastery with examples extracted to dedicated files (see CHANGELOG.md for history)

## Development Workflow

### Running Code

```shell
mix run  # Executes all examples in lib/fp.ex sequentially
```

### Testing

Currently minimal: `test/fp_test.exs` has placeholder tests. ExUnit is on the roadmap but not actively used.

### Building

Standard Mix build in dev mode. Compiled output in `_build/dev/lib/fp/ebin/`

## Code Conventions

### Module Organization

- **Separate files per module** for grouping related concepts:
  - `lib/module/core/example.ex` - standalone function examples
  - `lib/struct/user/*.ex` - struct pattern demonstrations
  - `lib/zero_total_error.ex` - custom exceptions
  - `lib/structs/modules/runner.ex` - execution wrapper for struct examples
- **File naming**: snake_case filenames matching module names (e.g., `Fp.ZeroTotalError` → `zero_total_error.ex`)
- **Main entry**: `lib/fp.ex` coordinates execution by calling `.run()` methods on runner modules

### Pattern Matching & Guards

- Prefer multiple function clauses with guards over nested conditionals:
  ```elixir
  def guarded_func(x) when x > 0, do: "Positive"
  def guarded_func(x) when x < 0, do: "Negative"
  def guarded_func(0), do: "Zero"
  ```

### Error Handling

- Use error tuples (`{:ok, value}` / `{:error, reason}`) for expected failures
- Custom exceptions with `defexception` for exceptional cases (see `Fp.ZeroTotalError`)

### Data Structures

- **Keyword lists** for function options (see `docker_opts` example with nested structure)
- **Maps** for structured data with known fields (see `receipt` with nested `lines` list)
- **Structs** for type-safe data with enforced keys:
  - `@enforce_keys [:id]` for required fields
  - Type specs using `@type t :: %__MODULE__{...}` with union types like `:aws | :google | :microsoft`

### Style Notes

- Comprehensive inline documentation with `@moduledoc` and `@doc`
- `@spec` type annotations for all public functions
- Heavy use of pipe operator `|>` for data transformation chains
- Comments marked with section headers like `# Maps`, `# Pipe operator & Control flow`
- `IO.inspect` with `:label` option for debugging context

## Key Examples to Reference

Currently in transition: examples are being migrated from the monolithic `lib/fp.ex` to dedicated module files. Reference patterns:

- **Recursion**: `count_down/1` function shows pattern matching with guards
- **List destructuring**: `[hd | tl]` pattern and prepend syntax
- **Complex maps**: `receipt` structure with nested line items
- **Pipe chains**: `some_text` transformation demonstrates multi-step processing
- **Comprehensions**: Multiple generators in tuple creation, filtering from keyword lists
- **Struct enforcement**: `Fp.Struct.User.EnforcedKeys` shows full type safety with `@enforce_keys` and `@type`

## What's NOT Here Yet

Per README roadmap, the following are planned but unimplemented:

- Testing framework usage (ExUnit setup exists but unused)
- Protocols and behaviors
- File I/O
- Process management
- OTP components (GenServer, Supervisor)
- Mix tasks

**Don't suggest implementing these unless explicitly requested** - this is a guided learning progression.

## Documentation Standards

All learning progress tracked in CHANGELOG.md with version-based milestones. When adding new examples:

1. Create a new file under `lib/` following the nested module structure (e.g., `lib/module/topic.ex`)
2. Add a Runner module with `.run()` method if the code needs execution demonstration
3. Call the runner from `lib/fp.ex` main entry point
4. Update CHANGELOG.md with new patterns learned
5. Update README.md's "Topics Covered" checklist if a major category is completed
