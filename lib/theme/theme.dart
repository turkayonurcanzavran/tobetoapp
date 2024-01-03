import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
      background: Color.fromARGB(255, 255, 255, 255),
      primary: Color(0xFF9C34FC),
      secondary: Color(0xFFCC6CF4),
      onPrimary: Color.fromARGB(255, 160, 160, 160)),
  textTheme: const TextTheme(
    displaySmall: TextStyle(
      fontFamily: 'Tinos',
      fontSize: 20,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Tinos',
      fontSize: 27,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    displayLarge: TextStyle(
      fontFamily: 'Tinos',
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
      background: Color.fromARGB(255, 235, 215, 253),
      primary: Color.fromARGB(255, 56, 19, 91),
      secondary: Color.fromARGB(255, 107, 1, 152),
      onPrimary: Color.fromARGB(255, 103, 100, 100)),
  textTheme: const TextTheme(
    displaySmall: TextStyle(
      fontFamily: 'Tinos',
      fontSize: 20,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Tinos',
      fontSize: 27,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    displayLarge: TextStyle(
      fontFamily: 'Tinos',
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
);


//Color primaryColor = Theme.of(context).colorScheme.primary; // Tema içindeki birincil renk
//Color secondaryColor = Theme.of(context).colorScheme.secondary; // Tema içindeki ikincil renk
//Color backgroundColor = Theme.of(context).colorScheme.background; // Tema içindeki arkaplan rengi

//text için theme kullanımı =>

 //'Küçük boyutlu metin'   --   style: Theme.of(context).textTheme.displaySmall,    
              
 //'Orta boyutlu metin', --   style: Theme.of(context).textTheme.displayMedium,  
   
 // 'Büyük boyutlu metin',  -- style: Theme.of(context).textTheme.displayLarge,

 // ----COPYWİTH----
 //  => Eğer bir temadaki metin stillerini değiştirip, aynı yapıya sahip yeni bir tema oluşturmak istiyorsan,
 // copyWith yöntemini kullanabilirsin. => style: Theme.of(context).textTheme.displayLarge. copyWith(
     // Örnek olarak metin boyutunu değiştir --- fontSize: 20, 
     // Örnek olarak metin rengini değiştir  ---  color: Colors.red,  ),
   
                             
         
          
        
