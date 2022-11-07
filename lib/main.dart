import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: CircleAvatar(
                      child: Image.network(
                        'https://picsum.photos/40/40',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  title: Text('John Doe'),
                  subtitle: Text('Ceo at Apple Inc'),
                  trailing: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.settings),
                      label: Text('Settings')),
                ),
              ),
              Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: CircleAvatar(
                      child: Image.network(
                        'https://picsum.photos/40/40',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  title: Text('The quick, brown fox jumps over'),
                  subtitle: Text(
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor'),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Lorem ipsum dolor sit amet, consetetur'),
                          Row(
                            children: [
                              Text(
                                'On',
                                style: TextStyle(color: Colors.blue),
                              ),
                              Switch.adaptive(value: true, onChanged: (v) {}),
                            ],
                          )
                        ],
                      ),
                      Divider(
                        endIndent: 10,
                        indent: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Lorem ipsum dolor sit amet, consetetur'),
                          Row(
                            children: [
                              Text(
                                'Off',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Switch.adaptive(value: false, onChanged: (v) {}),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
