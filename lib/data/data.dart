enum BirdsName { merpati, pipit, perkutut, cenderawasih, beo, elang }

class Birds {
  final String imgAsset;
  final BirdsName name;

  Birds({
    required this.name,
    required this.imgAsset,
  });
}

final allBirds = [
  Birds(
    name: BirdsName.merpati,
    imgAsset: 'assets/images/merpati.jpg',
  ),
  Birds(
    name: BirdsName.merpati,
    imgAsset: 'assets/images/pipit.jpg',
  ),
  Birds(
    name: BirdsName.merpati,
    imgAsset: 'assets/images/perkutut.jpg',
  ),
  Birds(
    name: BirdsName.merpati,
    imgAsset: 'assets/images/cenderawasih.jpg',
  ),
];
