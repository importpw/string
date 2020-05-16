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

if string_includes "hello" "el"; then
  echo "'hello' includes 'el'"
else
  echo "'hello' does not include 'el'"
fi
# 'hello' includes 'el'

if string_includes "hello" "al"; then
  echo "'hello' includes 'al'"
else
  echo "'hello' does not include 'al'"
fi
# 'hello' does not include 'al'"
```
