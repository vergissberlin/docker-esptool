# docker-esptool

[![Docker Image CI](https://github.com/vergissberlin/docker-esptool/actions/workflows/docker-image.yml/badge.svg)](https://github.com/vergissberlin/docker-esptool/actions/workflows/docker-image.yml)

This repository contains a Dockerfile for building a container image that can be used to flash ESP8266 and ESP32 devices using the [esptool](https://github.com/espressif/esptool) utility.

## Usage

The container image is available on GitHub Packages. To use it, you need to authenticate with GitHub Packages.

You can do this by creating a personal access token and adding it to your `~/.docker/config.json` file. See [Authenticating to GitHub Packages](https://help.github.com/en/packages/using-github-packages-with-your-projects-ecosystem/configuring-docker-for-use-with-github-packages#authenticating-to-github-packages) for more information.

Once you have authenticated, you can use the container image like this:

```bash
docker run --rm -it \
    -v /dev/ttyUSB0:/dev/ttyUSB0 \
    -v $(pwd):/workdir \
    ghcr.io/vergissberlin/esptool \
    esptool.py --chip esp32 --port /dev/ttyUSB0 --baud 460800 write_flash -z 0x1000 example.bin
```

You have to replace the path to the serial device with the path to your serial device. You can find the path to your serial device by running `ls /dev/tty*` on your host system.

## Building the image

To build the image yourself, clone this repository and run the following command:

```bash
docker build -t esptool .
```

## License

This project is licensed under the MIT License.

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to me. 

## Authors

* **Tiryoh** - *Initial work* [Tiryoh](https://github.com/Tiryoh)
* **Vergissberlin** - *GitHub Images* - [vergissberlin](https://github.com/vergissberlin)
