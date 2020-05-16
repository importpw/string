#!/usr/bin/env import
set -euo pipefail

import "assert@2.1.3"
source "./string.sh"

# string_lower
assert_equal "$(echo AaBbCc123 | string_lower)" "aabbcc123"

# string_upper
assert_equal "$(echo AaBbCc123 | string_upper)" "AABBCC123"

# string_sub
assert_equal "$(echo aabbcc | string_sub b d)" "aadbcc"
assert_equal "$(echo aabbcc | string_sub b '/')" "aa/bcc"

# string_gsub
assert_equal "$(echo aabbcc | string_gsub b '/')" "aa//cc"

# string_includes
assert_exit 0 string_includes "abc" "a"
assert_exit 0 string_includes "abc" "b"
assert_exit 0 string_includes "abc" "ab"
assert_exit 0 string_includes "abc" "bc"
assert_exit 1 string_includes "abc" "d"

# string_starts_with
assert_exit 0 string_starts_with "abc" "a"
assert_exit 1 string_starts_with "abc" "b"
assert_exit 0 string_starts_with "/home/me/foo.txt" "/home/me"
assert_exit 1 string_starts_with "/root/foo.txt" "/home/me"

# string_ends_with
assert_exit 1 string_ends_with "abc" "a"
assert_exit 1 string_ends_with "abc" "b"
assert_exit 0 string_ends_with "abc" "c"
assert_exit 0 string_ends_with "abc" "bc"

echo "Tests passed!"
