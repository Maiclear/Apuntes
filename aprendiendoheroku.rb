HOsting es la casa de la direccion.

DOminio es la direccion

A la hora de elegir un hosting debe decir especificamente que debe tener soporte RAILS 4, y qeu version de ruby está trabajando.
VPS
Es una maquina virtual. al que uno le paga por el servicio. (servidor como pa aguantar por ejemplo la cantidad de visitas.)

PAAS (por ejemplo heroku)
tienen todo listo (es con un vps mucho mejor)

HAcer cuenta en heroku // PROYECTO EN HEROKU
heroku.com
-hacemos git init (en caso que no este iniciado) //y que este todo comiteado
luego hacer
$ heroku create // va a crear una app con un nombre aleatorio entonces uno agrega el nombre
-$ heroku create nombreapp
ejemplo
$ heroku create primerblogdl
Creating primerblogdl... done, stack is cedar-14
https://primerblogdl.herokuapp.com/ | https://git.heroku.com/primerblogdl.git //=> esta es mi direccion pa yo poder ver mi app.
Git remote heroku added

- (si no tenemos la base de dato de nuestro proyecto hecho con psql, debemos agregar la dema sqlite3)
- luego agregar la gem 'rails_12factor' // para que heroku pueda manejar los assets
-$ bundle
-$ git push heoruku master
-$ heroku run rake db:migrate //para correr la base de datos (o seeds en este caso)
-DESCOMENTAR DEL GITIGNORE la línea `config/secrets.yml`
-$ heroku run rake db:seed
-$ heroku open // para abrir en el browser

PARA TENER UN BACKUP DE MI BASE DE DATOS CON HEROKU (bajarla para guardarla en otro lado)

-$ heroku pg:backups capture //para capturar nuestra base de datos para hacerle un backup
-$ heroku pg:backups public-url //para tener la dire de donde este mi base de datos, luego copypaste la dire
-$ curl -o latest.dump "https:// la direccion que te tira arriba entre los " "   "

ESTRATEGIAS DE REDIRECCIONAMIENTO

-A //heroku no la soporta
-FOWARD
-CNAME // godaddy,.com las soporta.

PARA AGREGAR UN DOMINIO A HEROKU
se agrega a nivel de consola
-$ heroku domains:add nombreDom.com

