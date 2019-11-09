This demonstrates problems building an angular dart app on arm32 (specifically a Raspberry Pi).
I used docker to demonstrate this but have had similar problems on the native host.

```
# This works on an x86x machine:
$ docker build -f Dockerfile.x86 .
...
[INFO] Succeeded after 20.2s with 73 outputs (2862 actions)

# This fails on a raspberry pi:
$ docker build -f Dockerfile.arm .
[SEVERE]build_web_compilers:sdk_js_copy on package:build_web_compilers/$lib$: FileSystemException: Cannot open file, path = '/dart-sdk/lib/dev_compiler/kernel/amd/dart_sdk.js' (OS Error: No such file or directory, errno = 2)
```

