This is the Docker version of the commandline calculator for NFDRS Version 4.0 (2016)
Written By: Stuart Brittan and Matt Jolly
Version: 4.0 (23 Oct 2021)

Build it like this (may have to use 'sudo'):
docker build -t nfdrscli:4.0 .

Run it like this:
docker run --rm -e INCFG=/in/CCaccia.cfg -v D:\In:/in -v D:\Out:/out nfdrscli:4.0

This will give you an interactive shell with the container:
docker run -it -e INCFG=/in/CCaccia.cfg -v D:\In:/in -v D:\Out:/out nfdrscli:4.0 bash