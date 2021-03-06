Rails es un framework
es como una gema gigante.

rails trabaja con GEMAS

GEMA

es una libreria ( como jquery en javascript)

patron de diseño que usa rails MVC.

request(browser) => routes => controllers => views => muestra en compu //pagina estática
request(browser) => routes => controllers => model => dataBase =>model => controller=> views => muestra en compu //paginas dinamica
NUESTRO EJEMPLO
request(http:/pages/index) => routes => controllers(carpetaPages:metodo index) => views(carpetaPages:index) => muestra en compu

rails -v // devuelve la version de rails en que estamos

gem install rails // #para instalar nuevamente una nueva version de rail.

rails se usa en la terminal.

y para utilizarlo se pone en la terminal rails
$ rails => lo que quieras hacer

CREANDO NUEVO PROYECTO EN RAILS Y TERMINAL.
luego de crear Un proyecyo con rails con rails new nombre
entrar al proyecto nuevo
poner git init
crear el GIT IGNORE (osx + rails) generar //AGREGAR config/secrets.yml
												config/database.yml y .env y .powenv
https://www.gitignore.io
copy paste

poner en terminal subl .gitignore (el espacio punto es para abrir subl en el proyecto en el qeu estoy)
y pegar lo que salía en la pagina web dentro del archivo gitignore en subline
luego git add . (o git add --all, para añadir todo)
luego git commit -m 'nombre del primer commit'

RAILS S
luego rails s , para correr el servidor y entrar
levantar el servidor de rails para que en el servidor que yo quiera vamos a acceder a mi app web desde cualquier navegador con la direccion http://localhost:3000
(seria nuestra primera app creada) Al hacer esto la terminal quedó 'secuestrada'
para salir ctrl+c



DENTRO de mi proyecto nuevo
app, config, db, son las carpetas en que constantemente vamos a accdeder y configurar nuestra app.
(el grueso será en app)

la carpeta bin NO se usa no se toca

en carpeta CONFIG:
- hay un archivo llamado database.yml que es con lo que trabajamos nuestros base de datos.
osea un archivo va a ser nuestra base de datos.
-routes (archivo) vamos a trabajar mucho ahi


DB:
-informacion de la base d e datos
-sqlite3 es nuestra base de datos
-seeds es como un mini github de la base de datos.
-cdo queremos trabajaro con otra base de datos que no sea sqlite3, se pone en la consola "rails new nombreapp --database=mysql" mysql = es la nueva base con quien quiera trabajar.

GEMFILE: (ARCHIVO SUELTO)
- para tener acceso a nuestras gemas se pone bundle cada vez en la terminal para agregar cualquier gema nueva que se agregue extra.

LOG:
-log nos deja registrado nuestro errores.

PUBLIC:
-es como nuestro html

TEST:
-para hacer test antes de fallar.

APP:
-es lo que mas vamos a usar.

# //////////////////////////////
RAILS G
rails generate nombre_generador lo_generado

los nombre del generador son principalmente : model, controller.
lo_generado es el nombre de ese generador

por ejemplo si yo creo un modelo debe ir en singular.("task")
y un controlador en plural ("tasks")

y todo siempre en minuscula e ingles.
EN camelcase o con guion bajo.

por ejemplopara hacer una pagina estatica:

$rails generate controller pages index about contact // ojo que aquí pages es en plural pageS

PARA ENCONTRAR LAS PAGINAS RAPIDAMENTE

cmd+P

APP VIEWS LAYOUT => PAGINA MAESTRA.

en el layout va todo lo que se repite y de be ir en TODAS las paginas (por ejemplo una barra de navegación) es como mi planta base.PAGINA MAESTRA
(puedo crear varias maestras)

.ERB

la manera de escribir ruby dentro de un html
y todos los que terminan con .erb leen primero ruby y luego sus lenguaje.

COMANDO PARA DESTRUIR ALAGO GENERADO EN LA TERMINAL

$ rails destroy (d) controller (en caso de eliminr un controller) nombre_controlador

pero OJO: se borra todo MENOS las RUTAS, estas hay que borrarlas a mano.

TURBOLINKS

es como ajax, que no te hace refresh y te muestra SOLO lo que se cambia.


CONTROLLERS

los controladores le manda una vista a una ruta especifica
ruta => controllers => modelos => controllers => views

YIELD en pagina maestra

muestra los templates de las otras paginas y las lea y muestre en view. (así uno tiene muchas paginas para diferentes secciones y una maestra en la que opnemos lo que se quiere que se repita en todas)

.ERB

lee primero ruby en archivos de otros idiomas
y para escribir en ruby dentro de archivos de otros idiomas se escriben dentro de estas
etiquetas:
<% %>
ejecuta el codigo ruby dentro de la etiqueta (generalmente utilizado para generar una instruccion)
Ejemplo <% if true %>
	<%= 5+4 %>
<% end %>

vaa imprimir 9 solo si el if es true

<%= %>
Imprime el resultado de la expresion dentro de la etiqueta ( es como el puts)
ejemplo <%= 5+4 %>
va a imprimir 9.

<% -%>
Imprime pero sin salto de línea despues de la expresión

<%# %>
Escribe ruby comentado.

RAKE

se usa este comando paar cdo se trabaja en base de datos

RAKE ROUTES

$ rake routes

me va a evaluar las rutas que esta en mi proyecto:

		Prefix Verb URI 	Pattern         Controller#Action
   pages_index GET  /pages/index(.:format)    pages#index
   pages_about GET  /pages/about(.:format)    pages#about
 pages_contact GET  /pages/contact(.:format)  pages#contact
pages_our_menu GET  /pages/our_menu(.:format) pages#our_menu
          root GET  /                         pages#index



por ejemplo con el prefix yo lo puedo poner en un link (ejemplo navegador)
en que me dirige hacia mi pagina index : <% link_to 'Acerca', pages_index_path %>

SIEMPRE agregar al prefix _path. <% link_to 'Acerca', pages_index_path %>


MODELS
$ rails generate model product esto me devuelve una tabla
$ rails generate model product name:string descrition:text price:integer (cada uno es una columna, tipo de name, y descrption:text es para una descricion mas larga)

luego de poner
$ rake db:migrate

para migrar todo lo pendiente.

CRUD
index show new create edit update destroy

los 7 controladores

PARA AGREGAR UNA COLUMNA O EDITAR MI MODELO GENERADO

rails generate migration addColumnNameToTable columnname:string(tipo de dato)
Si vamos a agregar muchas columnas es addColumnsToTable aadkjfh:aksf aff:akjshdgfl etc

PARA BORRAR O EDITAR MIGRATION

rails generate migration removeColumnnameFromNametable column

RAKE db:migrate
$ rake db:migrate

cada vez que yo cree un nuevo modelo o una migration, hago

DESAHCER UNA MIGRACION

$ rake db:rollback


SOLO despues de hacer un rollback se puede borrar a mano un migration
y la ultima migration del estado es la ultima que creamos.

SCAFFOLD (ANDAMIOS)

RAILS C

entrar a escribir ruby en la consola

BUNDLE

uno pone bundle en la terminal luego de agregar cualquier gema en el proyecto.

PARA SACAR LOS ARCHIVOS .coffe y .scss

sacar dos gemas sasrails y coffeerails

PARA CREAR UN PROYECTO CON BASE DE DATOS QUE YO QUIERO (en este caso postgresql)

rails new NombreProyecto --database=postgresql
o rails new NombreProyecto -d postgresql

y ahi se cambia el archivo de config/database .yml (q se encuentra en config)

y en #
default: &default
  adapter: postgresql
  encoding: unicode => aqui CAMBIARLO POR utf8 entonces queda
  encoding: utf8
  # For details on connection pooling, see rails configuration guide
  # http://guides.rubyonrails.org/configuring.html#database-pooling
  pool: 5

LUEGO CREAR LA DB
rake db:create
rake db:migrate
UN MODELO ES UNA TABLA

CREAR UN REGISTRO EN CONSOLA RUBY (RAILS C)
creando un registro en una tabla
Movie.all
2.2.1 :004 > m = Movie.new(name: 'Avengers', year: 2015, studio: 'Marvel', active: true)
 => #<Movie id: nil, name: "Avengers", studio: "Marvel", year: 2015, rating: nil, duration: nil, active: true, created_at: nil, updated_at: nil>
2.2.1 :005 > m.new_record?
 => true
2.2.1 :006 > m.save
   (0.3ms)  BEGIN
  SQL (19.4ms)  INSERT INTO "movies" ("name", "year", "studio", "active", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["name", "Avengers"], ["year", 2015], ["studio", "Marvel"], ["active", "t"], ["created_at", "2015-10-09 23:05:41.679472"], ["updated_at", "2015-10-09 23:05:41.679472"]]
   (5.8ms)  COMMIT
 => true
2.2.1 :007 >


siempre que actualizo un registro porner .SAVE

si queiro hacerlo directo es de esta manera.

ejemplo

m.update(duration: '01:30')

PARA CREAR UN NUEVO REGISTRO Y GRABARLO ALTIRO
n= Nombreclase.create(campo1: 'nombre', campo2: 34356, etc)

