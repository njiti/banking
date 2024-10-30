import 'package:banking/done.dart';
import 'package:flutter/material.dart';

class Send extends StatelessWidget {
  const Send({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xFFF65E30),
                    Color(0xFFF89A54),
                  ],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(0.7, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: SizedBox(
          width: 360,
          height: 60,
          child: FloatingActionButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Done()));
            },
            backgroundColor: Colors.brown,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: const Text(
              'Send Money',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFFF8893D),
                  Color(0xFFF8CFA4),
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(0.0, 0.4),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp)),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                      "Send To",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  title: const Text(
                    'Ashlynn Torff',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: const Text(
                    'Summit Trust Bank',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left: 150, top: 50),
              child: TextField(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                  fontSize: 40,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixText: 'Rp ',
                  prefixStyle: TextStyle(
                    fontSize: 40,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold
                  ),
                  hintText: '000.0000',
                  hintStyle: TextStyle(
                    fontSize: 40,
                    color: Colors.grey
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
