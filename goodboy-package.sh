# Usage: put this script into a directory containing
# .exe files built with MSYS2. Then run it using MSYS2.
for i in $(seq 3)
do
    for bin in $(ntldd -R *exe | grep -i mingw | cut -d">" -f2 | cut -d" " -f2)
    do
        cp -vu "$bin" .
    done
done
