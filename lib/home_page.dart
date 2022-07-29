import 'package:flutter/material.dart';
import 'package:flutterando/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: Image.network(
                    'https://media-exp1.licdn.com/dms/image/C4D03AQFVx7Dn9Br5dQ/profile-displayphoto-shrink_100_100/0/1582490086497?e=1664409600&v=beta&t=7H3eR97Dl94SzVGSkh8Zz2xU3jzK-_Rb3GkK1hpKv9M'),
                accountName: Text('Raphael Hespanhol'),
                accountEmail: Text('raphael.hespanhol@gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('Tela de inicio'),
              onTap: () {
                print('home');
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              subtitle: Text('Finalizar sessão'),
              onTap: () {
                print('saindo da aplicação');
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home page'),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Text('Contador: $counter'),
            Container(
              height: 10,
            ),
            CustomSwitch(),
            Container(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
              print('log show $counter vezes');
            });
          }),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
