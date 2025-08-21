// 1. Crea una clase Pelicula con dos atributos: String titulo y int anioEstreno.
// 2. Declara un Map<String, List<Pelicula>> llamado catalogoStreaming, donde las
// claves representan plataformas como 'Netflix', 'HBO', 'Disney+', y los valores
// son listas de objetos Pelicula.
// 3. Agrega al menos dos películas a cada plataforma utilizando el método adecuado.
// 4. Imprime los títulos de todas las películas disponibles en la plataforma 'Netflix'.
// 5. Agrega una película nueva a la plataforma 'Disney+.
// 6. Cambia el año de estreno de una de las películas en 'HBO'.
// 7. Elimina una película de 'Netflix.
// 8. Recorre todo el mapa y muestra el nombre de cada plataforma seguido por la
// lista de sus peliculas en formato:

//Paso 1
class Pelicula {
  String titulo;
  int anioEstreno;

  Pelicula(this.titulo, this.anioEstreno);


}
//Paso 2

void main(){
  Map<String, List<Pelicula>> catalogoStreaming = {
    'Netflix': [
      Pelicula('Inception', 2010),
      Pelicula('The Irishman', 2019)
    ],
    'HBO': [
      Pelicula('Game of Thrones', 2011),
      Pelicula('Westworld', 2016)
    ],
    'Disney+': [
      Pelicula('The Mandalorian', 2019),
      Pelicula('Soul', 2020)
    ]
  };

  // Paso 4: Imprime los títulos de todas las películas disponibles en Netflix
  print("Películas en Netflix:");
  catalogoStreaming['Netflix']?.forEach((pelicula) {
    print("- ${pelicula.titulo}");
  });

  // Paso 5: Agrega una película nueva a Disney+
  catalogoStreaming['Disney+']?.add(Pelicula('Luca', 2021));
  
  print("\nPelículas en Disney+ después de agregar una nueva:");
  catalogoStreaming['Disney+']?.forEach((pelicula) {
    print("- ${pelicula.titulo}");
  });

  // Paso 6: Cambia el año de estreno de una de las películas en HBO
  var hboPeliculas = catalogoStreaming['HBO'];
  if (hboPeliculas != null && hboPeliculas.isNotEmpty) {
    hboPeliculas[0].anioEstreno = 2012; // Cambiando el año de la primera película
    print("\nAño de estreno actualizado para '${hboPeliculas[0].titulo}': ${hboPeliculas[0].anioEstreno}");
  }

  // Paso 7: Elimina una película de Netflix
  var netflixPeliculas = catalogoStreaming['Netflix'];
  if (netflixPeliculas != null && netflixPeliculas.isNotEmpty) {
    netflixPeliculas.removeAt(0); // Eliminando la primera película
    print("\nPelículas en Netflix después de eliminar una:");
    netflixPeliculas.forEach((pelicula) {
      print("- ${pelicula.titulo}");
    });
  }

  // Paso 8: Recorre todo el mapa y muestra el nombre de cada plataforma seguido por la lista de sus películas
  print("\nCatálogo completo:");
  catalogoStreaming.forEach((plataforma, peliculas) {
    print("$plataforma:");
    peliculas.forEach((pelicula) {
      print(" - ${pelicula.titulo} (${pelicula.anioEstreno})");
    }); 
    print("");
  });

}