import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'monthly_page.dart';
import 'daily_page.dart';
import 'new.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Music',
      theme: ThemeData(
        textTheme: GoogleFonts.andikaTextTheme(),
        // 여기에 추가적인 테마 설정을 할 수 있습니다.
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Getting Musics with PY AP',),
        // ),
        body:  WebScrapingPage(),
      ),
    );
  }
}

class WebScrapingPage extends StatefulWidget {
  const WebScrapingPage({Key? key}) : super(key: key);

  @override
  State<WebScrapingPage> createState() => _WebScrapingPageState();
}

class _WebScrapingPageState extends State<WebScrapingPage> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  bool isLoading = false;
  List<Map<String, dynamic>> data = [];

  Future<void> getData(String keyword) async {
    setState(() {
      isLoading = true;
    });

    final response = await http.get(Uri.parse('http://172.30.0.92:5000/api/search_music?keyword=$keyword'));

    if (response.statusCode == 200) {
      setState(() {
        data = List<Map<String, dynamic>>.from(json.decode(response.body));
      });
    } else {
      setState(() {
        data = [
          {'error': 'Failed to fetch data'}
        ];
      });
    }

    setState(() {
      isLoading = false;
    });
  }

  Future<void> pushData(int index, String date) async {
    final response = await http.post(Uri.parse('http://172.30.0.92:5000/api/save_data?index=$index&date=$date'));
    if (response.statusCode == 200) {
      // 성공 처리
      print('Data pushed successfully');
    } else {
      // 실패 처리
      print('Failed to push data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              labelText: 'Enter Keyword',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              getData(_controller.text);
            },
            child: const Text('Find Song'),
          ),
          const SizedBox(height: 20),

          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller1,
                  decoration: const InputDecoration(
                    labelText: 'Enter Index',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: _controller2,
                  decoration: const InputDecoration(
                    labelText: 'Enter Date (2023-04-12)',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              final indexInput = int.tryParse(_controller1.text);
              if (indexInput != null) {
                final dateInput = _controller2.text;
                pushData(indexInput, dateInput);
              } else {
                print('Invalid index input');
              }
            },
            child: const Text('Push to Server'),
          ),
          const SizedBox(height: 20),

          isLoading
              ? const Center(child: CircularProgressIndicator())
              : data.isEmpty
              ? const Text('No data found')
              : Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final info = data[index];
                return info.isNotEmpty
                    ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Result $index:', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    info.containsKey('error')
                        ? Text('Error: ${info['error']}', style: const TextStyle(color: Colors.red))
                        : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(info['img_src'], width: 100, height: 70),
                        const SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Title: ${info['title']}'),
                            Text('Artists: ${info['artists'].join(', ')}'),
                            // Text('Video ID: ${info['videoId']}'),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
                    : const Text('No data found');
              },
            ),
          ),
        ],
      ),
    );
  }
}
