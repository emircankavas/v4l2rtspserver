import os

def get_raspberry_version():
    with open("/sys/firmware/devicetree/base/model") as hw_file:
        if "Raspberry Pi 3" in hw_file.read():
            version = 3
        else:
            version = 4
    return version

if __name__ == "__main__":
    version = get_raspberry_version()
    os.system("/home/ubuntu/v4l2rtspserver/v4l2rtspserver_rasp{} -W 1024 -H 768 -F 15 -P 8554 /dev/video0".format(version))