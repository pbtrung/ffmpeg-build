#!/usr/bin/env bash

FFMPEG_VERSION=7.0.2
FFMPEG_TARBALL=ffmpeg-$FFMPEG_VERSION.tar.gz
FFMPEG_TARBALL_URL=https://ffmpeg.org/releases/$FFMPEG_TARBALL

FFMPEG_CONFIGURE_FLAGS=(
    --disable-shared

    --disable-programs

    --disable-doc
    
    --disable-debug
    --disable-avdevice
    --disable-swscale
    --disable-avfilter
    --disable-postproc
    --disable-pixelutils
    --disable-network

    --disable-everything

    --disable-alsa
    --disable-zlib
    --disable-lzma
    --disable-bzlib
    --disable-iconv
    --disable-libxcb
    --disable-nvenc
    --disable-videotoolbox
    --disable-audiotoolbox
    --disable-sdl2

    --enable-static
    --enable-pic
    
    --enable-protocol=file
    --enable-protocol=pipe

    --enable-demuxer=aac
    --enable-demuxer=ape
    --enable-demuxer=flac
    --enable-demuxer=mp3
    --enable-demuxer=ogg
    --enable-demuxer=tak
    --enable-demuxer=tta
    --enable-demuxer=wav
    --enable-demuxer=wv

    --enable-decoder=aac
    --enable-decoder=aac_latm
    --enable-decoder=alac
    --enable-decoder=ape
    --enable-decoder=flac
    --enable-decoder=mp3
    --enable-decoder=mp3float
    --enable-decoder=opus
    --enable-decoder=tak
    --enable-decoder=tta
    --enable-decoder=vorbis
    --enable-decoder=wavpack

    --enable-parser=aac
    --enable-parser=aac_latm
    --enable-parser=flac
    --enable-parser=opus
    --enable-parser=mpegaudio
    --enable-parser=tak
    --enable-parser=vorbis

    --enable-libsoxr
)
