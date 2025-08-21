// EJERCICIOS PROPUESTOS:
// Ejercicio 1 - Planificador de Comidas Semanal
// 1. Declara una List<String> llamada comidasFavoritas que contenga al menos
// cinco platos diferentes.
// 2. Agrega una nueva comida al final de la lista utilizando el método
// correspondiente.
// 3. Elimina una de las comidas existentes.
// 4. Imprime la comida en la posición 2.
// 5. Crea una List<List<String>> llamada menuSemanal, donde cada sublista
// representa un dia de la semana con tres comidas: desayuno, almuerzo y cena.
// 6. Imprime el almuerzo del día martes (indice 1).
// 7. Cambia la cena del viernes (índice 4) por otra comida.
// 8. Recorre el menú semanal con un bucle y muestra todas las comidas organizadas
// por dia.

void main() {
  // Paso 1
  List<String> comidasFavoritas = [
    "Pizza",
    "Sushi",
    "Salchipapa",
    "Encebollado",
    "Guatita"
  ];

  // Paso 2
  comidasFavoritas.add("Hamburguesa");

  // Paso 3
  comidasFavoritas.remove("Salchipapa");

  // Paso 4
  print("Comida en la posición 2: ${comidasFavoritas[2]}");

  // Paso 5
  List<List<String>> menuSemanal = [
    ["Cereal", "Sándwich", "Pollo con arroz"], // Lunes
    ["Yogur", "Ensalada César", "Pescado al horno"], // Martes
    ["Huevos revueltos", "Pizza", "Sopa de verduras"], // Miércoles
    ["Panqueques", "Burrito", "Espaguetis"], // Jueves
    ["Fruta", "Hamburguesa", "Ensalada griega"], // Viernes
    ["Smoothie", "Sushi", "Carne asada"], // Sábado
    ["Tostadas", "Pasta", "Pizza"] // Domingo
  ];

  // Paso 6
  print("Almuerzo del martes: ${menuSemanal[1][1]}");

  // Paso 7
  menuSemanal[4][2] = "Lasagna";

  // Paso 8
  for (int i = 0; i < menuSemanal.length; i++) {
    print("Día ${i + 1}:");
    print(" Desayuno: ${menuSemanal[i][0]}");
    print(" Almuerzo: ${menuSemanal[i][1]}");
    print(" Cena: ${menuSemanal[i][2]}");
    print("");
  }

 
}