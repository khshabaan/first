import 'package:flutter/material.dart';
import '../chat_details/chat_details.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chats'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsetsDirectional.only(start: 16),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'search',
                        suffixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  height: 46,
                  width: 46,
                  child: Icon(Icons.person),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.separated(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) => ChatItem(),
            itemCount: 30,
            separatorBuilder: (context, index) => SizedBox(
              height: 16,
            ),
          )),
          // SizedBox(
          //   height: 20,
          // ),
        ],
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatDetailsScreen(),
            ),
          );
        },
        child: Material(
          elevation: 4,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(children: [
              Stack(alignment: Alignment.bottomRight, children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(6),
                        bottomStart: Radius.circular(6),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('https://www.byrdie.com/thmb/j922lTh-Vn8HnmQsxSKGA0ztxw0=/756x756/filters:no_upscale():max_bytes(150000):strip_icc()/Rob-cc2d68e18be04acf90a74623c1087fd6.jpg'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(end: 4),
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.green,
                  ),
                )
              ]),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'khalil shabban',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'this is the subtext for now',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  children: [
                    Text('Th', style: Theme.of(context).textTheme.caption),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      Icons.check,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
