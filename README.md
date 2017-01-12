# larafolder

larafolder its a small bash script to add the needed permissions to a laravel project folder. Its based on a solution posted at http://stackoverflow.com/questions/30639174/file-permissions-for-laravel-5-and-others
### Installation

```sh
$ wget https://github.com/arieltoledo/larafolder.git
```
Apply permission to execute:

```sh
$ chmod +x /path/to/larafolder.sh
```
Optional: if you want to use the script globally, then you need to copy the file to your /usr/local/bin directory, is better if you copy it without the .sh extension:

```sh
$ sudo cp /path/to/larafolder.sh /usr/local/bin/larafolder
```
### Use

```sh
$ sudo larafolder /path/to/laravel-project
```

or just 
```sh
$ sudo larafolder
```
the script will ask for the folder location

### Development

Want to contribute? Please do !!!!