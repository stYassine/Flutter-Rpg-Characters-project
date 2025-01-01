enum Vocation {
  raider(
    title: "Terminal Raider",
    description: "Adept in terminal commands to trigger traps.",
    weapon: "Terminal",
    ability: "Shellshock",
    image: "31343C.png",
  ),
  junkie(
    title: "Code Junkie",
    description: "Uses code to infiltrate",
    weapon: "React 99",
    ability: "Higher Order Overdrive",
    image: "31343C.png",
  ),
  ninja(
    title: "UX Raider",
    description: "Uses quick & stealthy visual attacks.",
    weapon: "Infused Stylus",
    ability: "Triple Swipe",
    image: "31343C.png",
  ),
  wizard(
    title: "Algo Wizard",
    description: "Carries a staff to unleash algorithm magic.",
    weapon: "Crystal Staff",
    ability: "Algorythmic Daze",
    image: "31343C.png",
  );

  const Vocation({
    required this.title,
    required this.description,
    required this.image,
    required this.weapon,
    required this.ability,
  });

  final String title;
  final String description;
  final String image;
  final String weapon;
  final String ability;
}