2.2.1 :010 > m2= Movie.create(name: 'Alf', studio: 'Fox')
   (0.2ms)  BEGIN
  SQL (0.3ms)  INSERT INTO "movies" ("name", "studio", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Alf"], ["studio", "Fox"], ["created_at", "2015-10-09 23:13:54.970188"], ["updated_at", "2015-10-09 23:13:54.970188"]]
   (6.2ms)  COMMIT
 => #<Movie id: 2, name: "Alf", studio: "Fox", year: nil, rating: nil, duration: nil, active: nil, created_at: "2015-10-09 23:13:54", updated_at: "2015-10-09 23:13:54">
2.2.1 :011 >


PRY-RAILS
gem 'pry-rails' //gema bonita pa que muestre mejor los datos en la consola

VALIDACION A NIVEL DE MODELO

ejemplo:
class Movie < ActiveRecord::Base
	validates :name, presence: true
end

// aqui estoy diciendo a nivel de modelo que name no puede quedar null , que fueran CAMPOS obligatorios(no como antes q lo hicimos a nivel de bade de datos en schema)

cada vez que le pongo algun constrain-restriccion(a nivel de base de dato) o validacion(a nivel de modelo), debo actualizarlo en AMBOS lados.
A NIVEL DE BASE DE DATOS Y A NIVEL DE MODELO.

RELOAD!

poner reload! en la consola cada vez q se haga algun cambio en el proyecto. aveces no funciona, asique a veces debe salir y entrar nuevamente.

CLAVE FOREIGN PUEST EN MODELO DIRECTAMENTE
$ rails g model review author:string content:text movie:references <= con esto agrego la clave foránea instantaneamente.(movie:references => ie . movie_id = movie(id))


RELACION UNO ES A MUCHOS EN RUBY (agregar a mano si no está)

class Movie < ActiveRecord::Base

	has_many :reviews => esto es 1 es a muchos, este modelo es el uno es a muchos con reviews

	validates :name, presence: true
	validates :name, presence:true, uniqueness: true
end

class Review < ActiveRecord::Base
  belongs_to :movie => esto es a uno. este modelo es muchos de un Movie
end


CREAR UN REVIW DIRECTO en la consola
m = Movie.last (para traer una peli y guardarla en una variable)

m.reviews.build(author: 'Diego', content: 'me cargo')
luego eso queda en la memoria del la consola, o memoria ram, debemos grabarla

m.save. //ahora guardame el review. PQ buil no graba en la memoria.

Borrar un review

Review.destroy(id)
//////////////clase martes 13///////////////////
CASCADE// CALLBACK

class Movie < ActiveRecord::Base

	has_many :reviews, dependent: destroy => dependent: :destroy hace que todos los que dependan de la pelicula en cuestion se eliminen.

	validates :name, presence: true
	validates :name, presence:true, uniqueness: true
end


instalar gemas, gem 'pry-rails' y comentar o borrar la sass y la gema coffee

CREANDO UN SCAFFOLD
$ rails g scaffold post title content:text


CDO USAR SCAFFOLD O NO

cdo un modelo no es necesario verlo aparte (por ejemplo comentarios en un post) no necesito una view independiente , no es necesario revisar el detalle del comentario (ni view ni show) (el post SI ES CON SCAFOLD) al crear un comentario tp necesito una vista independiente para agregar un∫o! este depende del post en que esta!

HACER RELACION DE 1-* //AGREGANDO UNA FOREIGN KEY

	debe tener (el muchos) una foreign key (del id del 1)
	añadirle un campo al comment
	 (CON MIGRACIONES)
	agregando migraciones:

	$ rails g migration addPostRefToComment post:references (aqui estoy agregando un foreign key en comment de post)

	luego de hacer una migracion se crea una base
	rake db:create // esto para postgresql ( y solo se crea una sola vez y con el nombre de tu proyecto mas _development (osea en este caso seria Blog_developtment para buscarla dentro de la consola en psql))
	rake db:migrate

	NO OLVIDAR Q HAY Q VALIDAR DE NIVEL MODELO TANTO DE BASE DE DATOS

	porque lo recien hecho fue a nivel de base de datos

	para nivel modelo
	me emeto en app => models, los nombres del mis modelos y modificcar de la siguiente manera:

	Modelo comment
	class Comment < ActiveRecord::Base
		belongs_to :post // con esto
	end
	Modelo post
	class Post < ActiveRecord::Base
		has_many :comments // con esto OJO que aqui se pone en plural, pq son a muchos
	end


////////////////////////////////

VALIDACIONES A NIVEL MODELO QUE SEA UNICO Y QUE NO SEA NILL

class Comment < ActiveRecord::Base
	belongs_to :post

	validates :content, presence: true // con esto

end
class Post < ActiveRecord::Base
	has_many :post

	validates :title, presence: true
	validates :content, presence: true
end

///////////////////////////////////tarea

1* Crear un nuevo proyecto rails llamado Blog o algo asi con postgres (--database=postgresql o -d postgresql) 2* Iniciar el proyecto en git y hacer un primer commit 3* Agregar las gemas usadas hoy: pry-rails 4* Hacer segundo commit (y despues commitear cada cambio) 5* Crear el modelo para post que tenga los siguientes campos: titulo, contenido 6* Crear modelo comentarios que tenga el campo contenido 7* Crear la relacion entre post y comentarios segun lo revisado en la clase del dia miercoles. Post : 1 a N : Comment 8* Validar presencia de los campos en post y comentarios 9* Al borrar un post se borran los comentarios asociados a este. 10* Crear un seed de post y comentarios 11* Subir el proyecto a github

//////////////////////////////////////

9* (hay que borrar los hijos antes de los padres)
class Post < ActiveRecord::Base
	has_many :post, dependent: :destroy // con esto dependent: :destroy hago que pueda borrar todo lo que depende de este padre (osea puedo borrar el post sin que me wevee de que haya hijos (varios comentarios) dependiendo de el, y no tendre que borrarlos a ellos primero.)

	validates :title, presence: true
	validates :content, presence: true
end


//// delete versus destroy
el delete elimina pero no ejecuta niun callback
encambio el destroy si lo ejecuta.

PARA EJECUTAR UN SEED

	rake db:drop
	rake db:create
	rake db:migrate
	rake db:seed

	para no tener que hacer todo eso escribir
	rake db:drop
	rake db:setup //ESTE TE REsUME LOS 3 ULTIMOS PASOS


OJO que cada vez que yo un hago un seed, esta no se recetean los id's , entonces antes de correr' uno debo  hacer $ rake db:drop
							$ rake db:setup
//////////
RUTAS // ROUTS
COmo HAGO PARA QUE EL NOMBRE DE MI CONTROLADOR NO APAREZCA ANTES DE MI SUFIJO EN MI RUTA:

EJEMPLO
	get 'NombreCOntroller/index'
entonces como hacer para que ello no este asi

COmo CREAR RUTAS SIN MI CONTROLADOR

ESCRIBIR
get 'pages/about'
get 'index_us' , to: 'pages#about' // encontes poner _us(por convencion en este ejemplo) despues del nombre del crud, y luego llevarla a la direccion anterior poniendo , to: 'nombreController#NombreCrud'.

PARA CAMBIAR EL PREFIJO(el verbo que yo voy a usar para referirme a esa ruta DENTRO de RAILS) // CAMBIANDO EL PREFIX  (usando as:)

get 'index_us' , to: 'pages#about' , as: 'about'
get 'index_us' , to: 'pages#about' , as: :about //tb se puede anotar asi como simbolo o como string(la manera de arriba.)

CONSTRUCCION DE RUTAS CON PARAMETROS

get 'discounts/:id', to: 'pages#discounts' // de esta manera le estoy pasando un parametro a discount ( osea que asi se va a llamar dentro de mis parametros cdo maneje las rutas. en este caso le quise llamar id.)

COMO SE PASAN LOS PARAMETROS

los parametros estan en un hash con el nombre params

PARAMETROS // PARAMS
params (ese nombre viene por defecto) y me muestra todos los parametros y cdo en la ruta le pongo :algo le estoy dando un nombre a mi parametro.

PREFIJO CON PATH

prefijo_path(nuemrodelpreque requiero)

RUTAS ANIDADAS // para llamar metodos de otros controllers

rutas que dependen de otras rutas (agregando / luego de explicitar el parametro que queiro obtener)
	METODO A MANO
	get 'movie/:movie_id/reviews', to: 'reviews#index' as: 'movie_reviews' //aqui voy directo a TODOS los reviews de UNA pelicula especifica

	get 'movie/:movie_id/reviews/:id', to: 'reviews#show' as: 'movie_review' //aqui quiero ver el detalle especifico de un review de una pelicula especifica OJO q aquí cambio el parametro :id de la movie a :movie_id, pq luego si queiro llamar params[:id] me va a tirar el id del review que estoy viendo ya q a ese le pusimos id. uno sobre escribe los parametros. osea qe si los dos se llamaran id el ultimo SOBREESCRIBE al primero.

	para hacerlo con todos hacemos uno do en resources pra no tener q escribirlo para todas las rutas

	METODO RAPIDO // ANIDANDO EN RESOURCES LAS RUTAS //ONLY en RUTAS (solo esos)
	resources :movie do
		resources :reviews, only: [:index, :show] //OJO CON LA INDENTACION
	end

	EXCEPT EN RUTAS // (TODAS MENOS ESOS)
	resources :movie do
		resources :reviews, except: [:index, :show] //OJO CON LA INDENTACION
	end

MEMBER Y COLLECTIONS // PARA CREAR UN METDOD QUE LE QUEIRA DAR A ALGO ESPECIFICO O A UNA COLECCION. // ESTO SIEMPRE SE USA EN LAS RUTAS

member le pasa una :id , es para una sola cosa algo especifico., al crear un member es como para crear un metodo que haga lo que yo quiera y me lleve a esa vista.
en un collection es SIN :id , es para una coleccion, y crear un metodo para que haga algo loq ue yo queira,

y esos metodos deben estar creados en el CONTROLADOR que yo lo este llamando.

IMPORTANTE member rutas con ID

EJEMPLO:

resources :movie do
	member do
		get 'like' //nombre del metodo inventado
	end

	collection do
		get 'average_price'
	end

	resources :reviews, except: [:index, :show]

end
	// luego en el movies_controller debo agregar el metodo 'like' y 'average_price'
def like
	@movie = Movie.find(params[:id])
	@movie.like = true
end
def average_price
	asldkjfg
end

[crear el controlador de coment para tener todos los coments de post especificos

crear las rutas necesarias para los comments (anidados)
para obtener todos los comentarios de unpost

y crear una ruta para tener todos]

//////////////////////FIN clase martes 13//////////////////////////////

//////////////////////clase miercoles 14//////////////////////////////////

GEMAS // (comentamos las sass y coffee)
y agregamos esta en el group denajo del byebug
GEM PRY-rails
gem 'pry-rails' // para enchular la consola ruby

GEM BETTER ERRORS // mejora la pantalla de error en el browser de entrar al localhost
gem 'better_errors'

GEM QUIET ASSETS
gem 'quiet_assets'

GEM FAKER
gem 'faker' //para crear datos falsos en la tabla.
Documentacion de faker : https://github.com/stympy/faker
por ejemplo de las pelis en seeds:

movies=[]
(1..50).each do |m|
	movie << Movie.create(
	                      title: Faker::Company.name,
	                      description: Faker::Lorem.paragraph(3),
	                      realease_date: Faker::Date.between(20.years.ago,1.week.ago),
	                      studio: Faker::Name.name)
end

//entonces esto me crea 50 pelis falsas con datos inventados con faker

reviews = []
(1..200).each do |r|
	reviews << Review.create(
	                         content: Faker::Lorem.paragraph(3),
	                         movie: movies[rand(movies.length)]
	                         )
end

GEM DEVISE
gem 'devise' //gema de autenticacion (se pone abajo de gem 'pg'), lo que nos va a permitir crear registro de usuarios (log in, pass etc.)

MIGRACIONES

se hacen cdo creas un modelo o un controller., o al crear una base de datos., etc

.FIND

	Movie.find(n) // me busca por id, y me va a encontrar la peli con id 'n'.


VARIABLE DE INSTANCIAS @

	ESTAS VARIABLES SOLO SE HACEN para cdo sean necesarias para verlas en las vistas!
	sino seran variable local (sin @)

	@variable, variable de instancia dentro de un metodo

	espara poder usarla dentro de las vistas. LAS PUEDO LLAMAR PARA MOSTRARLAS EN EL BROWSER.


ACTIVE RECORD

	Nos abstraemos de la base de datos,
	nos permite ver nuestros datos de una base de datos, como objetos, como instancias de un objeto.

	Cada dato de esa tabla es una instancia de la clase, que la clase seria el nombre de la tabla con _development.


Show.html.erb

<h2> Deja tu review</h2>

<form action=""> los action del form es la ur que tiene que ir.
	<div></div>



</form>


/////METODO CREATE

este metodo crud es de tipo POST (eso se ve en rake routes)


INPUT TYPE HIDDEN

input invisible en el view, pero se va a mandar los valores igual.


FORM TAG //helper

# <%= form_tag( prefix_path(nombredevariable instanciada para su id(@variable)) (variable para %> la ruta)) %>

FORM FOR
form_for
<%= form_for [@variable ] do |f| %>
	<% f.text_field :comment %>
<% end %>

TAG HR
<hr> te tira una línea

////////////////clases jueves 15////////////////////////

<h2>Comentarios: </h2>

<% @comments.each do |c| %>
	<hr>
	<p><small><%= time_ago_in_words c.created_at %></small></p> // con el metodo time_ago_in_words , dejas las fechas a tiempo real en min. u horas, etc.
	<p><%= c.content  %></p>
	<hr>
<% end %>

</>
y en el controllador agregandole esto al show

  def show
    @comments = @post.comments.reverse // el reverse, te pone los comentarios mas nuevos arriba.
  end

////////////
RELACION MUCHOS ES A MUCHOS: SIEMPRE HABRá UNA TABLA INTERMEDIA.
	*---*
	n---n

	has_and_belongs_to_many (HABTM)

	$ rails g migration CreateJoinTableNombreTabla1_NombreTabla2 // esto me crea mi tabla intermedia.

	cdo es es mucho es a muchos :
	por ejemplo movies con genero, muchas pelis puede tener un genero y muchos gener pueden tener una peli.
	Para esto se crea una tabla intermedia con las 2 llaves foraneas.



HOLA MARCOOOOOOOOO ÑSDQHGAÑCONJGVÓIY


	TABLAS INTERMEDIAS

		por convencion lleva el nombre de ambas tablas que llevan una relacion de muchos es a muchos en nuestro caso anterior se llamaria Movies_Genre,	 y contiene nuestras ambas foreing keys.
		Sus dos filas contrendia ests datos respectivamente. movie_id, genre_id.

			[CREAR TABLAS

			$ rails g model NombreModel campo1:naturaleza campo2:naturaleza campon:naturaleza.
			y se crea la migracion.]

			CREACION DE TABLA INTERMEDIA
			(creacion de tabla sin modelo intermedio)
			 $ rails g migration CreateJoinTable nombreTabla1 nombreTabla2
			 $ rake db:migrate

			esto me crea mi tabla intermedia, pero NO un modelo, solo la tabla.
	y en los modelos (clases) de tabla1 y tabla2 (en este caso movies y genre) poner

	has_and_belongs_to_many :genre // en la clase movie.(como antes ponias has_many, o belongs_to)
	has_and_belongs_to_many :movie // en la clase genre.

	al crear la relacion entre ambos te crea un metodo:
	m.genres (el genres para movies) y g.movies (movies para el genre) // en este casp m y g fueron asignados por juancri por una peli especifica para m y un genero especifico para g. ( un m =Movie.find(6), g = Genre.find(4), por ejemplo.) y estos metodos me muestra ctos hay, puedo meter mas, puedo editar (agregar . borrar, ver)

			OTRA MANERA DE CREAR TABLA INTERMEDIA
			esta otra manera NECESITA un modelo intermedio.

			esto sirve cdo yo quiero validar, o jugar con los atributos, voy a necesitar le modelo para que se cumplan las validaciones.

			has_many through

			$ rails g model movie_genre movie:references genre:references // aqui estoy creando un MODELO con las dos llaves foraneas
			$ rake db:migrate

			y para crear la realcion entre ellos debo escribir en ambos modelos

			has_many :movie_genres (primero digo que tiene muchos de la tabla intermedia)
			has_many :genres, through: :movies_genre (y aqui digo que tiene muchos con genre A TRAVEZ de la tabla genre.) (esto en el MODELO MOVIES)

			has_many :movie_genres
			has_many :movies, through: :movies_genre (para el caso modelo Genre)

			y luego en el modelo de la tabla intermedia

			belongs_to :movie (tabla1)
			belongs_to :genre (tabla2)


			ahora en el modelo de la tabla intermedia poner

			validates :movie_id, uniqueness: {:scope => :genre_id} // LEE ABAJO.
											ó  { scope: :genre_id}(esta es la manera nueva de ponerlo.)

			aqui estoy diciendo que la combincacion de movie:id(n) y genre_id(m) en una fila de la tabla NO se replique, sea única. entonces te mandará un error de que esa combinacion YA existe, haciendo un rollback.
			el scope dice "en este ámbito"

OJO: las migraciones son a nivel de base de datos, luego lo manual (cambiar en modelos) es a nivel modelo.


PARA LISTAR LOS GENEROS EN UNA VISTA DE MOVIES.

Debemos hacer una variable de instacia que me contenga todos mos generos.
voy al controller del movie
en show:

def show
	@genres = Genre.all
end

y en el show.html

hacer un form_tag

<h2> GENEROS </h2>

<%= form_tag do %>
	<table>
		<thead> // table head
			<tr> //table row
				<th>Genero</th> // head de la columna
				<th>Seleccionar</th>
			</tr>
		</thead>
		<tbody>
			<% @genres.each do |genre| %>
				<tr>
					<td><%= genre.name %>
					<%= check_box_tag 'genres_ids[]', genre.id %>
				<% end %>

<% end %>

tarea para el blog.
crear modelo que se llame tag campo1=name (solo el nombre del tag) (etiquetas) que tiene una relacion de muchos es a muchos con post
inventar al menos 10 tags (ejemplo blog de musica pueden ser los tags de generos musicales)

hacer la relacion de post y tags
ver que relacion ocupar si hmbt o la through. //si crear un join table o modelo

DEVISE
https://github.com/plataformatec/devise // pag de la gema

ojo que luego de agregar la gema y ponerle bundle debo INSTALARLA
$ rails generate devise:install

luego seguir las intrsucciones que dice en la consola, luego poner

===============================================================================
Mai_Clear  Magdalenas-MacBook-Air in ~/desktop/RAILS1/Blog on master*
$ rails generate devise User
      invoke  active_record
      create    db/migrate/20151019212520_devise_create_users.rb
      create    app/models/user.rb
      invoke    test_unit
      create      test/models/user_test.rb
      create      test/fixtures/users.yml
      insert    app/models/user.rb
       route  devise_for :users
Mai_Clear  Magdalenas-MacBook-Air in ~/desktop/RAILS1/Blog on master*
$ rake db:migrate
== 20151019212520 DeviseCreateUsers: migrating ================================
-- create_table(:users)
   -> 0.0430s
-- add_index(:users, :email, {:unique=>true})
   -> 0.0048s
-- add_index(:users, :reset_password_token, {:unique=>true})
   -> 0.0027s
== 20151019212520 DeviseCreateUsers: migrated (0.0508s) =======================

Mai_Clear  Magdalenas-MacBook-Air in ~/desktop/RAILS1/Blog on master*
//////////////////////////////////////////////////

No olvidar tener una ruta para el root. ejemplo : root to: "posts#index"

GENERAR LAS VISTAS DE Devise, poara poder editarlas
$ rails g devise:views // ya que devise las tiene escondidas y para poder editarlas hay q generarlas, 'llamarlas'.

PARA AGREGAR CAMPOS AL MODELO DEVISE

	$ rails g migration addDetailsToUser name last_name user_name //en este caso mi modelo devide se llama User.
	      invoke  active_record
	      create    db/migrate/20151019215122_add_details_to_user.rb
	Mai_Clear  Magdalenas-MacBook-Air in ~/desktop/RAILS1/Blog on master*
	$ rake db:migrate

	OJO que para poder agregar estos campos hayq ue darle permiso para hacerlo dentro del controlador colocar:
	//////////////////////////// Aplication controller
	class ApplicationController < ActionController::Base

	 before_action :configure_permitted_parameters, if: :devise_controller?
	  # Prevent CSRF attacks by raising an exception.
	  # For APIs, you may want to use :null_session instead.
	  protect_from_forgery with: :exception



	  protected

	  def configure_permitted_parameters
	    devise_parameter_sanitizer.for(:sign_up) << [:name , :last_name , :user_name]
	    devise_parameter_sanitizer.for(:account_update) << [:name , :last_name , :user_name]
	  end

	end
    ///////////////////////////////////

	y Luego editar las vistas para que salgan los nuevos campos agregados en el browser.

LUEGO CREAR VISTA COMPARTIDA // vistas PARCIAL

luego en views cree la carpeta shared y en ella esta vista PARCIAL, llamada siempre con _antesdelNombre (guión bajo), en este caso _navbar.hmtl.erb:

////////// view/shared/_navbar.hmtl.erb////////
<% if user_signed_in? %>
	<%= link_to current_user.email,  edit_user_registration_path %>
	<%= link_to 'Log Out', destroy_user_session_path, method: :delete %>


<% else %>

<%= link_to 'Log In', new_user_session_path  %>
<%= link_to 'Registrate', new_user_registration_path  %>



<% end %>
>///////////////////////////// o como tenia juancri en su moviedata////

<p>
	<% unless user_signed_in? %>
		<%= link_to 'Ingresar', new_user_session_path %>
		<%= link_to 'Registrar', new_user_registration_path %>
	<% else %>
		<%= link_to current_user.name, edit_user_registration_path %> <small><%= current_user.role %></small>
		<%= link_to 'Salir', destroy_user_session_path, method: :delete, data: { confirm: "Seguro que desea salir?" } %>
	<% end %>
</p>

////////////////HHHH HOLAAAAA IGOOOOOORRR!!!!

>y en la vista layaout/aplication.html.erb agregar dentro del BODY
<%= render partial: 'shared/navbar' %>

>y en  la vista devise/registration/new.html.erb agregar bajo de la label de email (odeonde quiero que aparezca), agregar mis nuevas labels de mis nuevos campos.

 <div class="field">
    <%= f.label :name %><br />
    <%= f.text_field :name, autofocus: true %>
  </div>

 <div class="field">
    <%= f.label :last_name %><br />
    <%= f.text_field :last_name %>
  </div>

   <div class="field">
    <%= f.label :user_name %><br />
    <%= f.text_field :user_name %>
  </div>


// Y AGREGARLO TB EN LA VISTA devise/registration/edit.html.erb (estos 3 nuevos params name, lastname, username)
>////////////////// o como tenia en su totalidad JuanCri en movie data
<h2>Sign up</h2>

<%= form_for(resource, as: resource_name, url: registration_path(resource_name)) do |f| %>
  <%= devise_error_messages! %>

  <div class="field">
    <%= f.label :name %><br />
    <%= f.text_field :name, autofocus: true %>
  </div>

  <div class="field">
    <%= f.label :lastname %><br />
    <%= f.text_field :lastname %>
  </div>

  <div class="field">
    <%= f.label :username %><br />
    <%= f.text_field :username %>
  </div>

  <div class="field">
    <%= f.label :email %><br />
    <%= f.email_field :email, autofocus: true %>
  </div>

  <div class="field">
    <%= f.label :password %>
    <% if @minimum_password_length %>
    <em>(<%= @minimum_password_length %> characters minimum)</em>
    <% end %><br />
    <%= f.password_field :password, autocomplete: "off" %>
  </div>

  <div class="field">
    <%= f.label :password_confirmation %><br />
    <%= f.password_field :password_confirmation, autocomplete: "off" %>
  </div>

  <div class="actions">
    <%= f.submit "Sign up" %>
  </div>
<% end %>

<%= render "devise/shared/links" %>
>/////////////////////////////////////////

HELPERS DE DEVISE //NO OLVIDAR PONERLO

before_action :authenticate_user! // todos dicen user xq me creee mi modelo llamado User.
user_signed_in?
current_user


//////////Clases lunes 19 //////////

AGREGAR CAMPO ROLE A UN MODELO
$ rails g migration addRoleToUser role:integer
$ rake db:migrate


COMO CREAR EL ENUM

generar como le digo a un campo que se comporte como un enum, se coloca role, para que ese nombre del campo tratalo como un enum, en este caso como un arreglo,(y son numeros xq son los indices del arreglo.)


en modelo User, colocar  => * enum role: [:admin, :editor, :user]
(admin, client y guest)
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:admin, :editor, :user] //*
end

