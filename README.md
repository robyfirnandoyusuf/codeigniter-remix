 # :fire: codeigniter remix  

:smiley:
Codeigniter rasa laravel

### Tested on :  
- PHP 5.6 & PHP 7
- Ubuntu 16.04 LTS & Windows 7

### Requirement 
- PHP 5.6 >= greater
- PHP CLI

### Installation

 - Clone this repository
 - To verify if you have php cli installed, type into terminal/command prompt.
```
php -v
```
- if you're using linux , open terminal go to `application/cache` and `assets/`
```
sudo chmod -R 777 views and sudo chmod -R 777 uploads
```
- Import database in folder `database` 

### Configuration
 - Edit .env file on `application/.env`
```
DB_HOST		= "localheart"
DB_USERNAME	= "root"
DB_PASSWORD	= "root"
DB_NAME 	= "db"
DB_DRIVER 	= "mysqli" // mysqli or mysql or etc

```
### Using Console
go to root project > open terminal<br>
(Linux)<br>
![Screensh0t](https://raw.githubusercontent.com/robyfirnandoyusuf/codeigniter-remix/master/Screenshot_2018-10-29_08-22-15.png)
```
php index.php kejora help
```

(Windows)<br>
go to `php` directory of your localhost > open terminal 
![Screensh0t](https://raw.githubusercontent.com/robyfirnandoyusuf/codeigniter-remix/master/SS%20windows%20-%20test.jpeg)
```
php 'YOUR FULLPATH TO PROJECT' index.php kejora help
```

### Features
- Eloquent 
- Pretty var_dump `dd()`
- .env config
- Blade Template Engine
- Generate MVC and CRUD + upload

### Thanx to : 
- Avenir
- Muhammad Noval Nur Auliya' 

:grin: happy c0ding<br />
Remixed By Nando : [@NothingtoCoding - Roby Firnando Yusuf](mailto:nothingtocoding@gmail.com)
