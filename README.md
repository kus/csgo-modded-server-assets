# CS:GO Modded Server Maps and FastDL

## About

This repo houses the maps and acts as a FastDL for [CS:GO Modded Server](https://github.com/kus/csgo-modded-server).

## Install assets on my server

```
# cd to "csgo" parent directory so you are in the same folder as srcds
cd /home/steam/csgo/
curl --silent --output "automate.sh" "https://raw.githubusercontent.com/kus/csgo-modded-server-assets/master/automate.sh" && chmod +x automate.sh && bash automate.sh
```

## Contributing

### Downloading maps

- Search [Steam Workshop](https://steamcommunity.com/app/730/workshop/) for a map
- Copy the URL of the map you want to add i.e. `https://steamcommunity.com/sharedfiles/filedetails/?id=125995702`
- Paste it in [Steam Workshop Downloader](http://steamworkshop.download/)
- Click **Download**
- Click **Download: aim_redline** [Counter-Strike: Global Offensive]
- Rename `.bsp` to `.zip` on the file
- Extract it and you should have a new `.bsp` file, this is the map file

### Adding to the repo

- Clone this repo
- Add your map(s) to the `csgo/maps` folder
- Run `./compress.sh` in the root folder
- _The map **MUST** be compressed (.bz2) and *CANNOT* be 100MB or larger_
- Commit
- Push
- Do a pull request

## License

See `LICENSE` for more details.