QUE PASA CDO AÑADO CAMPO ROLE PERO CON USUARIOS YA CREADOS:

primero debemos decirle que cada vez q se cree un uduario nuevo debe tener un role, entonces debemos tener un default, xq no todos los usuarios puedes ser admin.
y luego hay que hacer una validacion a nivel de modelo.

entonces nos vamos a crear una migracion.

$ rails g migration AddDefaultRoleToUser //ojo q este nombre de migracion es inventado aqui no tiene idea que hacer, entonces debemos modificarla. (hacer la migracion a mano)

entonces edito mi migrastion:

class AddDefaultRoleToUser < ActiveRecord::Migration
  def up // cambio change por up
    change_column :users, :role, :integer, default: 2, null: false //default: 2  es dos, pq quiero q mi default sea user (depende del orden con que YO hago mi arreglo, el indice 2 es user,)
  end
  def down
    change_column :users, :role, :integer, default: nil, null:true //:users es el nombre de la tabla a la que quiero cambiar. EL down es cdo haga el rollback se hace y quieres volver todo a como estaba antes.
  end
end


y a nivel de modelo creo un modelo  User //así tengo a nivel base de datos y a nivel modelo

hacemos un callback

before_save :default_role // esto lo pongo al inicio del modelo , antes del metodo creado.

def default_role // puede ser cualquier nombre
	self.role ||= 2  // el self hace referencia a esa instacnia ( es como el this), lo que estoy diciendo aqui, es que si role es nil(que no tenga nada designado) le asigno el 2 , || es or. (o si no le asigno yo directamente)
end

///////////////////// COmo agregar el role del user por consola////////
[3] pry(main)> mai = User.find(1)
[4] pry(main)> mai
[5] pry(main)> juancri = User.find(2)
[6] pry(main)> juancri.editor! //Aqui le digo que sea editor
[9] pry(main)> juancri.editor? // AQUI LE PREGUNTO, ES EDITOR? TRUE
=> true
[10] pry(main)> mai.admin! // AQUI LE DIGO Q SEA ADMIN.

imagino que se pueden concatenar los metodos
User.find(1).admin! //vamos aaa verr??? Así es! perfecto.
User.find(2).editor! // y así puedo seguir.

////////////////////////////////////////////////////////////////
AHORA HACER LA RELACION DE USER A MOVIES Y REVIEWS UNO A ES MUCHOS
	class AddUserRefToMovie < ActiveRecord::Migration
	  def change
	    add_reference :movies, :user, index: true, foreign_key: true
	  end
	end
	///esta para movie $ rails g migration AddUserRefToMovie user:references y luego lo mismo para review.
	AddUserRefToReview user:references

	class AddUserRefToReview < ActiveRecord::Migration
  def change
    add_reference :reviews, :user, index: true, foreign_key: true
  end
end
/// y luego hacerlo a nivel modelo. (y validaciones respectivamente)
en modelo USER
has_many :movies, dependent: :destroy
has_many :reviews, dependent: :destroy

validates :username, uniqueness: { case_sensitive: false } //es hace que no importe si el nombre fue escrito con mayuscula o minuscula, que los pesque igual.
validate :validate_username ////este metodo es para que tu nombre de usuario no sea tu mail.
OJO que VALIDATE sin 's', es cuando valido un metodo creado por mi.

def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end

  def to_s
    "#{self.name} #{self.lastname}"
  end
end /// esto para facilitar las cosas.
Modelo Movie
belongs_to :user
Modelo Review
belongs_to :user


/////////////////////////////
HELPER DEVISE  before_action :authenticate_user!

before_action :authenticate_user!, except: [:index, :show] // esto dice que si no esta logeado solo puede ver el index y el show.


vamos a crear un metodo que ejecute el :authenticate_user!, para ver que este logeado:

def check_admin!
	authenticate_user!
	unless current_user.admin?
		redirect_to root_pathh, alert: 'No tienes permitido hacer eso ya que no eres el administrador.'
end

entonces para poder llamar a este metodo debemos hacer un callback

before_action :check_admin!, only: [:destroy] // aqui estoy diciendo que solo el admin puede destroy algo.


def check_editor!
	authenticate_user!
	unless current_user.editor? || current_user.admin?
		redirect_to root_pathh, alert: 'No tienes permitido hacer eso ya que no eres editor ni el administrador.'
end

before_action :check_editor!, only: [:edit, :update] // no le dejo nada pero DEBO PONERLO ANTES DE check_admin! PARA Q ME PREGUNTE LUEGO SI SOY ADMIN PARA DESTROY

/// este es el orden de los callback

before_action :authenticate_user!, except: [:index, :show]
before_action :check_editor!, only: [:edit, :update]
before_action :check_admin!, only: [:destroy]

// y esto se copia en Application_Controller.rb bajo un private. Esto se hace para que todos los controladores lo puedan usar, y no tenga que reescribirlo en cada controller. Pero se defino los metodos, los CALLBACKs debo hacer en cada modelo.(que son los before_action)

ESCONDER LOS EDIT; DESTROY; NEW, para los users que no pueden hacer eso,

voy a views index.html.erb

if user_signed_in? && current_user.admin?
	link_to destroy
end

y así sucesivamente.

if user_signed_in? && (current_user.editor? || current_user.admin?)
	link_to edit
end

//todo esto se puede hacer con cancan(lo de arriba)

COMO HAGO PARA GUARDAR EL USER EN LA CREACION DE UNA PELI

debo modificar controller movie y pasa en el create.Entonces añado una línea en ese método.
def create
	@movie.user = current_user if user_signed_in?
end

AHorsa en review /para dejar un review.

@review.user = current_user if user_signed_in?


PARA CAMBIAR ; EDITAR Y EMBELLECER LAS URL // en routes

voy a routes.rb

devises_for :users

devise_scope :users do
	get '/login' , to: 'devise/sessions#new'
	delete '/logout' , to: 'devise/sessions#destroy'
	get 'profile' , to: 'devise/registrations#edit'
	put 'profile' , to: 'devise/registrations#update'
end

luegp cambiarn en el _navbar.html.erb las rutas por las nuevas creadas, ejemplo login_path.

////////////////////clases martes20 /////////////////////

DEVISE

crear la gama de autenticacion de una aplicacion.

OBJETO current_user
es un helper de devise que es donde se va a guardar la info del usuario registrado

CALBBACK
son metodos. ejemplo el before_action en un controller. es un metodo que le pasas un metodo

osea el before_action es un metodo que recibe un metodo de parametro y que va a ejecutar ese metodo antes de ejecutar una accion que le digamos.

otro ejemplo es el before_save en un modelo, otro metodo que recibe como parametro otro metodo que que se ejecuta antes de correr la accion.

ENUM

es un tipo de datos en una base de datos, y cdo le passa enum, le pasas una lista de los valores que puede estar en esa columna, y limitas el valor del campo en esa cantidad de opciones.

se escribe en el modelo.

Strong parameters de DEVISE

se manejan en el aplication controller, o en los controladores de devise (si es que los creo yo a mano)

AUTHENTICATE_USER
no me dice el tipo de usuario que esta, solo me dice si hay uno o no.

