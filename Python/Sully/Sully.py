#!/usr/bin/env python3

import sys, subprocess

def main() -> int:
    idx: int = 5
    if idx < 0:
        sys.exit(0)
    s = "#!/usr/bin/env python3%c%cimport sys, subprocess%c%cdef main() -> int:%c    idx: int = %d%c    if idx < 0:%c        sys.exit(0)%c    s = %c%s%c%c    f = open(f'Sully_{idx}.py', 'w')%c    f.write(s %% (10,10,10,10,10,idx - 1,10,10,10,34,s,34,10,10,10,10,10,10,10,10))%c    f.close%c    subprocess.Popen(['python3', f'Sully_{idx}.py'])%c%cif __name__ == '__main__':%c    sys.exit(main())%c"
    f = open(f'Sully_{idx}.py', 'w')
    f.write(s % (10,10,10,10,10,idx - 1,10,10,10,34,s,34,10,10,10,10,10,10,10,10))
    f.close
    subprocess.Popen(['python3', f'Sully_{idx}.py'])

if __name__ == '__main__':
    sys.exit(main())
