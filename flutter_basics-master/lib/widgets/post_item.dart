import 'package:flutter/material.dart';
import 'package:flutter_workshop/models/feed.dart';

class PostItem extends StatefulWidget {
  final Feed feed;

  PostItem({this.feed});

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _buildTopPart(),
          _buildImage(context),
          _buildReactions(),
          Text(''),
          Text(''),
        ],
      ),
    );
  }

  Widget _buildTopPart() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage(widget.feed.profileImage),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.feed.uploadedBy,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    widget.feed.subTitle,
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return Image.network(
      widget.feed.postImage,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    );
  }

  Widget _buildReactions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 32.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Icon(
              Icons.insert_comment,
              color: Colors.white,
              size: 32.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Icon(
              Icons.send,
              color: Colors.white,
              size: 32.0,
            ),
          ],
        ),
        Icon(
          Icons.bookmark_border,
          color: Colors.white,
          size: 32.0,
        ),
      ],
    );
  }
}
