import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16,top: 26,bottom: 24),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 218, 155, 192),
        borderRadius: BorderRadius.circular(16)
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
ListTile(
  title: const Text("FLutter language",style: TextStyle(color: Colors.black,fontSize: 28),),
  subtitle:  Padding(
    padding: const EdgeInsets.only(top: 16,bottom: 24),
    child: Text("Hi i am Mohamed Ali",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 20),),
  ),
  trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.delete,color: Colors.black,size: 33,)),
  
),
 Padding(
   padding: const EdgeInsets.only(right: 24),
   child: Text("May21,2024",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
 ),
        ],
      ),
    );
  }
}