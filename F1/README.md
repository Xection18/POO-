# F1 2024 
## Ejercicio incremental Objeto-Mensaje / Polimorfismo / Colecciones

Modelar situaciones de la temporada 2024 de Fórmula 1 usando únicamente objetos autodefinidos en Wollok.

### Sección 1
#### Los pilotos


1. Verstappen tiene 437 puntos y corre para Red Bull Racing, cuyo presupuesto anual es de 415 millones de dólares. Cuando gana una carrera suma 25 puntos. También puede hacer vuelta rápida, que le otorga 1 punto adicional, pero solo cuando tiene más de 200 puntos acumulados.

2. Norris tiene 374 puntos y corre para McLaren, cuyo presupuesto anual es de 285 millones de dólares. Tiene un estilo consistente: cuando gana suma 25 puntos y si el que llega en segundo lugar es compañero de escudería, a éste le suman 3. También puede hacer vuelta rápida bajo las mismas condiciones que Verstappen.

3. Sainz tiene 241 puntos y corre para Ferrari, cuyo presupuesto anual es de 320 millones de dólares. Es conocido por su consistencia: cuando gana suma 25 puntos, y si además viene de haber ganado la carrera anterior, suma 10 puntos adicionales por racha. Inicialmente no viene de una victoria previa. Si hace vuelta rápida no le suma nada.

4. Leclerc tiene 356 puntos y también corre para Ferrari. Cuando gana suma sus 25 puntos y debido a su estilo agresivo, hace que le descuenten 3 puntos al piloto que llegó segundo. Si hace vuelta rápida se le suma 2 puntos.

5. Piastri tiene 292 puntos y corre para McLaren. Cuando gana suma 25 puntos, sin otros efectos adicionales.

**Todos los pilotos deben poder registrar la cantidad de vueltas que llevan realizadas en su auto con los neumáticos actuales.** 

### Sección 2
#### Los neumáticos
6. Cada piloto sale a pista con un tipo de neumático colocado. De momento se tienen tres compuestos disponibles. El blando dura 15 vueltas, y rinde mejor por debajo de los 25 °C. El medio dura 30 vueltas, y rinde más entre 25 y 40 °C. El duro dura 45 vueltas, y rinde mejor por encima de los 40 °C. Si se pasan de la cantidad de vueltas de duración, ya no rinden.

7. Se necesita saber en cualquier momento, cuántas vueltas le quedan a cada piloto con el neumático actual y si rinde mejor para la temperatura de la carrera. Cuando un piloto entra al pit stop cambia su neumático. 

### Sección 3
#### El campeonato
8. El campeonato tiene que poder registrar y dar de baja a los pilotos de esta temporada (en este modelo usamos solo estos 5). Al cierre de cada fecha, el campeonato registra que piloto llegó en 1ro y 2do puesto y quién hizo la mejor vuelta. Del campeonato se quiere saber quién es el líder, y los nombres de todos los pilotos que superan los 300 puntos.

9. El campeonato también debe poder indicar si hay algún piloto de una escudería dada, cuántas escuderías distintas están representadas, cuál es la escudería con más puntos acumulados entre sus pilotos.

10. Dado que cada piloto lleva un tipo de neumático en un momento dado, el campeonato debe poder indicar cuáles pilotos están usando un compuesto fuera de su rango ideal para una temperatura dada, y si todos los pilotos tienen al menos 5 vueltas disponibles con su neumático actual.

11. Por último, se quiere conocer el delta de puntos del campeonato, calculado como la diferencia entre el puntaje del líder y el del último clasificado, y saber si el campeonato es competitivo, lo cual ocurre cuando ese delta es menor a 100 puntos.

### Sección 4
#### Casos de prueba 
**no son acumulativos, se reinician los objetos en cada test**


12. Verstappen gana la carrera y hace vuelta rápida. Sus puntos pasan a 463. En segundo lugar llega Leclerc. 

13. Norris gana la carrera y en segundo lugar llega Piastri. Sus puntos pasan a 399 y los de Piastri suben a 295.

14. Sainz gana dos carreras consecutivas. Tras la primera tiene 266 puntos; tras la segunda, 301.

15. Ferrari acumula al inicio 597 puntos entre Leclerc y Sainz, su piloto mejor posicionado es Leclerc

16. Con una temperatura de 24 °C, Verstappen sale con blando y Norris con medio. El ingeniero registra 10 vueltas respectivamente. Solo el neumático de Verstappen es apto para esa temperatura. Verstappen entra a boxes y sale con duro: ahora tiene 45 vueltas y su neumático ya no es apto.

17. Con los cinco pilotos en el campeonato usando los puntos iniciales: el total repartido es 1700, el líder es Verstappen, el delta es 196 y el campeonato no es competitivo. Los pilotos con más de 300 puntos son Verstappen, Norris y Leclerc.
