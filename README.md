# Minidlna with custom icon feature.
Check conf file for more info about extended feature.
```
# set this directory path if you would like to replace default icon
# these icon files should be in this directory: sm.png, lrg.png, sm.jpg, lrg.jpg 
#icon_path=/usr/share/minidlna/icons
```

## Build
```terminal
git clone https://github.com/dobrosi/minidlna.git
cd minidlna

docker build -t dobrosi/minidlna .
```

## Run
```terminal
docker run -d --network host -P --name minidlna dobrosi/minidlna
```

## Run with volumes
```terminal
docker run -d --network host -P --name minidlna -v /home/pi/minidlna/:/home/pi/minidlna -v /etc/minidlna.conf:/etc/minidlna/minidlna.conf dobrosi/minidlna
```

## Push
```terminal
docker push dobrosi/minidlna
```
