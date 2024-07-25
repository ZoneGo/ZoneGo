import 'package:flutter/material.dart';
import 'package:zonego/main.dart';

class MeuAplicativo extends StatefulWidget {
  const MeuAplicativo({super.key});

  @override
  State<MeuAplicativo> createState() => _PaginaInicial();
}

class _PaginaInicial extends State<MeuAplicativo> {
  int currentPageIndex = 0;

  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Text.rich(TextSpan(
          text: 'NOME DO APP',
        )),
        //backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person),
            label: '',
          ),
          SizedBox(width: 35),
          NavigationDestination(
            selectedIcon: Icon(Icons.search),
            icon: Icon(Icons.search),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.list),
            icon: Icon(Icons.list),
            label: '',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Home page 0' + ' - ' + currentPageIndex.toString(),
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Home page 1' + ' - ' + currentPageIndex.toString(),
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Home page 2' + ' - ' + currentPageIndex.toString(),
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Home page 3' + ' - ' + currentPageIndex.toString(),
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),
        /* const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 1'),
                  subtitle: Text('This is a notification'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 2'),
                  subtitle: Text('This is a notification'),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 3'),
                  subtitle: Text('This is a notification'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 4'),
                  subtitle: Text('This is a notification'),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 5'),
                  subtitle: Text('This is a notification'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 6'),
                  subtitle: Text('This is a notification'),
                ),
              ),
            ],
          ),
        ), */
      ][currentPageIndex],
      extendBody: true,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
