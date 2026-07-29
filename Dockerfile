FROM ghcr.io/hotio/qbittorrent:release-5.2.3

# Replace the libtorrent-v1 binary with the patched build (serialized torrents cache).
# The stock libtorrent-v2 binary is left untouched; this image is only intended
# for use with LIBTORRENT=v1.
COPY --chmod=755 qbittorrent-nox /app/qbittorrent-nox-lib1
