import 'package:banking/bankinfo.dart';
import 'package:banking/transfers.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
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
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp
            )
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15, bottom: 3),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Center(
              child: Text(
                  'M',
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color(0xFFD25B2C),
                  borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0, top: 1.9),
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color(0xFFFDB258),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.radio_button_checked,
                          color: Color(0xFFD25B2C),
                        ),
                      ],
                    )
                  ),
                  const SizedBox(width: 10),
                  const Text(
                      '100K',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFFF8893D),
                Color(0xFFF5DDCC),
              ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.0, 0.6)
          )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50),
                    const Text(
                      'MoniPay',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 24,
                      ),
                    ),
                    const Text(
                      'Rp.1.433.200',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Bankinfo()));
                      },
                      child: Container(
                        height: 60,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                                colors: [
                                  Color(0xFF9C3F29),
                                  Color(0xFFF5DDCC),
                                ],
                                begin: FractionalOffset(01.0, 0.5),
                                end: FractionalOffset(0.0, 0.5)
                            )
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Text(
                                  'MPayLater',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text(
                                  'Rp15,000.000',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: SizedBox(
                    width: 500,
                    height: 500,
                    child: GridView.count(
                        crossAxisCount: 3,
                        childAspectRatio: 0.7,
                        padding: const EdgeInsets.all(4.0),
                        mainAxisSpacing: 0.0,
                        crossAxisSpacing: 0.0,
                        children: <Widget>[
                          Card(
                            color: Colors.white54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(height: 25),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE36A46),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: const Icon(
                                      Icons.home_outlined,
                                      color: Colors.white,
                                    ),),
                                  const Text(
                                      'Top up',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Card(
                            color: Colors.white54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(height: 25),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE36A46),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: const Icon(
                                      Icons.home_outlined,
                                      color: Colors.white,
                                    ),),
                                  const Text(
                                    'Payment',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Transfers()));
                            },
                            child: Card(
                              color: Colors.white54,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child: Column(
                                  children: [
                                    const SizedBox(height: 25),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFE36A46),
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                      child: const Icon(
                                        Icons.home_outlined,
                                        color: Colors.white,
                                      ),),
                                    const Text(
                                      'Transfer',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Card(
                            color: Colors.white54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(height: 25),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE36A46),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: const Icon(
                                      Icons.home_outlined,
                                      color: Colors.white,
                                    ),),
                                  const Text(
                                    'Phone Credit',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Card(
                            color: Colors.white54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(height: 25),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE36A46),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: const Icon(
                                      Icons.home_outlined,
                                      color: Colors.white,
                                    ),),
                                  const Text(
                                    'Deposit Withdrawal',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Card(
                            color: Colors.white54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(height: 25),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE36A46),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: const Icon(
                                      Icons.home_outlined,
                                      color: Colors.white,
                                    ),),
                                  const Text(
                                    'Purchase',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Card(
                            color: Colors.white54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(height: 25),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE36A46),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: const Icon(
                                      Icons.home_outlined,
                                      color: Colors.white,
                                    ),),
                                  const Text(
                                    'Investation',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Card(
                            color: Colors.white54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(height: 25),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE36A46),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: const Icon(
                                      Icons.home_outlined,
                                      color: Colors.white,
                                    ),),
                                  const Text(
                                    'Scan QR',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Card(
                            color: Colors.white54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(height: 25),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE36A46),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: const Icon(
                                      Icons.home_outlined,
                                      color: Colors.white,
                                    ),),
                                  const Text(
                                    'E-money',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Card(
                            color: Colors.white54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(height: 25),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE36A46),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: const Icon(
                                      Icons.home_outlined,
                                      color: Colors.white,
                                    ),),
                                  const Text(
                                    'Mortgage',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Card(
                            color: Colors.white54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(height: 25),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE36A46),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: const Icon(
                                      Icons.home_outlined,
                                      color: Colors.white,
                                    ),),
                                  const Text(
                                    'Electricity',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Card(
                            color: Colors.white54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  const SizedBox(height: 25),
                                  Container(
                                    width: 50,
                                    height: 50,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFE36A46),
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                      child: const Icon(
                                          Icons.home_outlined,
                                          color: Colors.white,
                                      ),),
                                  const Text(
                                    'Mutation',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white24,
        ),
        child: BottomAppBar(
          elevation: 20,
          color: Colors.white,
          child: GestureDetector(
            onTap: showMenu,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                child: Container(
                  width: 50,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  showMenu() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              color: Colors.grey,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 36,
                ),
                SizedBox(
                    height: (56 * 6).toDouble(),
                    child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                          color: Colors.white,
                        ),
                        child: Stack(
                          alignment: const Alignment(0, 0),
                          // overflow: Overflow.visible,
                          children: <Widget>[
                            Positioned(
                              child: ListView(
                                physics: const BouncingScrollPhysics(),
                                children: <Widget>[
                                  ListTile(
                                    title: const Text(
                                      "BurgerKong Gejayan",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    subtitle: const Text(
                                      "14 July 2024",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    trailing: const Text(
                                      '-Rp39.600',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    leading: Stack(
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.orangeAccent.withOpacity(0.2),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: const Icon(
                                            Icons.shopping_basket_outlined,
                                            color: Colors.deepOrange,
                                          ),
                                        ),
                                      ],
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: const Text(
                                      "Top up saldo",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    subtitle: const Text(
                                      "14 July 2024",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    trailing: const Text(
                                      '-Rp39.600',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    leading: Stack(
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.purple.withOpacity(0.2),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: const Icon(
                                            Icons.currency_exchange_outlined,
                                            color: Colors.purple,
                                          ),
                                        ),
                                      ],
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: const Text(
                                      "BurgerKong Gejayan Kidul",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    subtitle: const Text(
                                      "14 July 2024",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    trailing: const Text(
                                      '-Rp39.600',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    leading: Stack(
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.orangeAccent.withOpacity(0.2),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: const Icon(
                                            Icons.shopping_basket_outlined,
                                            color: Colors.deepOrange,
                                          ),
                                        ),
                                      ],
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: const Text(
                                      "BurgerKong Gejayan",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    subtitle: const Text(
                                      "14 July 2024",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    trailing: const Text(
                                      '-Rp39.600',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    leading: Stack(
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.orangeAccent.withOpacity(0.2),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: const Icon(
                                            Icons.shopping_basket_outlined,
                                            color: Colors.deepOrange,
                                          ),
                                        ),
                                      ],
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: const Text(
                                      "BurgerKong Gejayan",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    subtitle: const Text(
                                      "14 July 2024",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    trailing: const Text(
                                      '-Rp39.600',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    leading: Stack(
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.orangeAccent.withOpacity(0.2),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: const Icon(
                                            Icons.shopping_basket_outlined,
                                            color: Colors.deepOrange,
                                          ),
                                        ),
                                      ],
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    title: const Text(
                                      "BurgerKong Gejayan",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    subtitle: const Text(
                                      "14 July 2024",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    trailing: const Text(
                                      '-Rp39.600',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    leading: Stack(
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.orangeAccent.withOpacity(0.2),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: const Icon(
                                            Icons.shopping_basket_outlined,
                                            color: Colors.deepOrange,
                                          ),
                                        ),
                                      ],
                                    ),
                                    onTap: () {},
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 130),
                                    child: Container(
                                      width: 100,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.brown,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "See All",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_downward,
                                            color: Colors.orangeAccent,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Statistics',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 21,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ))),
                Container(
                  height: 56,
                  color: Colors.white,
                )
              ],
            ),
          );
        });
  }
}
