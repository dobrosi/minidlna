# Minidlna with icon feature.
Check conf file for more info about extended feature.
```
# set this directory path if you would like to replace default icon
# these icon files should be in this directory: sm.png, lrg.png, sm.jpg, lrg.jpg 
#icon_path=/usr/share/minidlna/icons
```

## Build
docker build -t dobrosi/minidlna .

## Run
docker run --rm -P dobrosi/minidlna

## Push
docker push dobrosi/minidlna
