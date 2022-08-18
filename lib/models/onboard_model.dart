class OnBoard {
  final String image, text1, text2;
  OnBoard({required this.text1, required this.text2, required this.image});
}

List<OnBoard> onboards = [
  OnBoard(
    image: 'assets/mountain/kerinci.jpeg',
    text1: 'Start your',
    text2: 'Journey in Indonesia.',
  ),
  OnBoard(
    image: 'assets/beach/pink-beach.jpg',
    text1: 'Enjoy your',
    text2: 'Trip in Indonesia.',
  ),
  OnBoard(
    image: 'assets/hotels/gili-meno-escape.jpg',
    text1: 'Let\'s make',
    text2: 'Your Dream Vacation.',
  ),
];
