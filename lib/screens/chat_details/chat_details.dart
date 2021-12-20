import 'package:flutter/material.dart';

class ChatDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Khalil Shaaban'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => index % 2 == 0 ? UserItem() : MyItem(),
                separatorBuilder: (context, index) => SizedBox(
                  height: 16,
                ),
                itemCount: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              child: Row(children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'type message .',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.send),
                )
              ]),
            )
          ],
        ));
  }
}

class UserItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(6),
              bottomStart: Radius.circular(20),
              bottomEnd: Radius.circular(6),
            ),
          ),
          child: Text(
            'hello from other side : ',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
      )
    ]);
  }
}

class MyItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(6),
              bottomStart: Radius.circular(6),
              bottomEnd: Radius.circular(20),
            ),
          ),
          child: Text(
            'hello from other side :',
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      ),
    ]);
  }
}
