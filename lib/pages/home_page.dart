import 'package:flutter/material.dart';
import 'better_player_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? m3u8Link;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              onChanged: (text) {
                setState(() {
                  m3u8Link = text;
                });
              },
              decoration:
                  const InputDecoration(hintText: 'Please paste m3u8 url'),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                if (m3u8Link != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BetterPlayerPage(
                              m3u8Link: m3u8Link,
                            )),
                  );
                }
              },
              child: const Text('better_player'),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
