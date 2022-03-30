import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'app_bottomBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Feeds",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add, color: Colors.black),
              tooltip: 'add',
              onPressed: () {},
            ), //IconButton
            IconButton(
              icon: const Icon(Icons.mail_outline, color: Colors.black),
              tooltip: 'Mail',
              onPressed: () {},
            ),
          ],
          leading: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/tony.png")),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Column(
          children: [
            Expanded(
                flex: 5,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: rowChips(),
                )),
            Expanded(
              flex: 40,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView.custom(
                  gridDelegate: SliverWovenGridDelegate.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    tileBottomSpace: 5,
                    pattern: [
                      const WovenGridTile(
                        4 / 7,
                        crossAxisRatio: 1,
                        alignment: AlignmentDirectional.centerStart,
                      ),
                      const WovenGridTile(
                        5 / 7,
                        crossAxisRatio: 1,
                        alignment: AlignmentDirectional.centerEnd,
                      ),
                    ],
                  ),
                  childrenDelegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return _buildTiles(index);
                    },
                  ),
                ),
              ),
            ),
            BottomNavBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildTiles(int index) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 7,
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                'https://source.unsplash.com/random?sig=$index',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'missa anime',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: ' flies kiss to my ex-bf #dare'),
                          ],
                        ),
                      )),
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                        backgroundImage: NetworkImage(
                      'https://source.unsplash.com/random?sig=$index',
                    )),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10, left: 10),
            child: Text(
              '23 Min ago',
              style: TextStyle(
                color: Colors.red,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget chipforRow(String label) {
    return InkWell(
      onTap: () {
        setState(() {
          // isSelected = !isSelected;
        });
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        child: Chip(
          side: const BorderSide(color: Colors.red, width: 1),
          backgroundColor: Colors.white,
          label: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(label),
          ),
          elevation: 6.0,
          shadowColor: Colors.grey[50],
        ),
      ),
    );
  }

  rowChips() {
    return Row(
      children: [
        chipforRow('#Trending'),
        chipforRow('#Activity'),
        chipforRow('#Food'),
        chipforRow('#Hotel'),
        chipforRow('#Travell'),
        chipforRow('#Trip'),
        chipforRow('#Pets'),
        chipforRow('#Work'),
      ],
    );
  }
}
