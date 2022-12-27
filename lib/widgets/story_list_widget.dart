import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryListWidget extends StatefulWidget {
  const StoryListWidget({Key? key}) : super(key: key);

  @override
  State<StoryListWidget> createState() => _StoryListWidgetState();
}

class _StoryListWidgetState extends State<StoryListWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.fromLTRB(10, 5, 0, 5), child: Column(
              children: [
                CircleAvatar(
                  radius: 37,
                  backgroundColor: Colors.pinkAccent,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(78),
                        child: Image.asset("assets/images/gradient.jpg", fit: BoxFit.cover, width: 78, height: 78,),
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(66),
                          child: Image.asset("assets/images/stark.jpg", width: 66, height: 66, fit: BoxFit.cover,),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5), child: Text("scar.jo", style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 12),),)
              ],
            ),),
            Padding(padding: const EdgeInsets.fromLTRB(10, 5, 0, 5), child: Column(
              children: [
                CircleAvatar(
                  radius: 37,
                  backgroundColor: Colors.pinkAccent,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(78),
                        child: Image.asset("assets/images/gradient.jpg", fit: BoxFit.cover, width: 78, height: 78,),
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(66),
                          child: Image.asset("assets/images/stark.jpg", width: 66, height: 66, fit: BoxFit.cover,),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5), child: Text("scar.jo", style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 12),),)
              ],
            ),),
            Padding(padding: const EdgeInsets.fromLTRB(10, 5, 0, 5), child: Column(
              children: [
                CircleAvatar(
                  radius: 37,
                  backgroundColor: Colors.pinkAccent,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(78),
                        child: Image.asset("assets/images/gradient.jpg", fit: BoxFit.cover, width: 78, height: 78,),
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(66),
                          child: Image.asset("assets/images/stark.jpg", width: 66, height: 66, fit: BoxFit.cover,),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5), child: Text("scar.jo", style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 12),),)
              ],
            ),),
            Padding(padding: const EdgeInsets.fromLTRB(10, 5, 0, 5), child: Column(
              children: [
                CircleAvatar(
                  radius: 37,
                  backgroundColor: Colors.pinkAccent,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(78),
                        child: Image.asset("assets/images/gradient.jpg", fit: BoxFit.cover, width: 78, height: 78,),
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(66),
                          child: Image.asset("assets/images/stark.jpg", width: 66, height: 66, fit: BoxFit.cover,),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5), child: Text("scar.jo", style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 12),),)
              ],
            ),),
            Padding(padding: const EdgeInsets.fromLTRB(10, 5, 0, 5), child: Column(
              children: [
                CircleAvatar(
                  radius: 37,
                  backgroundColor: Colors.pinkAccent,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(78),
                        child: Image.asset("assets/images/gradient.jpg", fit: BoxFit.cover, width: 78, height: 78,),
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(66),
                          child: Image.asset("assets/images/stark.jpg", width: 66, height: 66, fit: BoxFit.cover,),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5), child: Text("scar.jo", style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 12),),)
              ],
            ),),
            Padding(padding: const EdgeInsets.fromLTRB(10, 5, 0, 5), child: Column(
              children: [
                CircleAvatar(
                  radius: 37,
                  backgroundColor: Colors.pinkAccent,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(78),
                        child: Image.asset("assets/images/gradient.jpg", fit: BoxFit.cover, width: 78, height: 78,),
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(66),
                          child: Image.asset("assets/images/stark.jpg", width: 66, height: 66, fit: BoxFit.cover,),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5), child: Text("scar.jo", style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 12),),)
              ],
            ),),
          ],
        ),
      ),
    );
  }
}
