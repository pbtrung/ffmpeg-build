#!/usr/bin/env bash

FFMPEG_VERSION=7.0.2
FFMPEG_TARBALL=ffmpeg-$FFMPEG_VERSION.tar.gz
FFMPEG_TARBALL_URL=https://ffmpeg.org/releases/$FFMPEG_TARBALL

FFMPEG_CONFIGURE_FLAGS=(
    --disable-shared
    --enable-static
    --enable-pic

    --disable-doc
    --disable-debug
    --disable-avdevice
    --disable-swscale
    --disable-avfilter
    --disable-programs
    --disable-network
    --disable-muxers
    --disable-demuxers
    --disable-zlib
    --disable-lzma
    --disable-bzlib
    --disable-iconv
    --disable-libxcb
    --disable-bsfs
    --disable-filters
    --disable-parsers
    --disable-indevs
    --disable-outdevs
    --disable-encoders
    --disable-decoders
    --disable-hwaccels
    --disable-nvenc
    --disable-videotoolbox
    --disable-audiotoolbox
    --disable-filters
    
    --disable-protocols
    --enable-protocol=file
    --enable-protocol=pipe

    --enable-demuxer=aac
    --enable-demuxer=aiff
    --enable-demuxer=ape
    --enable-demuxer=flac
    --enable-demuxer=mp3
    --enable-demuxer=ogg
    --enable-demuxer=pcm_f64be
    --enable-demuxer=pcm_f64le
    --enable-demuxer=pcm_f32be
    --enable-demuxer=pcm_f32le
    --enable-demuxer=pcm_s32be
    --enable-demuxer=pcm_s32le
    --enable-demuxer=pcm_s24be
    --enable-demuxer=pcm_s24le
    --enable-demuxer=pcm_s16be
    --enable-demuxer=pcm_s16le
    --enable-demuxer=pcm_s8
    --enable-demuxer=pcm_u32be
    --enable-demuxer=pcm_u32le
    --enable-demuxer=pcm_u24be
    --enable-demuxer=pcm_u24le
    --enable-demuxer=pcm_u16be
    --enable-demuxer=pcm_u16le
    --enable-demuxer=pcm_u8
    --enable-demuxer=rm
    --enable-demuxer=tak
    --enable-demuxer=tta
    --enable-demuxer=wav
    --enable-demuxer=wv
    --enable-demuxer=dsf

    --enable-decoder=aac
    --enable-decoder=aac_latm
    --enable-decoder=alac
    --enable-decoder=als
    --enable-decoder=ape
    --enable-decoder=flac
    --enable-decoder=mp3
    --enable-decoder=mp3adu
    --enable-decoder=mp3adufloat
    --enable-decoder=mp3float
    --enable-decoder=mp3on4
    --enable-decoder=mp3on4float
    --enable-decoder=mpc7
    --enable-decoder=mpc8
    --enable-decoder=opus
    --enable-decoder=ralf
    --enable-decoder=tak
    --enable-decoder=tta
    --enable-decoder=vorbis
    --enable-decoder=wavpack

    --enable-decoder=pcm_f32be
    --enable-decoder=pcm_f32le
    --enable-decoder=pcm_f64be
    --enable-decoder=pcm_f64le
    --enable-decoder=pcm_lxf
    --enable-decoder=pcm_s8
    --enable-decoder=pcm_s8_planar
    --enable-decoder=pcm_s16be
    --enable-decoder=pcm_s16be_planar
    --enable-decoder=pcm_s16le
    --enable-decoder=pcm_s16le_planar
    --enable-decoder=pcm_s24be
    --enable-decoder=pcm_s24daud
    --enable-decoder=pcm_s24le
    --enable-decoder=pcm_s24le_planar
    --enable-decoder=pcm_s32be
    --enable-decoder=pcm_s32le
    --enable-decoder=pcm_s32le_planar
    --enable-decoder=pcm_u8
    --enable-decoder=pcm_u16be
    --enable-decoder=pcm_u16le
    --enable-decoder=pcm_u24be
    --enable-decoder=pcm_u24le
    --enable-decoder=pcm_u32be
    --enable-decoder=pcm_u32le

    --enable-parser=aac
    --enable-parser=aac_latm
    --enable-parser=dca
    --enable-parser=flac
    --enable-parser=mpegaudio
    --enable-parser=tak
    --enable-parser=vorbis

    --enable-libsoxr
)
