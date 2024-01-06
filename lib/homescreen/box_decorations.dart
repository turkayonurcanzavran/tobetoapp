import 'package:flutter/material.dart';

class BoxDecorations extends StatelessWidget {
  const BoxDecorations({
    Key? key,
    required this.image1,
    required this.width,
    required this.height,
    required this.image2,
    required this.textList,
    required this.selectedIndex,
    required this.onItemTap,
  }) : super(key: key);

  final String image1;
  final double width;
  final double height;
  final String image2;
  final List<String> textList;
  final int? selectedIndex;
  final Function(int)? onItemTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              image1,
              width: MediaQuery.of(context).size.width,
            ),
            Image.asset(
              image2,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 20, right: 20),
                child: Row(
                  children: List.generate(
                    textList.length,
                    (index) => GestureDetector(
                      onTap: () {
                        onItemTap?.call(index);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          textList[index],
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                decoration: index == selectedIndex
                                    ? TextDecoration.underline
                                    : null,
                                fontSize: 20,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            if (selectedIndex != null)
              Container(
                width: 500,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                  color: Theme.of(context)
                      .colorScheme
                      .background, // Değiştirebilirsiniz
                ),
                child: Center(
                  child: Text(
                    'Bilgilendirme Containerı ${textList[selectedIndex!]}',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 189, 154, 154)),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