CANCANCAN

	gema para manejar los permisos.
	es decir, es para la AUTORiZACION
	Lo que puede o no puede hacer un usuario.

	gem 'Cancancan'  // se agrega bajo de la gema devise (es decir en cualquier parte menos en development)

	pagina web:https://github.com/CanCanCommunity/cancancan

	Ahora vamos a crear una rama nueva en el git (en este caso llamada cancan) para integrar la gema y una vez que tengamos todo listo sin dejar la caga, lo integramos al master.

	ojo que la gema original se llama cancan. pero luego revivió como cancancan.

	trae los helpes:
	can?
	cannot?

	tiene 4 pilares fundamentales en su funcionamiento:

	1)-habilidades
	2)-revision de habilidades
	3)-BLoqueo
	4)-Manejo de conexiones no autorizadas


	entonces vamos pasos por pasos
	gem 'cancancan'
	luego =>
	$ bundle
	luego =>
	$ rails g cancan:ability (pilar 1-)


	entonces ahora veremos la revisión de habilidades:

	2)-
	ejemplo:

	if can? :update, @article
		link_to "Edit", edit_article:path(@article)
	end

	// si tiene los permisos para hacer un update el usuario.

	BLOQUE:
	3)-
	ejemplo:
	tenemos que bloquear a nivel de CONTROLADOR
	y con eso va a definir la autorizacion de todos los shets

	MANEJO DE CONEXIONES NO AUTORIZADAS
	4)-
	Se trabaja a nivel de ApplicationController
	(con rescue)y dar mensajes de alertas en caso de erros

	VOLVEMOS AL MANEJO DE HABILIDADES
	1)-
	te dice lo que puede hacer y en DONde lo puede hacer.
	los metodos:
	can (metodo):manage, (donde):all  //manage son todos los crud.

	Ahora vamos a crear las habilidades:
///////////en el modelo cancan/////
class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new(role: 3) # guest user (not logged in)
    if user.admin?
      can :manage, :all
    elsif user.editor?
      can :read, :all
      can :create, :all
      can :update, [Post, Comment]
      can :destroy, [Post, Comment], user_id: user.id
    elsif user.basic?
      can :read, :all
      can :create, [Post, Comment]
      can [:update, :destroy], [Post, Comment], user_id: user.id
    else
      can :read, :all
    end

  end
end
//////////////////

Lo que hicimos ayer del check editor y admin, en aplication controller, no lo necesitaremos
(asi que lo comentaron)


Bloqueo
load_and_authorize_resource // en TODOS los controlladores que no sean ApplicationController

MANEJO DE CONEXIONES NO AUTORIZADAS
ahora aponer lo del rescue:

 rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, alert: 'No tienes permiso para hacer esa acción.'
  end

  eso en el ApplicationController

//////////////////////clase miercoles 21 ////////////////

POLIMORFISMO
Cdo hay relacion con mas de dos tablas,

	CAso likes:
	tabla de likes (muchos es a muchos)
	ejemplo tabla intermedia

	Like_Movies
	movie_id
	user_id

	Like_Reviews
	review_id
	user_id

	EL polimorfismo te da la posibilidad de hacerlo sin tantas tablas de pormedio y relaciones.

	entonces en una tabla, tabla Like

	Like
	user_id 		||id usuario
	likeable_id 	|| aquí se graba el id del like que dije, ( ejemplo like de id 5 de 				||		review, o id 4 de movie)
	likeable_type 	|| aqui se va a poner clase de like, (en ejemplo o like movie o like				|| review)

PARA CREAR TABLA POLIMóRFICA	// tabla polimorfica

$ rails g model like user:references likeable:references{polymorphic} //aqui hacemos una referencia a nosotros mismos (por buena pratica que tenga el nombredelatabla +  able)likeable
$ rake db:migrate

Esta te crea el likeable_id y el likeable_type. de una.

	EN CASO DE QUE EL MODELO LIKE YA ESTUVIERA CREADO
		$ rails g migration AddLikeableToLike likeable:likeable:references{polymorphic}

		y borrar el campo que te sobre para crear la poliformica
		$ rails g migration RemoveNombreCAmpoFromModel nombrecampo:tipo
		$ rails g migration RemoveMovieFromLike movie:references //ejemplo.

luego el modelo like queda:
class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :likeable, polymorphic: true
end

////

Entonces tendremos que decir al MODELO movie y review esto:

has_many :likes, as: :likeable // tiene muchos likes a travez  de la tabla poliformica
has_many :user_likes, through: :likes, source: :user //como ya se esta usando :user en este modelo se le pone :user_like (pero la verdadera fuente es :user, solo user luego lee pa ver para los otros modelos.)

MODELO DE POST
class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :post_tag
	has_many :tag, through: :post_tag
  	belongs_to :user // aqui ya esta usado el :user *

  	has_many :likes, as: :likeable
  	has_many :user_likes, through: :likes, source: :user // * por eso aqui se pone user_likes y se pone source xq invente el user_likes de donde vien? de user

	validates :title, presence: true
	validates :content, presence: true
end

	//////HOLA ALFREDOOOO
	Paréntesis:
	(ahora al agregar el metodo user_likes)
	en la consola Product.new.likes // me devuelve la cantidad de likes
	Product.new.user_likes // me devuelde los USERS.
	/////////////

Lo mismo para reviews.

y para el modelo USER se pone (en el ejemplo de post y comment)

has_many :likes // aquí no se pone el as: :likeable xq al usuario no se le pueden poner likes
has_many :post_likes, through: :likes, source: :likeable, source_type: 'Post'
has_many :comment_likes, through: :likes, source: :likeable, source_type: 'Comment' //solo user se pone source user, xq ahi quedan, pero aqui estan en la columna likeable y del tipo que uno busque.

////////////////////////MOdelo USER/////////////
class User < ActiveRecord::Base

  before_save :default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments
  has_many :posts

  has_many :likes,
  has_many :post_likes, through: :likes, source: :likeable, source_type: 'Post'
  has_many :comment_likes, through: :likes, source: :likeable, source_type: 'Comment'

  enum role: [:admin, :editor, :basic, :guest]

  def default_role
    self.role ||= 2
  end

  def to_s
    "#{self.name} #{self.last_name}"
  end
end

////////////////////////

(reguntas, cdo se pone like o likeS en rails y en la consola?, que es scope)

Scope = es un metodo de clase, para añadir querys, querys son consultas a la base de datos

PARA CREAR UN LIKE EN LA CONSOLA RAILS

[3] pry(main)>Comment.last.likes.build(user: User.last).save
[17] pry(main)> Post.last.likes.build(user: User.last).save

[25] pry(main)> Post.last.likes.last.user.name //para ver quien fue

luego debo agregarle la RUTA (con member en rutas) //

  resources :movies do
    resources :reviews, only: [:create] do
      member do
        get 'like'
      end
    end

    member do
      #post 'set_genre'
      get 'like'
    end

    collection do
      #post 'set_genres'
    end
  end//////

luego agregarla a la VISTA show de post (o correspondiendte)//


<% if can? :like, Post %>
	<p>Likes: <strong> <%= @post.likes.count %></strong></p>
	<p>
		<% unless @post.liked_by? current_user  %>
			<%= link_to 'Me Gusta', like_post_path(@post) %>
		<% else %>
			<%= link_to 'Deshacer Me gusta', like_post_path(@post)  %>
		<% end %>
	</p>
<% end %>
>////////
aquie respectivo a reviews

<% if can? :like, Review %>
	<p>Likes: <strong> <%= @review.likes.count %></strong></p>
	<p>Me gusta:
		<% unless @review.liked_by? current_user %>
			<%= link_to 'Me Gusta' like_movie_review_path(@post, review)  %>
		<% else %>
			<%= link_to 'Deshacer Me gusta', like_movie_review_path(@post, review)  %>
		<% end %>
	</p>
<% end %>

>//////

luego agregar el METODO en los CONTROLADORES post y comment. (pero esto está mejor escrito más adaelante, sáltate este paso (lo comentaré por ahora.))

# def like
# 	@like = @movie.likes.build(user: current_user) if user_signed_in?
# 	@like.save //pq el build no salva, no como el .create

# 	redirect_to @movie, notice: 'Gracias por tu like'
# end

ojo que ya hicimos el cancan entonces tenemos que declarar el like en cancan, para que se puede hacer. (en el modelo ability.rb)

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new(role: 3) # guest user (not logged in)
    if user.admin?
      can :manage, :all
    elsif user.editor?
      can :read, :all
      can :create, :all
      can :update, [Post, Comment]
      can :destroy, [Post, Comment], user_id: user.id
      can :like, [Post, Comment] // =>AQUI
    elsif user.basic?
      can :read, :all
      can :create, [Post, Comment]
      can [:update, :destroy], [Post, Comment], user_id: user.id
      can :like, [Post, Comment] // =>AQUI
    else
      can :read, :all
    end

  end
end
//////////////////////

en show.html.erb

<p>Likes: <strong> <%= @post.likes.count %></strong></p>

<p>
	<% unless @post.liked_by? current_user  %>
		<%= link_to 'Me Gusta', like_post_path(@post) %>
	<% else %>
		<%= link_to 'Deshacer Me gusta', like_post_path(@post)  %>
	<% end %>
</p>

//////OJO//////

TODOS los links son tipo GET

////////////////

RESTRINGIR LOS ME GUSTA A UNO SOLO POR USER. // un LIKE por USER

	se va al modelo like validando el user_id que sea unico

	 validates :user_id, uniqueness: {scope:[:likeable_id, :likeable_type]}

	aqui estoy diciendo que la combincacion de user:id(n) y likeable_id(m) en una fila de la tabla NO se replique, sea única. entonces te mandará un error de que esa combinacion YA existe, haciendo un rollback.
				el scope dice "en este ámbito" ahora para que yo pueda tener like en un post y en un comment del mismo post, agrego una tercera columna para que me deje hacer la misma combinacion pero que el TIPO de like (si es para post o comment) sea diferente. entonces agrego un arreglo al scope con :liakeble_id y :likeable_type.

	//que me falta pa mi blig, hacer el metodo like en post y comment, y agregar en el modelo de post que solo deje de botar una vez.

	Agregando ahora la restrcicion de una solo like EN MODELO POST

	definiendo metodo, aqui lo declaro en el modelo(tanto movies como reviews(donde pongo el like))

  def remove_like user
    self.likes.where(user: user).first.delete
  end

  def liked_by?(user)
    self.user_likes.include? user
  end

	LUEGO EN EL CONTROLLER // aqui en movie

	def like
	    @like = @movie.likes.build(user: current_user)

	    if @movie.liked_by? current_user
	      @movie.remove_like current_user
	      redirect_to @movie, notice: 'Tu like a sido eliminado :('
	    elsif @movie.save
	      redirect_to @movie, notice: 'Gracias por tu like :D'
	    else
	      redirect_to @movie, notice: 'Tu like no se ha guardado :('
	    end
  	end

	LUEGO EN OTRO CONTROLLER QUE TENGA LIKE // REVIEW EN ESTE CASO

	def like
    @movie = Movie.find(params[:movie_id])
    @review = Review.find(params[:id])
    @like = @review.likes.build(user: current_user)

    if @review.liked_by? current_user
      @review.remove_like current_user
      redirect_to @movie, notice: 'Tu like a sido eliminado :('
    elsif @like.save
      redirect_to @movie, notice: 'Gracias por tu like :D'
    else
      redirect_to @movie, notice: 'Tu like no se ha guardado :('
    end
  end

///////////OJO/////////

scope es para hacer preguntas a nivel de clase, no se puede hacer  una instancia.

scopes son metodos de clase, para añadir querys
SCOPE = es un metodo de clase, para añadir querys, querys son consultas a la base de datos
////////////////////////

//////ojo////
cdo uno pone MOvie en vez de @movie

Movie se refieres a LAS peliculas // general, todas.
@movie se refiere a ESTA pelicula. //especifico.
////////////////////////////////

AHora vamos a limpiar un podo la vista del show, con vistas parciales.
(con renders)

por ejemplo :

creo un archivo dentro de views como
reviews dentro de ella
_form.html.erb //esta seria mi vista parcial
_reviews.html.erb

LUEGO: agregar en show.html.erb
<%= render partial: 'reviews/form' %> //> en la parte que saque y la puse en _form.

<%= render partial: 'reviews/review' , collection: @reviews %> //>

ejemplo
en index:

<%= render @movies %> //> pq esta dentro del mismo archivo views/movies
y el nombre del parcial es _movie.html.erb // con el nombre en singular de la coleccion ( en este caso @movies) // pero aqui estas iterando, llamando al parcial como haciendo un each. #cdo se usa .each,
En realidad loq ue hace es llamar a la vista y lo itera o repite la vista las n veces de la cantidad de la coleccion @movies, repite el proceso "nºdecoleccion@movies" veces.


//que me falta pa mi blig, hacer el metodo like en post y comment, y agregar en el modelo de post que solo deje de botar una vez.

//// localizacion  cambios de idioma///

de cambiar el idioma y buscar rails localization luego internalization. (rails i18n)


// -DESCOMENTAR DEL GITIGNORE la línea `config/secrets.yml`
# //OJO NO OLVIDAR DESCOMENTAR SECRET_KEY
# en config/initializes/devise.rb
# descomentar esta línea: config.secret_key = '72f8af7fceaf4609accf79f43f21aa5edc72a36fa7573b01f79e10bb010e6f7512bdfd6d327a5ec35e29544d4e87ffd9e495dc47612537924697cb075942ff5d'

USER
	Para hacer user se hace con la gem 'devise' y se le agrega gem 'cancancan'



GIT

	atlassian.com/git/tutorials


NAMESPACE: (para hacer el admin, administrador de la app)

	$ rails g controller admin/prodcuts => el hecho de escribirlo asi me va a crear inmediatamente el namespace (admin/(slash)NombreController) (para crear el controller dentro de la carpeta admin)

	$ rails g controller admin/prodcuts campo!:naturaleza etc //tb se puede poner solo index o show, o tb hacer un scaffold de ello

	las rutas se agregan a mano, por que está nested (admin/...) dentro de una carpeta.

