# function pyden {
#     uv python list --only-installed
#     pyenv versions
#     brew list --versions | grep python
#     echo "For your machine:" 
#     echo "  - 'python' runs $(python --version) from $(which python)"
#     echo "  - 'python3' runs $(python3 --version) from $(which python)"
# }

import re
import subprocess


def shell(*args):
    results = subprocess.run([*args], capture_output=True)
    return results.stdout.decode().splitlines()

def get_uv():
    for line in shell("uv", "python", "list", "--only-installed"):
        # _arch, location = line.split()
        yield line.rsplit("/")[-1]

def get_pyenv():
    for line in shell("pyenv", "versions"):
        # update
        version = re.match("x.x.x", line)
        if version:
            yield version

if __name__ == "__main__":
    for x in get_uv():
        print(x)
    for x in get_pyenv():
        print(x)
