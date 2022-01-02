// enum BirdsName { merpati, pipit, perkutut, cenderawasih, beo, elang }

class Birds {
  final String imgAsset;
  final String name;

  Birds({
    required this.name,
    required this.imgAsset,
  });
}

final allBirds = [
  Birds(
    name: "Merpati",
    imgAsset: 'assets/images/merpati.jpg',
  ),
  Birds(
    name: "Pipit",
    imgAsset: 'assets/images/pipit.jpg',
  ),
  Birds(
    name: "Perkutut",
    imgAsset: 'assets/images/perkutut.jpg',
  ),
  Birds(
    name: "Cendrawasih",
    imgAsset: 'assets/images/cenderawasih.jpg',
  ),
];

class BirdsWithText {
  final String name;
  Birds? bird;

  BirdsWithText({required this.name, this.bird});
}
