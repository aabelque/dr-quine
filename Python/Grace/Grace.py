#!/usr/bin/env python3
#com
s = "#!/usr/bin/env python3%c#com%cs = %c%s%c%cm = %cf = open('Grace_kid.py', 'w'); f.write(s %% (10,10,34,s,34,10,34,34,10,10,10)); f.close%c%cfn = exec(m)%cfn%c"
m = "f = open('Grace_kid.py', 'w'); f.write(s % (10,10,34,s,34,10,34,34,10,10,10)); f.close"
fn = exec(m)
fn
