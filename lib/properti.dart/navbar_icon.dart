class NavBarIcon {
  final String label, icon;

  const NavBarIcon({required this.label, required this.icon});

  static const List<NavBarIcon> navBarIcons = [
    NavBarIcon(
      label: 'Home',
      icon: 'icons/iconsHome.png',
    ),
    NavBarIcon(
      label: 'Shop',
      icon: 'icons/iconsShop.png',
    ),
    NavBarIcon(
      label: 'Star',
      icon: 'icons/iconsStar.png',
    ),
    NavBarIcon(
      label: 'Person',
      icon: 'icons/iconsPerson.png',
    ),
  ];
}
