# qbittorrent-docker

Rebuild of [hotio/qbittorrent](https://hotio.dev/containers/qbittorrent/) with a
patched qBittorrent that caches serialized torrent data in the WebAPI, which
drastically reduces `torrents/info` response times on instances with many
thousands of torrents.

The image is identical to `ghcr.io/hotio/qbittorrent:release-5.2.3` except the
libtorrent-v1 `qbittorrent-nox` binary is replaced with one built from
[nitrobass24/qBittorrent@serialization-cache-5.2.3](https://github.com/nitrobass24/qBittorrent/tree/serialization-cache-5.2.3)
via [userdocs/qbittorrent-nox-static](https://github.com/userdocs/qbittorrent-nox-static).

Use with `LIBTORRENT=v1` only — the v2 binary is stock.

```yaml
image: ghcr.io/nitrobass24/qbittorrent:release-5.2.3-cache
```
