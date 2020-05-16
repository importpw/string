# string

String manipluation functions for shell scripts.


## API

### `string_lower`

```bash
#!/usr/bin/env import
import "string"

echo iNpUt | string_lower
# input
```

### `string_upper`

```bash
#!/usr/bin/env import
import "string"

echo InPuT | string_upper
# INPUT
```

### `string_includes`

```bash
#!/usr/bin/env import
import "string"

print_string_includes() {
  if string_includes "$1" "$2"; then
    echo "'$1' includes '$2'"
  else
    echo "'$1' does not include '$2'"
  fi
}

print_string_includes "hello" "el"
# 'hello' includes 'el'

print_string_includes "hello" "al"
# 'hello' does not include 'al'"
```

### `string_starts_with`

```bash
#!/usr/bin/env import
import "string"

print_string_starts_with() {
  if string_starts_with "$1" "$2"; then
    echo "'$1' starts with '$2'"
  else
    echo "'$1' does not start with '$2'"
  fi
}

print_string_starts_with "hello" "hel"
# 'hello' starts with 'hel'

print_string_starts_with "hello" "hela"
# 'hello' does not start with 'hela'"
```

### `string_ends_with`

```bash
#!/usr/bin/env import
import "string"

print_string_ends_with() {
  if string_ends_with "$1" "$2"; then
    echo "'$1' ends with '$2'"
  else
    echo "'$1' does not end with '$2'"
  fi
}

print_string_ends_with "hello" "llo"
# 'hello' ends with 'llo'

print_string_ends_with "hello" "lla"
# 'hello' does not end with 'lla'"
```
