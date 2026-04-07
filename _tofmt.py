import subprocess
import json
import sys

info = subprocess.check_output('yq . _data/info.yml', shell=True)
info = eval(info)
def to_fmt(cur,fmt):
    if isinstance(cur, str):
        res = subprocess.check_output(f'pandoc --wrap none -f markdown -t {fmt}', shell=True, input=cur.encode()).decode()
        res = res.strip()
        if fmt == 'html':
            res = res.removeprefix('<p>').removesuffix('</p>')
        return res
    if isinstance(cur, list):
        return [to_fmt(e,fmt) for e in cur]
    if isinstance(cur, dict):
        return { k : to_fmt(v,fmt) for k,v in cur.items() }
    return cur

print(json.dumps(to_fmt(info,sys.argv[1]),indent=4))
