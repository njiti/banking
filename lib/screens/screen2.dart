import 'package:flutter/material.dart';
import 'package:bottom_drawer/bottom_drawer.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


// class Screen2 extends StatefulWidget {
//   const Screen2({super.key});
//
//   @override
//   State<Screen2> createState() => _Screen2State();
// }
//
// class _Screen2State extends State<Screen2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text('Pressed $_button'),
//               Padding(
//                   padding: const EdgeInsets.only(top: 30.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       IconButton(
//                           icon: const Icon(
//                             Icons.arrow_upward,
//                             color: Colors.black,
//                           ),
//                           onPressed: (){
//                             _controller.open();
//                             setState(() {
//                               _button = 'Open Drawer';
//                             });
//                           },
//                       ),
//                       const Divider(
//                         height: 10.0,
//                       ),
//                       IconButton(
//                         icon: const Icon(
//                           Icons.arrow_downward,
//                           color: Colors.black,
//                         ),
//                         onPressed: () {
//                           _controller.close();
//                           setState(() {
//                             _button = 'Close Drawer';
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//               ),
//             ],
//           ),
//           _buildBottomDrawer(context),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildBottomDrawer(BuildContext context) {
//     return BottomDrawer(
//         header: _buildBottomDrawerHead(context),
//         body: _buildBottomDrawer(context),
//         headerHeight: _headerHeight,
//         drawerHeight: _bodyHeight,
//         color: Colors.lightBlue,
//         controller: _controller,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.15),
//             blurRadius: 60,
//             spreadRadius: 5,
//             offset: const Offset(2, -6),
//           ),
//         ],
//     );
//   }
//
//   Widget _buildBottomDrawerHead(BuildContext context) {
//     return Container(
//       height: _headerHeight,
//       child: Column(
//         children: [
//           Padding(
//               padding: const EdgeInsets.only(
//                 left: 10.0,
//                 right: 10.0,
//                 top: 10.0,
//               ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: _buildButtons('', 1, 2),
//             ),
//           ),
//           const Spacer(),
//           const Divider(
//             height: 1.0,
//             color: Colors.grey,
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget _buildBottomDrawerBody(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: _bodyHeight,
//       child: SingleChildScrollView(
//         child: Column(
//           children: _buildButtons('Body', 1, 25),
//         ),
//       ),
//     );
//   }
//
//   List<Widget> _buildButtons(String prefix, int start, int end){
//     List<Widget> buttons = [];
//     for (int i = start; i <= end; i++)
//       buttons.add(TextButton(
//           child: Text(
//             '$prefix Button $i',
//             style: TextStyle(
//               fontSize: 15.0,
//               color: Colors.black,
//             ),
//           ),
//         onPressed: (){
//             setState(() {
//               _button = '$prefix Button $i';
//             });
//         },
//       ));
//     return buttons;
//   }
//
//   String _button = 'None';
//
//   final double _headerHeight = 60.0;
//
//   final double _bodyHeight = 180.0;
//
//   final BottomDrawerController _controller = BottomDrawerController();
// }
