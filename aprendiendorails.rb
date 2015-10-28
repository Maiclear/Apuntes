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
crear el GIT IGNORE (osx + rails) generar
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

	$ rails g migration addPostReftoComment post:references (aqui estoy agregando un foreign key en comment de post)

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
	rake deb:create
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
RELACION MUCHOS ES A MUCHOS:
	*---*
	n---n

	has_and_belong_to_many (HABTM)

	$ rails g migration CreateJoinTableNombreTabla1_NombreTabla2 // esto me crea mi tabla intermedia.

	cdo es es mucho es a muchos :
	por ejemplo movies con genero, muchas pelis puede tener un genero y muchos gener pueden tener una peli.
	Para esto se crea una tabla intermedia con las 2 llaves foraneas.


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

	has_and_belong_to_many :genre // en la clase movie.(como antes ponias has_many, o belongs_to)
	has_and_belong_to_many :movie // en la clase genre.

	al crear la relacion entre ambos te crea un metodo:
	m.genres (el genres para movies) y g.movies (movies para el genre) // en este casp m y g fueron asignados por juancri por una peli especifica para m y un genero especifico para g. ( un m =Movie.find(6), g = Genre.find(4), por ejemplo.) y estos metodos me muestra ctos hay, puedo meter mas, puedo editar (agregar . borrar, ver)

			OTRA MANERA DE CREAR TABLA INTERMEDIA
			esta otra manera NECESITA un modelo intermedio.

			esto sirve cdo yo quiero validar, o jugar con los atributos, voy a necesitar le modelo para que se cumplan las validaciones.

			has_many through

			$rails g model movie_genre movie:references genre:references // aqui estoy creando un MODELO con las dos llaves foraneas
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

			validates :movie_id, :uniqueness: {:scope => :genre_id} // LEE ABAJO.
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

////////////////

>y en la vista layaout/aplication.html.erb agregar dentro del BODY
<%= render partial: 'shared/navbar' %>

>y en  la vista devise/registration/new.html.erb agregar bajo de la label de email (odeonde quiero que aparezca), agregar mis nuevas labels de mis nuevos campos.

 <div class="field">
    <%= f.label :name %><br />
    <%= f.text_field :name %>
  </div>

 <div class="field">
    <%= f.label :last_name %><br />
    <%= f.text_field :last_name %>
  </div>

   <div class="field">
    <%= f.label :user_name %><br />
    <%= f.text_field :user_name %>
  </div>

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

HELPERS DE DEVISE

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
    change_column :users, :role, :integer, default: nil //:users es el nombre de la tabla a la que quiero cambiar.
  end
end


y a nivel de modelo creo un modelo  User

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
	///esta para movie $ rails g migration AddUserRefToMovie y luego lo mismo para review.
	AddUserRefToReview

	class AddUserRefToReview < ActiveRecord::Migration
  def change
    add_reference :reviews, :user, index: true, foreign_key: true
  end
end
/// y luego hacerlo a nivel modelo. (y validaciones respectivamente)
en modelo USER
has_many :movies, dependent: :destroy
has_many :reviews, dependent: :destroy

validates :username, uniqueness: { case_sensitive: false }
# validate :validate_username

# def validate_username
#     if User.where(email: username).exists?
#       errors.add(:username, :invalid)
#     end
#   end

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

luego el modelo like queda:
class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :likeable, polymorphic: true
end

////

Entonces tendremos que decir al MODELO movie y review esto:

has_many :likes, as: :likeable // tiene muchos likes a travez  de la tabla poliformica
has_many :user_likes, through: :likes, source: :user //como ya se esta usando :user en este modelo se le pone :user_like (pero la verdadera fuente es :user)

MODELO DE POST
class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :post_tag
	has_many :tag, through: :post_tag
  	belongs_to :user // aqui ya esta usado el :user *

  	has_many :likes, as: :likeable
  	has_many :user_likes, through: :likes, source: :user // * por eso aqui se pone user_likes

	validates :title, presence: true
	validates :content, presence: true
end

//////HOLA ALFREDOOOO

Lo mismo para reviews.

y para el modelo USER se pone (en el ejemplo de post y comment)

has_many :likes, as: :likeable
has_many :post_likes, through: :likes, source: :post
has_many :comment_likes, through: :likes, source: :comment

////////////////////////MOdelo USER/////////////
class User < ActiveRecord::Base

  before_save :default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments
  has_many :posts

  has_many :likes, as: :likeable
  has_many :post_likes, through: :likes, source: :post
  has_many :comment_likes, through: :likes, source: :comment

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

PARA CREAR UN LIKE EN LA CONSOLA RAILS

[3] pry(main)>Comment.last.likes.build(user: User.last).save
[17] pry(main)> Post.last.likes.build(user: User.last).save

[25] pry(main)> Post.last.likes.last.user.name //para ver quien fue

luego debo agregarle la RUTA (con member en rutas) //

member do
 	get 'like'
end
//////

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
scope tipo de query ?
scopes son metodos de clase.

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