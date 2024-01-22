import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: const EdgeInsets.all(5.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.licdn.com/dms/image/D5635AQGN3JXH0BcEOA/profile-framedphoto-shrink_100_100/0/1696717785080?e=1706562000&v=beta&t=9Gr0gWgNCijcPWz8iqbxdo772ZcF8ESDuylZ-HjVZuo'),
              radius: 30.0,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: const CircleAvatar(
              backgroundColor: Colors.brown,
              child: Text('DR'),
            ),
          )
        ],
      ),
      body: const Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://img.freepik.com/foto-gratis/pico-montana-nevada-majestuosidad-galaxia-estrellada-ia-generativa_188544-9650.jpg'),
          fadeInDuration: Duration(milliseconds: 300),
        ),
      ),
    );
  }
}
