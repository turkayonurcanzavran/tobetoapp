import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
      background: Color.fromARGB(255, 241, 234, 248),
      primary: Color.fromRGBO(156, 52, 252, 1),
      secondary: Color(0xFFCC6CF4),
      onPrimary: Color.fromARGB(255, 248, 248, 248),
      onSecondary: Color(0xFF00D29B)),
  textTheme: const TextTheme(
    displaySmall: TextStyle(
      fontFamily: 'Tinos',
      fontSize: 20,
      fontWeight: FontWeight.normal,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Tinos',
      fontSize: 27,
      fontWeight: FontWeight.w500,
    ),
    displayLarge: TextStyle(
      fontFamily: 'Tinos',
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
      background: Color.fromARGB(255, 204, 152, 255),
      primary: Color.fromARGB(255, 74, 0, 144),
      secondary: Color.fromARGB(255, 107, 1, 152),
      onPrimary: Color.fromARGB(255, 248, 248, 248),
      onSecondary: Color(0xFF00D29B)),
  textTheme: const TextTheme(
    displaySmall: TextStyle(
      fontFamily: 'Tinos',
      fontSize: 20,
      fontWeight: FontWeight.normal,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Tinos',
      fontSize: 27,
      fontWeight: FontWeight.w500,
    ),
    displayLarge: TextStyle(
      fontFamily: 'Tinos',
      fontSize: 32,
      fontWeight: FontWeight.bold,
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
   
                             
         
          
        
