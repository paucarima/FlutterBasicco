void main() {
  Map<String, int> edades = {"Alice": 30, "Bob": 25, "Charlie": 35};
  print(edades);
  print(edades.keys);
  print(edades.values);
  print(edades.containsKey('Bob'));
  print(edades['Alice']);
  edades['Diana'] = 28; // Agregar un nuevo elemento
  edades.remove('Charlie'); // Eliminar un elemento
  print(edades);

  Map<String, List<String>> paises = {
    "Colombia": ["Bogotá", "Medellín"],
    "México": ["Ciudad de México", "Guadalajara"],
    "Argentina": ["Buenos Aires", "Córdoba"],
  };

  print(paises["Colombia"]); // Imprime las ciudades de Colombia
  print(paises["México"]![1]); // Imprime la segunda ciudad de México
}
