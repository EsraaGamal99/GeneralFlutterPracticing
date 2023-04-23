import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerByListView extends StatelessWidget {
  const MessengerByListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        elevation: 0.0,

        leading: IconButton(icon: const CircleAvatar(
          radius: 15.0,
          backgroundColor: Colors.grey,
          child: Icon(
            Icons.menu,
            color: Colors.black,
            size: 20.0,
          ),
        ),
            onPressed: (){}),

        title: const Text(
          'Chats',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.camera_alt,
                size: 20.0,
                color: Colors.black,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 15.0,
              child: Icon(
                Icons.edit,
                size: 20.0,
                color: Colors.black,
              ),
            ),
          ),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Search
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey[300],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                      ),
                      SizedBox(width: 15.0,),
                      Text('Search'),

                    ],

                  ),
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

              //Stories
              Container(
                height: 100.0,
                child: ListView.separated(
                  itemBuilder: (context, index)
                {
                  return buildStoryItem();
                },
                  separatorBuilder: (context , index)
                  {
                   return const SizedBox(width: 15,);
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                ),

              ),

              const SizedBox(
                height: 20.0,
              ),

              //Chats
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,

                  itemBuilder: (context, index)
                  {
                    return buildChatItem();
                  },
                  separatorBuilder: (context, index) => const SizedBox( height: 15.0,),
                  itemCount: 20,
                scrollDirection: Axis.vertical,
              )

            ],
          ),
        ),
      ),
    );
  }

  Widget buildStoryItem()=>Container(
    width: 60.0,
    child: Column(
      children: const [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(
            'https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-1/330366215_3457785881118057_6734507133505666812_n.jpg?stp=dst-jpg_p320x320&_nc_cat=106&ccb=1-7&_nc_sid=7206a8&_nc_ohc=sCiVb4b1_O8AX_on6WQ&_nc_ht=scontent.fcai21-4.fna&oh=00_AfBa0zL8Vh8oMxDazxiFqW73vHYnehUtcqpcmwT8nOVpCw&oe=64093D18',
          ),
        ),
        SizedBox(height: 5.0,),
        Text(
          'Israa Jamal Israa JamalIsraa Jamal',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
  Widget buildChatItem(){
    return Row(
      children:  [
        const CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(
            'https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-1/330366215_3457785881118057_6734507133505666812_n.jpg?stp=dst-jpg_p320x320&_nc_cat=106&ccb=1-7&_nc_sid=7206a8&_nc_ohc=sCiVb4b1_O8AX_on6WQ&_nc_ht=scontent.fcai21-4.fna&oh=00_AfBa0zL8Vh8oMxDazxiFqW73vHYnehUtcqpcmwT8nOVpCw&oe=64093D18',
          ),
        ),
        const  SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:   [
              const   Text(
                'Israa Jamal',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(

                children: const [
                  Expanded(
                    child: Text(
                      'HELLO I AM ESRAA GAMAL ',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  //
                  Padding(
                    padding: EdgeInsets.all( 5.0,),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 2.0,
                    ),
                  ),
                  Text('02:00 PM'),

                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
