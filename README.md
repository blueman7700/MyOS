# MyOS

docker: docker run --rm -it -v $(pwd):/root/env myos-buildenv
make: make build-x86_64
qemu: qemu-system-x86_64 -cdrom dist/x86_64/kernel.iso