NUEVAMENTE METODO DE INSTANCIA O METODO DE CLASE

	cdo es metodo de clase se le agrega el SELF. en el nombre del metodo, ejemplo:
	def self.product // esto es un método de clase.es decir lo puedes llamar "Clase.product"
	end

	El método de clase puede ser usado para la clase y para una coleccion de cosas de la clase, ejemplo class Cars.
	=> Cars.product, cars.product (cdo es coleccion, carsssssssss)
	Pero NUNCA para 1 sola instancia.

	metodo de instancia nombre y definicion normal y se usa para una instancia.
	def product
		self.role
	end

	y dentro de este puedes utilizar el self.role para llamar a la instancia especifica.

	// PUEBA: Crear los todos los modelos y sus relacion pa llegar donde pato., falta hacer views de reviews y likes.


AÑADIR UN SOLO CAMPO A UN MODELO:
	$ rails g migration AddQuantityToOrder (ejemplo),$ rails g migration AddNombreCampoToModel nombrecampo:tipoDato


PARA HACER UN CAMPO CON DECIMALES // ejemplo campo Price:
	'price:decimal{10,2}' // rails g model 'price:decimal{10,2}' improtante que sea dentro de ''

SHORTCUTS SUBLIME

cmd+w = cerrar archivo en que estas
cmd+p = buscar el archivo que quieres abrir


PARA EDITAR MIGRACION A MANO (no en rollback)
	debo botar mi db
	rake db:drop
	rake db:create
	rake db:migrate
	rake db:seed
	(EN ESTE CASO NO HACER rake db:setup)

SIno hacer las cantidad de rollback necesarios y borrar y hacer nueva,ente ESA migracion especifica.

rake db:rollback STEP=5
y en caso de hacer rollback se puede agregar a mano, para NO tener que borrarla (en todo caso no importa el orden puedes volver a generarla aunque sea ultimo lugar.)

CREAR UN MODEL Y UN CONTROLLER JUNTOS CON RESOURCE

$ rails g resource Review campo1:tipo product:references

y me crea el modelo, el controlador (vacío) y la vista reviews (vacía) // en este ejemplo con el campo1 y la foreign key de product para relacion uno es a muchos de product con review

CREACION ADMIN NAMESPACE.

	$ rails g scaffold_controller admin/prodcut

	Y luego en el modelo admin/product, borrar en todos los metodos, Admin::Product(dejar solo Product que es el modelo que ya teniamos creado y es el que queremos usar) y así para todos mis controladores.

	$ rails g scaffold_controller admin/orders
	$ rails g scaffold_controller admin/users
	$ rails g controller admin/pages

Y en mi controller normal Product dejar solo el index y show, (y los privates)
y luego pegar en mi nuevo admin/product los strongs params.

arreglar rutas agregando _path(admin_porduct) product según, y donde sea necesario, para que te mande a rutas DENTRO del admin.

GEMAS PARA ENCHULAR

gema entypo?
gema boostrap


//hacerme un resource con el carro (q tiene misma relacion que reviews
                                    ) tabla intermedia es el carro de products con user.

number_to_currency (convierte el valor dolar a precio) metodo pa ponerlo en los precios.

//////////////////clases miercoles 28 oct/////////////////

Gema CARRIERWAVE
	para instalar imágenes
gem 'carrierwave'

https://github.com/carrierwaveuploader/carrierwave

$ rails g uploader NombredelCampo //en este caso $ rails g uploader Image

y ahora dentro de la carpeta app/uploader
se crea uploader.

- No olvidar poner image(o nombre del campo) en los strong params del controllern(product en este caso) y la naturaleza del campo image:string  es STRING

-luego poner .gitignore poner la ruta /public/uploads
(que es para que lo ignore, para que no te suba por ahora )

-descomentar metodo en app/uploader/image_uploader
def extension_white_list
    %w(jpg jpeg gif png)
end


- Ahora debemos montar el uploader en el modelo en el que vamos a subir imagenes.
en este caso en el modelo Producto:

mount_uploader :image, ImageUploader
mount_uploader :nombrecampo, nombremodelomigracion


- en el formulario (_form) ahora ya no es un text.file, es un file.field *********

ponerlo en el show
//////////////
<p>
<%= image_tag @product.image, alt: @product.name, class: 'product_image' %>
</p>

>/////
Agregar el form al views/admin/products , el form de que tenia del form antes.
y agregar este en el para crear un nuevo producto
/////////
<div class="field">
    <%= f.label :image %><br>
    <%= f.file_field :image %> //>********
    <%= f.hidden_field :image_cache %> //para que en caso de que alguna validacion falla al estar creando, no me diga que tengo que downlear y elegir nuevamente la imagen al recagar el error.
  </div>
  >/////////////////

  -en App/uploader/mage:upleader

  descomentar
  include CarrierWave::MiniMagick

	GEMA MiniMagick
  y agregar gem 'mini_magick' // la instalas arriba de carrierwevae (justo arriba de developer)
Pero ANTES de usar minimagick hay que inatalar

$ brew install imagemagick // a nivel consola

-luego agrego gema y bundle
-luego descomento en App/uploader/mage:upleader y agrego estas lineas

process :resize_to_fit => [1000, 1000] // este se cambia :scale por el resize_to_fit
  # Create different versions of your uploaded files:
version :thumb do
  process :resize_to_fill => [150, 150]
end

-poern una imagen por defecto (default_url)
descomentar el metodo App/uploader/mage:upleader
def default_url
	# "/images/fallback/" + [version_name, "default.jpg"].compact.join('_')
	ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.jpg"].compact.join('_'))
end
//entonces en la carpema image crear carpeta fallback y agregar tu imagem default.


poenr en strong params 'remote_image_url' (por el faker del juancri).






# A MANOLI PRIMERO

# $ rails g migration addImageToProduct image:string
# $ rails db:migrate



//////////clases lunes 2 nov

MAILER

SIstema de envios de correos en rails
PAra mandar mail.

primeros no creamos el primer mailer (para mandar correos al usuario)

$ rails g mailer UserMailer

lo que nos crea una especie de controllador (llamado mailler), vacio, que tiene asignada tb unas vistas.

luego en UserMailer de nuestro mailer (que es como nuestro controlador)

class UserMailer < ApplicationMailer


def welcome_email user
	@user = user
	@url = 'www.wareviustore.com'

	mail(
	     to:@user.email,
	     subject:'Bienvenido a Wareviustore'
	     template_path: 'user_mailer'
	     template_name: 'welcome_email' //estos son opcionales (y el nombre depende del nmbre que yo le ponga a mi archivo (ojo que estas son mis rutas.))
	     )
end

y en

class ApplicationMailer < ApplicationMailer
	default: from: 'ejerciciobootcamp@gmail.com '
	layout 'mailer'


Dentro de views, de user_mailer

creamos un nuevi archivo llamado:
welcome_email.html.erb

dentro de el escribimos (para tener un template)

<h1>Bienvenido a <%= @url %>, <%= @user %> </h1>
<p> Te has registrado correctamente. Tu nombre de usuario es <%= @user.user_name %> </p>
<p>Para loguearte en el sitio solo sigue el siguiente link: <%= @url %></p>
<p>Gracias por registrarte</p>

<p>Atentamente, el equipo de WareviuStore.</p>


y para nuestro texto plano va lo mismo pero sin el html. en nuevo archivo creado llamado
welcome_email.text.erb

Bienvenido a <%= @url %>, <%= @user %>
====================================================================

Te has registrado correctamente. Tu nombre de usuario es <%= @user.user_name %>
Para loguearte en el sitio solo sigue el siguiente link: <%= @url %>
Gracias por registrarte

Atentamente, el equipo de WareviuStore.

AHORA EN MODELO USER

poner ariibita (abajo del before_save)
after_create :send_welcome_email

hacer metodo:

def send_welcome_email
	UserMailer.welcome_email(self).deliver_now
end

deliver_now //envia el mail y te estanca el proceso
deliver_later //te envia el mail un tiempo despues.

ahora vamos al config/enviroment/development:

hacemos una configuracionc con cmtp (lo ponemos bajo action mailer de local host)
que se envien los correos:

-config.action_mailer.delivery_method = :sendmail /
-config.action_mailer.raise_delivery_errors = true //ponerle TRUE a esta línea
-config.action_mailer.default_options = {from: 'warevius@gmail.com'} // y se poner aqui lo configuro a nivel de aplicacion
SMTP
-config.action_mailer.delivery_method = :smtp
-config.action_mailer.smtp_settings = {
	address: 'smtp.gmail.com',
	port: 587,
	domain: 'gmail.com',
	user_name: 'ejerciciobootcamp@gmail.com',// poner el nombre de usuario de tu gmail + @gmail.com, // PERO AQUI SE CREAN LAS VARIABLES DE ENTORNO
	password:'LaSuperClave', // AQUI TB VAN VARIABLES DE ENTORNO (explicado abajo)
	authentication: :login,
	enable_starttls_auto: true
}



//////// ejemplo de controlador de ORDER
en el metodo paid_order agregar q se mande el correo.

-UserMailer.welcome_email(current_user).deliver_later

VARIABLES DE ENTORNO:
	 Agragr la gema dotenv_rails
	 gem 'dotenv_rails'

	 y agregar un archivo llamado .env ( a mano) //todos los archivos con . anterios son ocultos
	 luego en GITIGNORES agregar la línea .env

	 luego en ARCHIVO .ENV declaro mis variables de entorno (y en el archivo contiene SOLO esto:)

	 	GMAIL_USERNAME=ejerciciobootcamp@gmail
	 	GMAIL_PASSWORD=LaSuperClave

	 y ahora en config/enviroment/development:

	 user_name: ENV['GMAIL_USERNAME']
	 password: ENV['GMAIL_PASSWORD']


PARA VER EL MAIL POR LOCALHOST
	vas a TEST/MAILERS/PREVIEWS/User_Mailer_Preview
	escribir en class UserMailerPreview que estara vacia

class UserMailerPreview < ActionMailer::Preview
  def welcome_email_preview
    UserMailer.welcome_email(User.last)
  end
end

y en config/enviroment/development: agregar la linea :
-config.action_mailer.perform_deliveries = false
true para base development para enviar mails de pruebas pero luego ponerla en false




PARA ENVIAR MAIL AL ADMINISTRADOR

confirmation order(order)

ACTIVE JOB, GEM SUCKER_PUNCH.

para que resulte la "cola" y el deliver_later funcione distinto a deliver_now
para eso esusamos unas gemas por ejemplo la gema sucker_punch

gem 'sucker_punch'

y en config/enviroment/development ///development solo a modo de desarrollod pero en verdad es en production
agregar esta línea:

config.active_job.queue_adapter = :sucker_punch





///////////clase MARTES 3 NOV

PROBLEMA QUERY n+ 1



*.USAR INCLUDES ADEMAS DE TPDAS LAS LINEAS QUE USAS ES UN AGREGADO.*

	una solution : Eager loeding.

	en rails existe un helper que se llama 'includes'

	ejemplo de categories de productos:

	@prodcuts = Prodcuts.all.includes(:category)


	Gema BULLET.

	(ejemplo de queries de l app que hizo juancri de twitter)

	gem 'bullet'

	https://github.com/flyerhzm/bullet

	 y en config/enviroment/develoment.rb

	 config.after_initialize do
		  Bullet.enable = true
		  Bullet.alert = false (este era el pop up que mando)
		  Bullet.console = true
		  Bullet.add_footer = true

			end

	esto hace que te mande donde pones el 'includes', te dice donde podria estar el error de los queris n + 1.

	el Count siempre te va a gatillar un query a pesar de que uses un includes (ojo que la gema tb te avisa cdo usas un icludes innecesariamente).
	Ojo en caso de contar tweets es mas efectivo usar el COUNT , xq lo hace en la base de datos, el lenght hace una seleccion y luego hace un conteo.
	Pero con el Lenght si puedo usar el includes.
	el SIZE te pide use un counter_cache (que dice el juancri q es el mejor a su pensar), este se crea al crear el tweet o grabarlo, no al pedir el conteo, ya está ahñi esperando.

		COUNTER_CACHE:

			Y se hace con una migracion

			$ rails g migration addCounterCacheToUser tweets_count:integer


			y en el modelo de tweet:

			belongs_to: user, counter_cache: true // aqui le estamos diciendo que se comporte como counter_cache.

luego reseteo el conteo?
en consola escribo:

			User.find_each do |user|
				User.reset_counters(user.id, :tweets)
			end


/////////////////Clases 4 Nov /////////////////
Descomentar GEMA SASS!!!! para actve ADMIN.

GEMA ACTIVEADMIN

http://activeadmin.info/
https://github.com/activeadmin/activeadmin

gem 'activeadmin'

añadiendola de esta manera:
gem 'activeadmin', github: 'activeadmin'

o de esta manera: se copia esto en el gemfile
gem 'activeadmin', '~> 1.0.0.pre2' //esta le gusta a JuanCrip, se pone despues de devise (no en dev ni en prod)

$ bundle
$ rails g active_admin:install // esto va a instalar active admin en mi compu y me va a crear un ususario
// rails g active_admin:install --skip-users // esta opcion se pone cdo quiero que se salte que me cree un usuario

$ rake db:migrate
$ rake db:seed

antes del seed arreglar en archivo seed la nueva línea de ser necesario.

y en:
http://localhost:3000/admin/login

para entrar
usuario: admin@example.com
pass: password.


ESTILOS: OJO QUE EN:

app/assets/stylesheets

*=require_tree // esto te dice que lea todos los archivos q esten en el styleshett en orden
*=require_self // va a carga lo que esta escrito dentro del mismo archi en que pones esa línea (osea que escribas algo despues.por ejemplo)

ahora escribir *= stub active_admin (para saltar el estilo del active admin en el estilo)

