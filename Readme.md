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
