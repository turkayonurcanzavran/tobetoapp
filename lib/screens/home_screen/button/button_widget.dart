import 'package:flutter/material.dart';
import 'package:tobeto_app/screens/home_screen/button/Styled_Button.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  int currIndex = 0;

  // Farklı içerikte bilgi container'larını saklayan bir liste
  List<Widget> infoContainers = [
    Container(
      width: double.infinity,
      height: 200,
      color: Colors.white,
      child: Center(
        child: Text("Başvurularım Detay"),
      ),
    ),
    Container(
      width: double.infinity,
      height: 200,
      color: Colors.blue,
      child: Center(
        child: Text("Eğitimlerim Detay"),
      ),
    ),
    Container(
      width: double.infinity,
      height: 200,
      color: Colors.green,
      child: Center(
        child: Text("Duyuru ve Haberlerim Detay"),
      ),
    ),
    Container(
      width: double.infinity,
      height: 200,
      color: Colors.orange,
      child: Center(
        child: Text("Anketlerim Detay"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyledButton(
                  onPressed: () {
                    setState(() {
                      currIndex = 0;
                    });
                  },
                  isButtonPressed: currIndex == 0,
                  buttonText: "Başvurularım",
                ),
                const SizedBox(width: 20),
                StyledButton(
                  onPressed: () {
                    setState(() {
                      currIndex = 1;
                    });
                  },
                  isButtonPressed: currIndex == 1,
                  buttonText: "Eğitimlerim",
                ),
                const SizedBox(width: 20),
                StyledButton(
                  onPressed: () {
                    setState(() {
                      currIndex = 2;
                    });
                  },
                  isButtonPressed: currIndex == 2,
                  buttonText: "Duyuru ve Haberlerim",
                ),
                const SizedBox(width: 20),
                StyledButton(
                  onPressed: () {
                    setState(() {
                      currIndex = 3;
                    });
                  },
                  isButtonPressed: currIndex == 3,
                  buttonText: "Anketlerim",
                ),
              ],
            ),
          ),
        ),
        // Farklı içerikteki bilgi container'ını göster
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: infoContainers[currIndex],
        ),
      ],
    );
  }
}