OJO QUE AL AÑADIR EL ACTIVE ADMIN LOS SCAFFOLD SE VAN A LA MIERYI!!!!!
los que se hagan luego de activar la gema.
esto se arregla de la siguiente manera:

dentro de config/aplication.rb
ante de que se cierre el  class Application < Rails::Application

escribimos:

	config.generators do |g|
        g.scaffold_controller 'scaffold_controller' //*******
    end


BAJO ESTA LINEA: ¬
 config.active_record.raise_in_transactional_callbacks = true

    config.generators do |g|
        g.scaffold_controller 'scaffold_controller' // AQUI!!*****
    end
  end
end


LUEGO en config/initializer/active_admin.rb
en caso de usar CANCAN
abitilamos esto:
config.authorization_adapter = ActiveAdmin::CanCanAdapter


config/initializer/active_admin.rb aqui tu administras todo loq eu sale en las vistas y como queires, loq ue quieres que te muestre , por ejemplo que no salgan los comments, que esten ordenados de x manera...etc... eso lo haces descomentando las cosas y manoseandolas. jjjjj y ahí mismo podrías diseñar tu propio stylesheet. pero que paja.

Ahi tu ves lo del cvs y la subida de base de datos, por como, separacion de comas, etc.


RECURSO

	un recurso son las vista que tendremos dentro de active_admin, pero para poder crearme un recurso tendremos que tener un modelo asociado. (un modelo creado antes)

	$ rails g active_admin:resource Product //esto me crea un recurso con el nombre del modelo Product.


	CONFIGURANDO MIS RECURSOS

		STRONG_PARAMS
			Acitve_Admin utiza sus propios params, debemos setear los permited params =>
			entonces debemos descomentar en nuestro RECURSO Product.rb los permit_params:

			permit_params :name, :description, :price, :stock, :category, :image

		COSTUMIZAR EL MENU
			en RECURSO 	Product.rb escribir por ejemplo:

			menu label: 'Productos' //para cambiar el nombre de mi recurso en el dashbord
			menu label: 'Productos', priority: 2 //orden , que "Productos" quede en el segundo lugar (por defecto el primer recurso que me creo es 10, y luego por orden de llegada. entonces por ejemplo AdminUser era 10, entonces debo ir a su RECURSO y escribir menu priority: n, para nuevo orden.)


otro ejemplo en recurso USER,en user.rb
ACtveAdmin.reguster User do
			menu label: 'Clientes', parent: 'Usuarios' // aqui hice un dropdown donde deje a mis user llamados 'clientes' dentros de un boton llamados usuarios, luego por ejemplo puedo ir a mi AdminUser y decirle lo mismo parent: 'Usuarios'
			y habra un dropdown del boton usuraios: -Clientes
													-AdminUser
			actions :all, except: [:edit, :update, :destroy] // aqui digo que se puede hacer todas las aciciones MENOS editarlo, updatearlo y eliminarlo.


PARA MODIFICAR LA VISTAS DE MIS RECURSOS NUEVO PRODUCT (en este caso) (en caso de agregar imagenes etc.)

copy paste del recurso admin_user

index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end


 y voy editando lo que quiero mostrar //todo loq ue muestra el index


 index do
    selectable_column
    id_column
    column 'Image' do |p|
    	image_tag p.image.thumb //para agregar la imagen.
    end
    column :name //modifico
    column :stock //modifico
    column :price //modificado
    actions
  end

// ahora pra modificar los filtros

  filter :name
  filter :stock
  filter :proce
  filter :category

//ahora el form

form do |f|
    f.inputs "Product Detalle" do //puedo cambiarle el nombre
      f.input :name, label: 'Nombre' //para cambiarle el nombre de name a NOMBRE duh!
      f.input :description
      f.input :stock
      f.input :price
      f.input :image
    end
    f.actions
  end

// AHORA modificamos el SHOW.
  show do
  	(puedes renderear las vistas ya credas para los usuarios y modificarlas
  	y hacer un bello render con copy paste de una vista ya creada y mejorada)
  	render 'product/_newshow' (pero este NO mantiene el estilo del active_admin)
end
  	o hacer una bella tabla
show do
  	attributes_table do
  		row :name
  		row :description
  		row :stock
  		row :price do
  			number_to_currency product.price
  		end
  		row 'Imagen' do
  			image_tag product.image.thumb
  		end
  	end
  end


ahora agregaremos un sidebar: (para jugar xq a nadie le importa tu dolor de cabeza infinito)

	sidebar :links do
		ul do
			li do
				link_to 'NombreLInk'
			end
			li do
				link_to 'NombreLink'
			end
		end
	end

///////////CLaseess JUEVES 5 NOV

COmo integrar active admin con cancan! //aquí falta mucho xq no cahé leer documentación.

hago mi
gem 'activeadmin', '~> 1.0.0.pre2'

$ bundle
rails g active_admin:install --skip-users //para que NO me cree un ususario ya que tego uno con devise y cancan

no se me crea un seed de user como antes.

rake db:migrate

en active_admin.rb, cambiar la cuenta por
:destroy_user_session_path

y decomento línea

config.logout_link_method = :delete (aqui cambio delete por el get que venía por defecto xq se cambiaron las rutas)


en cancna en ability.rb

le agregamos una habilidad:...oh me perdi...te fuiste a la mieryi....

en el active_admin.rb tu puedes configurar toodo y para tu weveo.
puedes configurar el nombre de tu pagina y hacerle que se link  poniendole un '\'
(\ solo te lleva al root, \warwver te lleva al warever path...etc)
'

SCOPES : (botones de filtrado) //los scopes son metodos de clase, para añadir querys (consultas a base de datos = query)

PARA HACER BOTONES EN LAS VISTAS DEL ACTIVE ADMIN PRA FILTRADO

entonces en user.rb

scope :all, default: true // aqui me muestra a todos
scope 'Admins', :admin //aquí me filtra mostrando solo a los admin
scope 'Clientes', :client // aqui me filtra mostrando solo a los clientes


//////
Batch ACTION: //esto se muestra dentro de la vista del ActiveAdmin
por defecto este viene con un destroy que uno se lo saca al poner por ejemplo en user.rb

actions :index, :show //y borrar :destroy

y me creo por ejemplo algo para cambiar de roles (jugando)

batch_action :change_role do |ids| //:change_role (nombre inventado)
	batch_action_colletion.find(ids).each do |user|
		if user.admin?
			user.client!
		elsif user.client!
			user.admin!
		end
	end
	redirect_to collection_path, alert: 'Roles cambaido!!!'
end

//////clases viernes
Documentacion authorization adapter
active_admin.

me lo creo con --skip xq me cree un user con devise

ahora en ability:

para que otra persona que no se el admin no me entre al active_admin escribo: ***

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||=User.new(role: 2)

    if user.admin?
        can :manage, :all
    elsif user.normal?
    can :read, :all
    can :create, [Post, Comment]
    can [:edit, :destroy], [Post, Comment], user_id: user.id
    cannot :manage, ActiveAdmin::Page //***** aqui le restrinjo la entrada al dashbord
    else
     can :read, :all
     cannot :manage, ActiveAdmin::Page //***** aqui le restrinjo la entrada al dashbord
    end

  end
end

y hacer metodo en APLICATIOn_controller

private

def acces_denied
	redirect_to root_url , alert y algo mas que no cacho.....
end

$ rails g active_admin:resource comment

esto es para crear el recurso de comments, pero te va a tirar un error entonces vas a:

active_admin/commnet.rb y agregas el as: para que se diferencie del comments de active admin

ActiveAdmin.register Comment, as: 'Post Comments' do
etc...

batch_action (aprobar comentarios)

batch_action :Aprobar do |ids|
	batch_action_colletion.find(ids).each do |comment|
		comment.approved!
		end
	end
	redirect_to collection_path, alert: 'gracias por tu!!!'
end

batch_action :Rechazar do |ids|
	batch_action_colletion.find(ids).each do |comment|
		comment.rejected!
		end
	end
	redirect_to collection_path, alert: 'Roles cambaido!!!'
end


//////////////Clases lunes 9 NOV ////

TDD
TESTING

usaremos una gema llamda mini test (antes llamda test unit? parece)
rails viene incluido con mini test.

GEM MINITEST
gem 'minitest'
$ gem install minitest

me hago una carpeta llamado lib y en el un archivo llamado calculator.rb, donde me creo mi clase Calculator y me creo mis metodos add y subtract aun vacíos.
luego en mi otra carpeta llamada test, me creo un archivo llamado test_nombrearchivo_basic, en este caso, test_calculator_basic

require 'minitest/autorun' // lo escribbo en mi archivo test_nombrearchivo de lib
require 'calculator' //nombre archivo(ejemplo calculadora)

class TestCalculator < Minitest::Test //eso está extendiendo de la clase Minitest (en este caso la clase padre es Minitest. (clase extendida).)

	def setup
		@calc = Calculator.new
	end

	def test_addition
		assert_equal 4, @calc.add(2,2), "Debe sumar 2 +2 y dar como resultado 4"//esto me va a mandar un error, ya que en mi clase mi metodo add lo tengo vacio.
	end
end
mis tests están llenos de assertions (declaraciones afirmativas). assert_algo
y tb existen los refute (lo contrario) refute_algo // poco común ver test con refutes.

//PARA que GEM MINITEST reconozca que son test debemos llamarlos test_warevius

Como ejecutar TEST en mi consola:
sencillo, llamo al archivo en mi consola:
$ ruby test/test_calculator_basic.rb

Mai_Clear  Magdalenas-MacBook-Air in ~/desktop/rubytesting

$ ruby test/test_calculator_basic.rb

Run options: --seed 24719

# Running:

E

Finished in 0.002106s, 474.7952 runs/s, 0.0000 assertions/s.

  1) Error:
TestCalculator#test_addition:
ArgumentError: wrong number of arguments (2 for 0)
    /Users/Mai_Clear/Desktop/rubytesting/lib/calculator.rb:3:in `add'
    test/test_calculator_basic.rb:11:in `test_addition'

1 runs, 0 assertions, 0 failures, 1 errors, 0 skips

'////////////////////////////////////////////////////////
so, la idea es crear un test que te tire inicialmente un error, para que luego uno agregue y erregle los errores para luego testear y que te tire todo bien.
es como para ir guiandote para ir construyendo tu app., tu metodo o idea.

GEMA MINITEST-REPORTERS //para enchular los test en la consola.
$ gem install minitest-reporters

luego me hago en mi carpeta de test un archivo llamado test_helper
y escribir:

require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

///// luego voy a mi test_calculator_basic.rb
y solo llamo a mi helper para no tener uqe llamar a mi gema en todos mis archivos

require_relative 'test_helper'
require_relative '../lib/calculator'
(ojo que borre require 'minitest/autorun' , ya que esta en mi helper.)


////clases martes 10 NOv

TESTING CON RAILS

Rails viene con minitest incluida.

TDD (test driven development, desarrollo guiado por el test)
(los casos de usos que vimos en el trello se van a transformar en nuestros tests)

Testing unitarios en los modelos:

lo que uno deberia testear en los modelos son:
-*validaciones en los campos (que vienen restricciones)
-*relaciones
-todo lo que es logica de negocios
-y ojala que exista un test por cada metodo que tenga ese modelo.

** estas dos son las mas importantes.


en rails me permite escribir los test de la siguiente manera:
class ProductTest < ActiveSupport::TestCase

	test "cualquier nobre de test que yo quiera" do
	  assert_algo true
	end /// no como antes que era todo con guion bajo.

end

todos loq eu dicen assert_not se pueden reemplazar por refute
lo mejorcito es que haya UN assert por cada test a lo mas 2.

escribir esto en sublime text preferences/settings more/syntax-especific User:

{
	"extensions":
	[
		".gemrc",
		"yml.dist",
		"yml"
	],
	"tab_size": 2,
	"translate_tabs_to_spaces": true
}

Para poder escribir en los archivos .yml, que es lo que vamos a hacer ahora en
(al crear el user con devise debo agregar los iguiente a mano pq que da vacío)
test/fixtures/user.yml
me creo un user , es como un seed.

Mai:
  name: Mag
  lastname: Clear
  username: MaiClear
  email: mai@clear.com
  encrypted_password: <%= Devise::Encryptor.digest(User,'password') %> //>en caso de usar devise!

  y ahora en products.yml

one:
  name: MacBook Air
  content: notebook 13 pulgadas
  price: 13000
  user: Mai // pongo el nombre que va en "one" no en username  or name

En el fondo los fixtures son como un seeds, son datos que tendremos disponibles cada vez que CORREMOS EL TEST.


como ejecuto mis test en la consola de rails

$ rake //corre TODOS los test.

$ rake test test/models/user_test.rb //se pone la ruta cdo quieres correr el test especifico


////// CLases miercoles 11 de nov ////

ara validar que un numero sea integer:

validates :price, numericality: {only_integer: true}
validates :price, numericality: true


validates :description , lenght: {minimun: 30 }


TEST PARA DEVISE

Incluir dentro  del test_helper:

class ACtionController::TestCase
	include


///tags con tabla intermedia relacion musho es a mushommssss.


AJAX en rails

-agregar a los formularios remote: true
<%= form_for(@post, remote: true) do |f| %> //con remote: true sabe que estas pidiendo ajax.
>
y en
posts_controller
>en el metodo que llama al formulario, a parte del .json en respond_to
agrego la línea en el if y en else

format.js //*****

def create
    @post = Post.new(post_params)
    @post.user = current_user if user_is_sign_in?

    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
        format.js //******
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
        format.js //*****
      end
    end
  end

-luego en la vistas de post (o del que estamos arreglando)

shift + cmd +p => partial, para crear nueva vista partial y renderiarla con lo que tengo seleccionado.


AJAX

no olvidar escapar en el archivo .js dentro de ruby ejemplo

.("<%= j @comment.content %> ") para no tener problemas con las rutas.


