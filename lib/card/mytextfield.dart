import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  const Mytextfield(
      {Key? key,
      required this.controller, // 1-  TextEditingController türünde bir değişkeni temsil ediyor. TextEditingController, TextField  metin girişini kontrol etmek için kullanılır. login_screen sayfasında fonksiyon oluşturdum
      required this.hintText, //   2- kutucukta görüntülenecek olan yer tutucu (placeholder) metni temsil ediyor. Eğer metin alanı boşsa veya kullanıcı bir şey girmedikçe bu metin, kullanıcıya bu alanın ne için olduğunu belirtir.
      required this.obscureText}) //   3- final bool obscureText;: Bu, metnin görüntülenme şeklini belirler. Eğer true olarak ayarlanmışsa, metin gizli modda gösterilir, yani genellikle parola alanları için kullanılır. Eğer false olarak ayarlanmışsa, metin açık bir şekilde gösterilir.
      : super(key: key);
  final controller;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller, //1
        obscureText: obscureText, //3
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(89, 154, 153, 153)),
              borderRadius: BorderRadius.all(Radius.circular(
                  10))), //köşelere ovallik vermek için kullandım.
          focusedBorder: OutlineInputBorder(
            //focusedborder kullanıcı deger girdiğini anlaması için
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.background),
            borderRadius: const BorderRadius.all(
                Radius.circular(10)), //kutuya ovallik eklemek için
          ),
          fillColor:
              Theme.of(context).colorScheme.background, //kutunun iç rengi
          filled: true,
          hintText: hintText, //2
          hintStyle: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(color: Colors.grey[500]),
          //??? işaretini displaySmall değerinin null olup olmadığını kontrol eder.
          //Eğer displaySmall null ise, copyWith işlemi gerçekleştirilmez ve null döner. nullable kontrolu için ekledim.

          //text style oluşturdum.
        ),
      ),
    );
  }
}
