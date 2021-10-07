#!/usr/bin/env python3

import sys

# com1

def colleen(a: str) -> None:
    print(a % repr(a))

def main() -> int:
    # com2
    a = f"#!/usr/bin/env python3\n\nimport sys\n\n# com1\n\ndef colleen(a: str) -> None:\n    print(a %% repr(a))\n\ndef main() -> int:\n    # com2\n    a = f%s\n    colleen(a)\n    return 0\n\nif __name__ == '__main__':\n    sys.exit(main())"
    colleen(a)
    return 0

if __name__ == '__main__':
    sys.exit(main())