Ahora nos haremos un buscador:

en index nos haremos un fomrulario:

<div>
<label> Buscar: <input class= "search" type="text" name="query" placeholder="Ingresa tu busqueda"></label>
</div>

ahora en el index
seleccionar mi clase ,mi buscador,
<script>
	$('.search').on('keyup',function(event){
		var query = $(this).val();
		$.ajax({
			url: '<%= posts_path %>',
			type: 'GET',
			dataType: 'script',
			data: {q: query},

			})

		});
</script>

y en post_controller

en el metodo index crear el
def index
	if params[:q].present?
		@posts = Post.where("name LIKE ?","%#{ params[:q]% }")
	else

	respond_to do |format|
		format.html //estos dos pq tb nos debe devolver el html que viene por defecto.
		format.js //
	end

end

y no olvidar agregar en las vistas de post el archivo

index.js.erb.

$('.posts').html('<%= j render @posts %>'); //el selector aqui .posts es el nombre de la clase lo mismo arriba .search


Los scopes se usan para hacer consultas a las bases de datos, y son metodos de clase.


///////clases 16 noviembre lunes/////

GEOLOCALIZACION

gema GEOCODER

	gem 'geocoder'

	https://github.com/alexreisner/geocoder

	Agrego al usuario los campos latitud, longitud y adress

	luego debemos editar las vistas y agregar nuestros nuevos campos.

	no olvidar agregar a los strong params en el app_controller. // SOLO en devise esta en application_controller, para modelos normales tenemos el controlador especifico.

	Luego en el modelo user

	geocoded_by :address
	after_validation :geocode, if: ->(obj) {obj.address.present? and obj.address_changed?} //antes del metodo default.

	esto se corre en la consola, para que para todos los usuario si se le agrega con direcciones, te agrega las longitudes y latitudes luego (cdo ya tenia creado ususarios sin aplicarles geocoders.)

	$ rake geocode:all CLASS=User

	ahora agregamos una ruta ,para que cdo uno agrege o edite el perfil, no te saque del usuario
	vamos a las rutas: //*****

	  devise_scope :user do
	    get    "login"   => "devise/sessions#new",         as: :new_user_session
	    post   "login"   => "devise/sessions#create",      as: :user_session
	    delete "signout" => "devise/sessions#destroy",     as: :destroy_user_session

	    get    "signup"  => "devise/registrations#new",    as: :new_user_registration
	    post   "signup"  => "devise/registrations#create", as: :user_registration
	    put    "signup"  => "devise/registrations#update", as: :update_user_registration
	    get    "account" => "devise/registrations#edit",   as: :edit_user_registration
	    get    "users"   => "devise/registrations#edit",   as: :user_root//**** esta.
	  end


	  .nearbys(n) // metodo de INSTANCIA, que me muestro los objetos que estan cercano a ese objeto.


luego si corremos esta linea el la consola:

$ rails g geocoder:config

y en el initalizers aparece:
en el initializers/geocoder.rb

donde podemos configurarlo.

(por ejemplo podemos cambiar el millas por km)
descomentando

units: :km,


Voy a assets y en javascript me hago un archivo llamado locations.js
(ojo que a mi salió uno creado en singular (al parecer se creo con el controlador))
y escribo
$(document).on("page:change", function(){

	function geoSuccess(position) {
		var lat = position.coords.latitude;
		var lon = position.coords.longitude;

		$('.js-latitude').val(lat);
		$('.js-longitude').val(lon);

		$.ajax({
			url:'/get_address',
			type: 'GET',
			dataType: 'script',
			data: {
				latitude: lat,
				longitude: lon,
			}
		});
	}
	function geoError(error){
		alert('Intentalo de nuevo mas tarde!');
	}

	function getLocation(){
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(geoSuccess, geoError);
		}
		else{
			alert('Geolocation is not supported by this browser, use Chrome, Firefox or Safari');
		}
	}

	if($('.registrations.new').length > 0) {
		getLocation();
	}

	});


ahora en las rutas agregar

get 'get_address', to: 'locations#get_address'

luego me creo un controllador para controlar las vistas, y agregar mi format.js, ya que estoy usando ajax (luego hacer la vista tb, con el nombre del metodo.)

$ rails g controller locations get_address


y en el controller escribo:

class LocationsController < ApplicationController
  def get_address
    lat = params[:latitude]
    lon = params[:longitude]
    @address = Geocoder.address("#{lat},#{lon}")
    respond_to do |format|
      format.js
    end
  end
end

y cambio el nombre de la vista html, de get_address, ya que no usaremos html.
en ella escribo: get_addess.js.erb, en ella escribo:
s

alert('.js-address').val("<%= j @address %>"); //aqui estamos seleccionando la clase js_address porque le agregue esa clase en mi form de devise registration a mi address, lat y lon. para poder hacer este tipo de cosas.

y en views/layaout/application.html.erb
application.html.erb //*******



<!DOCTYPE html>
<html>
<head>
  <title>Ecommerce</title>
  <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track' => true %>
  <%= javascript_include_tag 'application', 'data-turbolinks-track' => true %>
  <%= csrf_meta_tags %>
</head>
<body class="<%= controller_name %> <%= action_name %>"> //***AGREGO ESTAS DOS CLASES.

	<%= render 'shared/navbar' %>

	<%= flash_messages %>

	<div class="container">
		<%= yield %>
	</div>

	<%= render 'shared/footer' %>

</body>
</html>



///// clases miercoles 18 nov///////////


GOOGLE MAPS


developers.google.com/maps

Gema GMAPS4RAILS
https://github.com/apneadiving/Google-Maps-for-Rails

gem 'gmaps4rails'
pero esta gema tiene una dependencia de esta siguiente gema, tonces debemos ademas agregar esta gema: ya que
gem 'underscore-rails' // gmaps4rails depende de esta gema .

Luego en asstes/javascipts/aplication.js

agregamos antes de //= require tree
//= require underscore
//= require gmaps/google

LUego vamos al aplication layaut en views/layaout/application.html.erb
application.html.erb

agregamos antes del cierre del body unos javascripts

<script src="//maps.google.com/maps/api/js?v=3.18&sensor=false&client=&key=&libraries=geometry&language=&hl=&region="></script>
<script src="//google-maps-utility-library-v3.googlecode.com/svn/tags/markerclustererplus/2.0.14/src/markerclusterer_packed.js"></script>
<script src='//google-maps-utility-library-v3.googlecode.com/svn/tags/infobox/1.1.9/src/infobox_packed.js' type='text/javascript'></script> <!-- only if you need custom infoboxes -->

que las sacamos de la documentacion de gmaps4rails de 2) Javascript Dependencies: en
https://github.com/apneadiving/Google-Maps-for-Rails


LUego tenemos que añadir un div vacio, que es donde se va a cargar el mapa.
para el html en donde quiero que salga.

en este ejemplo vamos
al registration / new.html.erb

agrego antes del cierre del Div , despues del end

  <div class = "col-md-5 col-md-offset-1">
      # map

    <div id= "map" class = "gmap m-t-md"></div>

  </div>

  Luego en stylesheet , en este caso locations.scss

  .gmap {
	width: 100%;
	height: 400px;
	background-color: red;
}

y para llamarlo voy aplications.scss

y agrego ***

 @charset "UTF-8";
 $enable-flex: true;
 @import "bootstrap";
 @import "alert";
 @import "buttons";
 @import "locations"; //**** agrego esta linea para llamar mi archivo de estilo. con el nombre de mi archivo.

 luego voy a locations.js y escribo en el final (para construirme un manejador) Para que aparezca el mapa.

var handler = Gmaps.build('Google');
	handler.buildMap({provider: {}, internal: {id: 'map'}}, function(){
		handler.map.centerOn({
			lat: -33.43463512865037,
			lng: -70.63528559705685
		})
		handler.getMap().setZoom(15);
	});


	para agregar o sacarles cosas al mapa, dentro de la documentacion
	voy a MapsOptions.


	EN REALIDAD LO ANTERIOR NO

	luego en get_address

	var handler = Gmaps.build('Google');
	handler.buildMap({provider: {}, internal: {id: 'map'}}, function(){
		var markers = handler.addMarkers(<%= raw @markers.to_json %>);
		handler.bounds.extendWith(markers);
		handler.fitMapToBounds();
		handler.getMap().setZoom(15);


	});

////> AHORA PARA EL EDIT

voy a location.js, y agrego:
if($('.registrations.edit').length > 0) {
		getUserLocation();
	}

	y su funtion:






$(document).on("page:change", function(){

	function geoSuccess(position) {
		var lat = position.coords.latitude;
		var lon = position.coords.longitude;

		$('.js-latitude').val(lat);
		$('.js-longitude').val(lon);

		$.ajax({
			url:'/get_address',
			type: 'GET',
			dataType: 'script',
			data: {
				latitude: lat,
				longitude: lon,
			}
		});
	}
	function geoError(error){
		alert('Intentalo de nuevo mas tarde!');
	}

	function getLocation(){
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(geoSuccess, geoError);
		}
		else{
			alert('Geolocation is not supported by this browser, use Chrome, Firefox or Safari');
		}
	}

	function getUserLocation(){

		$.ajax({
			url:'/get_address',
			type: 'GET',
			dataType: 'script',
			// data: {
			// 	latitude: lat,
			// 	longitude: lon,
			// }
		});

	}

	$('.js-getlocation').on('click', function(event) {
		event.preventDefault();
		getLocation();
	});

	if($('.registrations.new').length > 0) {
		getLocation();
	}

	if($('.registrations.edit').length > 0) {
		getUserLocation();
	}



});

LUego voy a mi locations_controller y agrego otros params

 @user = current_user

    if @user
      @adress = @user.address
      lat = @user.latitude
      lon = @user.longitude
    end

    if params[:latitud].present?
      lat = params[:latitude]
      lon = params[:longitude]
      @address = Geocoder.address("#{lat},#{lon}")
    end

////////////////////////quedando asi:

    class LocationsController < ApplicationController
  def get_address

    @user = current_user

    if @user
      @adress = @user.address
      lat = @user.latitude
      lon = @user.longitude
    end

    if params[:latitud].present?
      lat = params[:latitude]
      lon = params[:longitude]
      @address = Geocoder.address("#{lat},#{lon}")
    end

    @markers = [{
      lat: lat,
      lng: lon
      }]

    respond_to do |format|
      format.js
    end
  end
end
//////////////////////////////////////////

AHora COMO MOSTRAR VARIOS PUNTOS EN EL MAPA.



ahora nos vamos a products.erb
y agregamos :


 geocoded_by :address //***esta dice de address a lat y lng
 reverse_geocoded_by :latitude, :longitude //****esta al reves, de lat y lng a address

  after_validation :geocode, if: ->(obj) {obj.address.present? and obj.address_changed?}

  after_validation :reverse_geocoded, if: ->(obj) {(obj.latitude.present? && obj.longitude.present?) and (obj.latitude_changed || obj.longitude_changed?)}

  default_scope { order(:id) }

  y en product_controller.erb

  agregamos los strongs params.

me fui a la mierda..... me perdi


////////////////////clases jueves 19 nov ///////////////

Paginación

GEMA Kaminari
https://github.com/amatsuda/kaminari

gem 'kaminari'

Ayuda a hacer paginacion dentro de nuestro proyecto.

$ rails g kaminari:config

y en products _controller

agrego .page().per()

@products = Product.all.includes(:category).page(1).per(3)


/////////

URL FRIENDLY //para que las url sean mas personalizadas.

gem 'friendly_id'

$ rails g friendly_id
rake db:migrate

y debemos agregar Slug a loq ue quieras que parezca amistosamente en la url,
en este caso los productos

$ rails g migration addSlugToProducts
slug:string:uniq


y en el modelo product.rb

extend FriendlyId
	friendly_id :

hacer un inicialicer???

en friendly_id.rb
descomentar

config.use :slugged


/////////
GEMA PG_SEARCH //gema que solo sirve para base de datos postgres, para hacer un "BUSCAR:"
con todo tipo de filtraciones.

gem 'pg_search'
https://github.com/Casecommons/pg_search


tabla contacto:

primer nombre
apellido
street address
zip code
ciudad
pais
country code
mail
phone number
twitter
avatar //carrierwave
lat
lng

devise
user.

//////clases lunes 23 nov

google charts

GEMA CHARTKICK
gem 'chartkick'
http://chartkick.com/

