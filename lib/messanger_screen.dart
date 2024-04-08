import 'package:flutter/material.dart';

class MessangerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
        ),
        title: const Text(
          'Chats',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 245, 244, 244),
            ),
            child: const Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 245, 244, 244),
            ),
            child: const Icon(
              Icons.edit_calendar,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  fillColor: const Color.fromARGB(255, 220, 216, 216),
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 220, 216, 216),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(Icons.add),
                        ),
                        const SizedBox(height: 12),
                        Text('My Storysssssssssssssss'),
                      ], //Stack
                    ),
                    const SizedBox(width: 12),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            const Image(
                              image: NetworkImage(
                                  'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
                              width: 70,
                              height: 70,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ],
                        ),
                        Text('Mahmoud'),
                      ],
                    ),
                    const SizedBox(width: 12),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            const Image(
                              image: NetworkImage(
                                  'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
                              width: 70,
                              height: 70,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ],
                        ),
                        Text('Mahmoud'),
                      ],
                    ),
                    const SizedBox(width: 12),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            const Image(
                              image: NetworkImage(
                                  'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
                              width: 70,
                              height: 70,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ],
                        ),
                        Text('Mahmoud'),
                      ],
                    ),
                    const SizedBox(width: 12),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            const Image(
                              image: NetworkImage(
                                  'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
                              width: 70,
                              height: 70,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ],
                        ),
                        Text('Mahmoud'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Column(
                children: [
                  Row(
                    children: [
                      Image(
                        image: NetworkImage(
                            'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
                        width: 70,
                        height: 70,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mahmoud Elmaghraby',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text('What\'s man'),
                              SizedBox(width: 16),
                              Text('09:15'),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image(
                        image: NetworkImage(
                            'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
                        width: 70,
                        height: 70,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mahmoud Elmaghraby',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text('What\'s man'),
                              SizedBox(width: 16),
                              Text('09:15'),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image(
                        image: NetworkImage(
                            'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
                        width: 70,
                        height: 70,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mahmoud Elmaghraby',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text('What\'s man'),
                              SizedBox(width: 16),
                              Text('09:15'),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image(
                        image: NetworkImage(
                            'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
                        width: 70,
                        height: 70,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mahmoud Elmaghraby',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text('What\'s man'),
                              SizedBox(width: 16),
                              Text('09:15'),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image(
                        image: NetworkImage(
                            'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
                        width: 70,
                        height: 70,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mahmoud Elmaghraby',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text('What\'s man'),
                              SizedBox(width: 16),
                              Text('09:15'),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image(
                        image: NetworkImage(
                            'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
                        width: 70,
                        height: 70,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mahmoud Elmaghraby',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text('What\'s man'),
                              SizedBox(width: 16),
                              Text('09:15'),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image(
                        image: NetworkImage(
                            'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
                        width: 70,
                        height: 70,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mahmoud Elmaghraby',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text('What\'s man'),
                              SizedBox(width: 16),
                              Text('09:15'),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image(
                        image: NetworkImage(
                            'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
                        width: 70,
                        height: 70,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mahmoud Elmaghraby',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text('What\'s man'),
                              SizedBox(width: 16),
                              Text('09:15'),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
