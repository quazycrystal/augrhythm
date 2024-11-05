import builtins

devices = subprocess.check_output("ffmpeg -list_devices true -f dshow -i dummy", shell=True)
print(devices.decode())
