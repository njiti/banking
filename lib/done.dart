import 'package:flutter/material.dart';

class Done extends StatelessWidget {
  const Done({super.key});

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
            elevation: 20,
            backgroundColor: Colors.white,
            foregroundColor: Colors.deepOrange,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: const Text(
              'Done',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.deepOrange,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
                "Rp20.000",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.black54
              ),
            ),

            const Text(
                "Transfer Succeeded",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black45,
                  fontSize: 15,
                ),
            ),

            const SizedBox(height: 50),

            Container(
              width: 250,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.deepOrange.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black,
                  ),
                ),
                title: const Text("Bank Sip"),
                subtitle: const Text("Juliana Marsya"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Amount",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Rp 20.000",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black38,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Transaction fee",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "-Rp 2.000",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black38,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Amount",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.arrow_downward)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
