part of "router.dart";

class _NavigationMenu extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const _NavigationMenu({
    required this.navigationShell,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: navigationShell.goBranch,
        destinations: [
          NavigationDestination(
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedHome03,
              color: Theme.of(context).primaryColor,
            ),
            label: "Home",
          ),
          NavigationDestination(
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedFiles01,
              color: Theme.of(context).primaryColor,
            ),
            label: "Posts",
          ),
          NavigationDestination(
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedAlbum02,
              color: Theme.of(context).primaryColor,
            ),
            label: "Albums",
          ),
        ],
      ),
    );
  }
}
