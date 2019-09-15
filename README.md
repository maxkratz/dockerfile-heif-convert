# shellbro/heif-convert

Convert all HEIF images (*.heic) from `/input` dir to JPG (*.jpg) images saved
to `/output` dir.

```
docker run --rm \
-v /some/host/path/input:/input -v /some/host/path/output:output \
shellbro/heif-convert
```