(lo que hace es conectar con api de google, google charts
GOOGLE CHARTS
documentacion: https://developers.google.com/chart/

highcharts, otra api de graficos que se podria usar.
http://www.highcharts.com/)


GEMA GROUPDATE
gem 'groupdate'
https://github.com/ankane/groupdate


GEMA HIGHTOP
gem 'hightop'
https://github.com/ankane/hightop

GEMA ACTIVE_MEDIAN
gem 'active_median'
https://github.com/ankane/active_median



OJO: hay qeu cambiar los scope por defecto(default_scope) en los modelos, ya que traen problemas con loas gemas como chartkcick.

y cambiar en el controller correspondiente, que te ordene tb por el scope que te creaste.

ejemplo en user:
antes habia un default_scope { order(:role, :id) }
y lo cambio por:
scope :order_by_role, -> { order(:role, :id) }

y en el cntroller por ejemplo tenemos que:
def index
    @users = User.all
  end

y lo cambiamos por nuestro scope:

 def index
    @users = User.order_by_role
  end


  //// Luego en admin.html.erb layout

  meter el javascript de google charts, la api de google charts

  <%= javascript_include_tag "//www.google.com/jsapi", "chartkick" %>
  > en caso de google charts (todo esto sale en la docu)

luego en la vista index de admin, pero del controlador!!!, pages_controller.erb
y en index escribir esta query:

def index

	orders_raw = Order.group(:status).count
	@orders = {}
	@orders[:pendiente] = orders_raw[0]
	@orders[:pagado] = orders_raw[1]
	@orders[:cancelado] = orders_raw[2]

end

todo esto porque lo habiamos definido con enum, entonces debemos definir que nos muestre en cada indice (y no un numero)


Ahora en index.html.erb del admin/pages:


<h2> Admin Data </h2>
<%= pie_chart(tipo de chart) @orders, opciones de chartkcik %>
> EJEMPLOS:
<%= pie_chart @orders, discrete: true %>
>Agregamos el hash library, para opcciones que no se pueden poner antes(que no este en la documentacion, como por ejemplo titulo:
<%= pie_chart @orders,discrete: true,  library: {title: "Hola Mundo"} %>



>/////////////////////Clases martes 24 NOV /////////

DEPLOYMENT

INFRASTRUCTURA
(amazon web service)

Mai_Clear  Magdalenas-MacBook-Air in ~
$ chmod 400 Desktop/desafiolatamg2.pem
Mai_Clear  Magdalenas-MacBook-Air in ~
$ ssh -i Desktop/desafiolatamg2.pem ubuntu@52.33.160.229 //es ta el IP

para entrar a la maquina virtual , para salir escribir exit


//////////////////////////CONSOLA//////////////////////
Mai_Clear  Magdalenas-MacBook-Air in ~
$ chmod 400 Desktop/desafiolatamg2.pem
Mai_Clear  Magdalenas-MacBook-Air in ~
$ ssh -i Desktop/desafiolatamg2.pem ubuntu@52.33.160.229
The authenticity of host '52.33.160.229 (52.33.160.229)' can't be established.
RSA key fingerprint is 9a:95:73:9f:b5:b9:65:95:e3:25:d2:fc:b8:35:95:b9.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '52.33.160.229' (RSA) to the list of known hosts.
Welcome to Ubuntu 14.04.2 LTS (GNU/Linux 3.13.0-48-generic x86_64)

 '* Documentation:  https://help.ubuntu.com/

  System information as of Wed Nov 25 00:00:24 UTC 2015

  System load:  0.0               Processes:           96
  Usage of /:   11.4% of 7.74GB   Users logged in:     0
  Memory usage: 7%                IP address for eth0: 172.31.32.131
  Swap usage:   0%

  Graph this data and manage this system at:
    https://landscape.canonical.com/

  Get cloud support with Ubuntu Advantage Cloud Guest:
    http://www.ubuntu.com/business/services/cloud

136 packages can be updated.
63 updates are security updates.


Last login: Wed Nov 25 00:00:25 2015 from 186.67.30.194
_____________________________________________________________________
WARNING! Your environment specifies an invalid locale.
 This can affect your user experience significantly, including the
 ability to manage packages. You may install the locales by running:

   sudo apt-get install language-pack-UTF-8
     or
   sudo locale-gen UTF-8

To see all available language packs, run:
   apt-cache search "^language-pack-[a-z][a-z]$"
To disable this message for all users, run:
   sudo touch /var/lib/cloud/instance/locale-check.skip
_____________________________________________________________________

ubuntu@ip-172-31-32-131:~$ exit
logout
Connection to 52.33.160.229 closed.
Mai_Clear  Magdalenas-MacBook-Air in ~
$ cp ~/Desktop/Mai_Clear  Magdalenas-MacBook-Air in ~
cp: /Users/Mai_Clear/Desktop/Mai_Clear: No such file or directory
cp: : No such file or directory
cp: Magdalenas-MacBook-Air: No such file or directory
cp: in: No such file or directory
Mai_Clear  Magdalenas-MacBook-Air in ~
$ $ chmod 400 Desktop/desafiolatamg2.pem
-bash: $: command not found
Mai_Clear  Magdalenas-MacBook-Air in ~
$ Mai_Clear  Magdalenas-MacBook-Air in ~
-bash: Mai_Clear: command not found
Mai_Clear  Magdalenas-MacBook-Air in ~
$ cp ~/Desktop/desafiolatamg2.pem ~/.ssh
Mai_Clear  Magdalenas-MacBook-Air in ~
$ cd ~/.ssh
Mai_Clear  Magdalenas-MacBook-Air in ~/.ssh
$ ls
desafiolatamg2.pem github_rsa         github_rsa.pub     id_rsa             id_rsa.pub         known_hosts
Mai_Clear  Magdalenas-MacBook-Air in ~/.ssh
$ cd
Mai_Clear  Magdalenas-MacBook-Air in ~
$ eval "$(ssh-agent-s)"
-bash: ssh-agent-s: command not found
Mai_Clear  Magdalenas-MacBook-Air in ~
$ eval "$(ssh-agent -s)"
Agent pid 80020
Mai_Clear  Magdalenas-MacBook-Air in ~
$ ssh-add ~/.ssh/desafiolatamg2.pem
Identity added: /Users/Mai_Clear/.ssh/desafiolatamg2.pem (/Users/Mai_Clear/.ssh/desafiolatamg2.pem)
Mai_Clear  Magdalenas-MacBook-Air in ~
$ ssh-add-l
-bash: ssh-add-l: command not found
Mai_Clear  Magdalenas-MacBook-Air in ~
$ ssh-add -l
2048 03:4e:45:59:a4:c5:01:49:6f:46:ee:dd:7e:02:d0:68 /Users/Mai_Clear/.ssh/desafiolatamg2.pem (RSA)
Mai_Clear  Magdalenas-MacBook-Air in ~
$ ssh ubuntu@52.33.73.197
The authenticity of host '52.33.73.197 (52.33.73.197)' can't be established.
RSA key fingerprint is 70:5e:7a:dd:af:94:12:4e:2d:53:b2:e0:96:cb:58:52.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '52.33.73.197' (RSA) to the list of known hosts.
Welcome to Ubuntu 14.04.2 LTS (GNU/Linux 3.13.0-48-generic x86_64)

 '* Documentation:  https://help.ubuntu.com/

  System information as of Mon Nov 23 20:45:42 UTC 2015

  System load: 0.16             Memory usage: 5%   Processes:       81
  Usage of /:  9.8% of 7.74GB   Swap usage:   0%   Users logged in: 0

  Graph this data and manage this system at:
    https://landscape.canonical.com/

  Get cloud support with Ubuntu Advantage Cloud Guest:
    http://www.ubuntu.com/business/services/cloud

0 packages can be updated.
0 updates are security updates.



The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.

_____________________________________________________________________
WARNING! Your environment specifies an invalid locale.
 This can affect your user experience significantly, including the
 ability to manage packages. You may install the locales by running:

   sudo apt-get install language-pack-UTF-8
     or
   sudo locale-gen UTF-8

To see all available language packs, run:
   apt-cache search "^language-pack-[a-z][a-z]$"
To disable this message for all users, run:
   sudo touch /var/lib/cloud/instance/locale-check.skip
_____________________________________________________________________

ubuntu@ip-172-31-37-139:~$ sudo locale-gen "en_US.UTF-8"
Generating locales...
  en_US.UTF-8... up-to-date
Generation complete.
ubuntu@ip-172-31-37-139:~$ sudo dpkg-reconfigure locales
perl: warning: Setting locale failed.
perl: warning: Please check that your locale settings:
	LANGUAGE = (unset),
	LC_ALL = (unset),
	LC_CTYPE = "UTF-8",
	LANG = "en_US.UTF-8"
    are supported and installed on your system.
perl: warning: Falling back to the standard locale ("C").
locale: Cannot set LC_CTYPE to default locale: No such file or directory
locale: Cannot set LC_ALL to default locale: No such file or directory
Generating locales...
  en_US.UTF-8... up-to-date
Generation complete.
ubuntu@ip-172-31-37-139:~$ sudo locale-gen "en_US.UTF-8"
Generating locales...
  en_US.UTF-8... up-to-date
Generation complete.
ubuntu@ip-172-31-37-139:~$ sudo dpkg-reconfigure locales
perl: warning: Setting locale failed.
perl: warning: Please check that your locale settings:
	LANGUAGE = (unset),
	LC_ALL = (unset),
	LC_CTYPE = "UTF-8",
	LANG = "en_US.UTF-8"
    are supported and installed on your system.
perl: warning: Falling back to the standard locale ("C").
locale: Cannot set LC_CTYPE to default locale: No such file or directory
locale: Cannot set LC_ALL to default locale: No such file or directory
Generating locales...
  en_US.UTF-8... up-to-date
Generation complete.
ubuntu@ip-172-31-37-139:~$ sudo nano /etc/enviroment
ubuntu@ip-172-31-37-139:~$ exit
logout
Connection to 52.33.73.197 closed.
Mai_Clear  Magdalenas-MacBook-Air in ~
$ ssh ubuntu@52.33.73.197
Welcome to Ubuntu 14.04.2 LTS (GNU/Linux 3.13.0-48-generic x86_64)

 * Documentation:  https://help.ubuntu.com/

  System information as of Wed Nov 25 00:12:18 UTC 2015

  System load:  0.0               Processes:           96
  Usage of /:   11.4% of 7.74GB   Users logged in:     0
  Memory usage: 7%                IP address for eth0: 172.31.37.139
  Swap usage:   0%

  Graph this data and manage this system at:
    https://landscape.canonical.com/

  Get cloud support with Ubuntu Advantage Cloud Guest:
    http://www.ubuntu.com/business/services/cloud

136 packages can be updated.
63 updates are security updates.


Last login: Wed Nov 25 00:12:19 2015 from 201.220.244.135
ubuntu@ip-172-31-37-139:~$ sudo dpkg-reconfigure tzdata
perl: warning: Setting locale failed.
perl: warning: Please check that your locale settings:
	LANGUAGE = (unset),
	LC_ALL = (unset),
	LC_CTYPE = "UTF-8",
	LANG = "en_US.UTF-8"
    are supported and installed on your system.
perl: warning: Falling back to the standard locale ("C").
locale: Cannot set LC_CTYPE to default locale: No such file or directory
locale: Cannot set LC_ALL to default locale: No such file or directory
/usr/bin/locale: Cannot set LC_CTYPE to default locale: No such file or directory
/usr/bin/locale: Cannot set LC_ALL to default locale: No such file or directory

Current default time zone: 'America/Santiago'
Local time is now:      Tue Nov 24 21:22:50 CLT 2015.
Universal Time is now:  Wed Nov 25 00:22:50 UTC 2015.

ubuntu@ip-172-31-37-139:~$ date
Tue Nov 24 21:22:53 CLT 2015
////////////////////////////////////////////////////////////////////

sudo ln -s ruta_original ruta_destino /// para hacer un link SIMBOLICO (-s)


//////CLASES SUBIR EXCEL Y CVS

crear lib folder y archivo
Folder: Csv2Json
Archivo: Csv2json

module Csv2json
  require 'csv'
  require 'json'

  def self.csv_to_json(path)
    file_name = File.basename(path, '.*')

    File.open("public/json/#{file_name}.json", 'w') do |f|
      f.write(CSV.open(path, headers: true, header_converters: :symbol, converters: :all).to_a.map(&:to_hash).to_json)
      f.close

    end
  end

end


en config/aplication) para llamar al modulo.

escribir :

config.autoload_paths += %W(#{Rails.root}/lib)
    config.autoload_paths += %W(#{Rails.root}/lib/Csv2json)///con el nombre del folder, y la W es mayuscula pq interga dentro del hash #{} <-eso

en document_controller:
/////////////////////////////////////

class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  # GET /documents
  # GET /documents.json
  def index
    @documents = Document.all
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
  end

  # GET /documents/new
  def new
    @document = Document.new
  end

  # GET /documents/1/edit
  def edit
  end

  # POST /documents
  # POST /documents.json
  def create
    @document = Document.new(document_params)

    if @document.invalid?
      return render :new
    end

    @name = @document.name.downcase

    @document_type = File.extname @document.file.path

    if @document_type == '.csv'
      Csv2json::csv_to_json @document.file.path
    elsif @document_type == '.xls' || @document_type == '.xlsx'
      return
    end

    case @name
    when 'regions', 'regiones', 'region' then read_regions
    when 'provincia', 'province', 'provincias', 'provinces' then
      read_provinces
    when 'comune', 'communes', 'comunas', 'comuna' then read_communes
    end

    respond_to do |format|
      if @document.save
        format.html { redirect_to @document, notice: 'Document was successfully created.' }
        format.json { render :show, status: :created, location: @document }
      else
        format.html { render :new }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documents/1
  # PATCH/PUT /documents/1.json
  def update
    respond_to do |format|
      if @document.update(document_params)
        format.html { redirect_to @document, notice: 'Document was successfully updated.' }
        format.json { render :show, status: :ok, location: @document }
      else
        format.html { render :edit }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @document.destroy
    respond_to do |format|
      format.html { redirect_to documents_url, notice: 'Document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit(:name, :file)
    end


    def read_regions
      path = 'public/json/regions.json'
      json = JSON.parse(File.open(path).read)

      Regions.delete_all
      json.each do |data|
        Regions.create(number: :data['numero'],name: :data['nombre'],title: :data['titulo'],id: :data['id'] )
      end
    end

    def read_communes
      path = 'public/json/communes.json'
    end
    def read_provinces
      path = 'public/json/provinces.json'
    end

end
///////////////////////////////////////
NO OLVIDAR QUE ANTES DE CUALQUIER COMMIT PONER:


EN EL GIT.IGNORE:

CONFIG/DATABASE.YML
CONFIG/SECRETS.YML
.ENV
.POWENV

PARA QUE NO HAYA PROBLEMAS CON LAS CLAVES!!!!!!!!! TOP SECRETS!!!!


//////////////gema para forms y ediciones en linea y mucho mas

https://github.com/bernat/best_in_place
best in place
https://www.youtube.com/watch?v=zFiIWzqG20Q&app=desktop
//////////////////

gema de likes

gem 'acts_as_votable'
https://github.com/ryanto/acts_as_votable
