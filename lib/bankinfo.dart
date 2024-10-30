import 'package:flutter/material.dart';

class Bankinfo extends StatelessWidget {
  const Bankinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: SizedBox(
            width: 200,
            height: 60,
            child: FloatingActionButton(
              onPressed: (){},
              backgroundColor: Colors.deepOrange,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              child: const Text(
                'Free Activation',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              width: 360,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                      colors: [
                        Color(0xFF9F412B),
                        Color(0xFFFB9D42),
                      ],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(0.6, 0.6),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp
                  ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  const Text(
                    'Cash loans up to',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    'Rp15.000.000',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Loan Simulations',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.expand_more,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 60),

                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 23),
                        child: Container(
                          width: 360,
                          height: 135,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),

                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 70),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '100% Installments',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16
                                  ),
                                ),
                                Text(
                                  'Fee',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Valid until 30 Sept 2024',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '20% Installments',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16
                                  ),
                                ),
                                Text(
                                  'Fee',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Valid until 30 Sept 2024',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 420),
            child: Text(
                'Mpinjam Terms',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 470),
            child: ListView.separated(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Stack(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                              Icons.bolt_rounded,
                              color: Colors.orangeAccent,
                          ),
                        )
                      ],
                    ),
                    title: const Text(
                        'Activation only take 5 minutes',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                    subtitle: const Text(
                        'Experience Monipay activation with lightning speed!',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) => const Divider(),
            ),
          )
        ],
      )
    );
  }
}
