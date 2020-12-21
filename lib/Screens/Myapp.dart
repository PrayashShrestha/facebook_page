import 'package:flutter/material.dart';
import 'package:facebook_page/Models/facebookcardmodel.dart';

class MyFacebookApp extends StatefulWidget {
  @override
  _MyFacebookAppState createState() => _MyFacebookAppState();
}

class _MyFacebookAppState extends State<MyFacebookApp> {
  double height, width;
  int count = 0, countcomment = 0, countshares = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: _appBar(),
      body: _myList(),
      backgroundColor: Colors.white70,
    );
  }

  Widget _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "facebook",
        style: TextStyle(
          color: Colors.blue[600],
          fontSize: 26,
          height: 2.3,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: 8),
            child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey[200],
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.blue,
                    size: 28,
                  ),
                ))),
        SizedBox(
          width: 5,
        ),
        Padding(
            padding: EdgeInsets.only(top: 8),
            child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey[200],
                child: IconButton(
                  icon: Icon(
                    Icons.messenger,
                    color: Colors.blue,
                    size: 25,
                  ),
                ))),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }

  Widget _myList() {
    FacebookCardModel model1 = FacebookCardModel(
        fbname: 'Prayash Shrestha',
        postdetails: "#mood",
        cmnts: 100,
        date: 'Aug 26',
        shares: 20,
        postStatus: "updated their cover photo",
        reacts: 150,
        userImgLink:
            "https://www.freepnglogos.com/uploads/bob-marley-png/bob-marley-png-image-purepng-transparent-png-24.png",
        postImgLink:
            "https://lh3.googleusercontent.com/proxy/yqEi1vB9Z9jZrrf_wDanNHPytpUixWwRS_oylFJFcaIKlGvOaGCcpg7qitj2Vq_-kIpiBd1tI5kHP1rBLdG0Z2MOOV6yCrCS0y6Q6Um3o9t_R8zfdhapsPtUcp6Fa1jzhMnvn0h5ANvVWcabUmzQdhhekFeeZu4K1NywkWmc6b8DSAA");
    FacebookCardModel model2 = FacebookCardModel(
        fbname: 'Ujjwol Shrestha',
        postdetails: "#Beauty Nepal Scenic Photography... :)",
        cmnts: 1000,
        shares: 250,
        date: 'Jan 11',
        reacts: 500,
        postStatus: "is feeling happy",
        userImgLink:
            "https://png.pngtree.com/png-clipart/20190516/original/pngtree-camera-digital-camera-technology-electronic-png-image_3836577.jpg",
        postImgLink:
            "https://www.greatpanoramatreks.com/wp-content/uploads/2018/09/Pokhara-tour.png");
    FacebookCardModel model3 = FacebookCardModel(
        fbname: 'GadgetsNepal',
        cmnts: 2000,
        shares: 15,
        postdetails: "Connect with us for amazing products... \n #LatestTrends",
        date: 'July 15',
        postStatus: "updated their status",
        reacts: 4000,
        userImgLink:
            "https://png.pngtree.com/png-vector/20200424/ourmid/pngtree-a-man-who-is-playing-video-games-with-a-gadget-vector-png-image_2192804.jpg",
        postImgLink:
            "https://www.webdevelopmenthelp.net/wp-content/uploads/2018/10/Gadgets.png");
    FacebookCardModel model4 = FacebookCardModel(
        fbname: 'Trends',
        cmnts: 2000,
        shares: 80,
        date: 'Feb 2',
        postdetails:
            "#TodaysNewTrends \n #AllTrends  #Awesome \n\n Link on Bio",
        reacts: 100,
        postStatus: "updated their status",
        userImgLink:
            "https://miro.medium.com/max/2400/1*EgUVEstRTICZBvUtbH46yQ.jpeg",
        postImgLink:
            "https://www.stanventures.com/blog/wp-content/uploads/2019/01/Social-Media-2020-trends.jpg");

    return ListView(
      children: [
        _card(model1),
        _card(model2),
        _card(model3),
        _card(model4),
      ],
    );
  }

  Widget _card(FacebookCardModel fbmodel) {
    return SizedBox(
      width: width,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "/details", arguments: fbmodel);
        },
        child: Card(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              _firstRow(fbmodel),
              Container(
                  margin: EdgeInsets.only(right: 300.0),
                  child: Text(
                    fbmodel.date,
                    style: TextStyle(color: Colors.black45, fontSize: 12),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(right: 20.0),
                  padding: EdgeInsets.all(8.0),
                  alignment: Alignment.centerLeft,
                  child: Text(fbmodel.postdetails)),
              Container(
                  width: width,
                  height: 300,
                  child: Image.network(
                    fbmodel.postImgLink,
                    fit: BoxFit.fitWidth,
                  )),
              _secondLastRow(fbmodel),
              Divider(
                color: Colors.black38,
              ),
              _lastRow()
            ],
          ),
        ),
      ),
    );
  }

  Widget _likesharecomment(Widget widget1, String myStr) {
    return Container(
      alignment: Alignment.centerRight,
      child: Row(
        children: [
          widget1,
          SizedBox(
            width: 10,
          ),
          Text(myStr)
        ],
      ),
    );
  }

  Widget _lastRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _likesharecomment(
            Image.network(
              "https://png.pngitem.com/pimgs/s/0-6252_facebook-thumb-up-icon-transparent-likes-facebook-hd.png",
              height: 20,
            ),
            'Like'),
        _likesharecomment(
            Image.network(
              "https://www.nicepng.com/png/detail/49-499826_png-library-library-comment-transparent-icon-facebook-comment.png",
              height: 20,
            ),
            'Comment'),
        _likesharecomment(
            Image.network(
              "https://img.favpng.com/17/4/25/computer-icons-share-icon-sharing-png-favpng-q0nTUpQRiwdXb5aeHu2RS6MuU.jpg",
              height: 30,
            ),
            'Share'),
      ],
    );
  }

  Widget _firstRow(FacebookCardModel fbmodel) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white60,
          child: CircleAvatar(
            backgroundImage: NetworkImage(fbmodel.userImgLink.toString()),
            radius: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(fbmodel.fbname,
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        CircleAvatar(
          backgroundColor: Colors.white60,
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i0.wp.com/truecaller.blog/wp-content/uploads/2014/01/verified_badgy.png?fit=560%2C315&ssl=1"),
              radius: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            fbmodel.postStatus,
            style: TextStyle(color: Colors.black45, fontSize: 12),
          ),
        ),

        new Spacer(), // to provide space as needed

        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(Icons.more_horiz),
        )
      ],
    );
  }

  Widget _secondLastRow(FacebookCardModel fbmodel) {
    return Row(
      children: [
        Row(
          children: [
            Image.network(
              "https://i.pinimg.com/originals/39/44/6c/39446caa52f53369b92bc97253d2b2f1.png",
              width: 30,
              height: 30,
            ),
            Image.network(
              "https://www.citypng.com/public/uploads/small/115919156614d7ckrffvgqldmxwtrqgk92r7s3ljmur1men5mqfwbabv4hwbmwa68hpw89m5iviqk9xuhgaiu83olruujjske0nbkagm9z92ujl.png",
              width: 23,
              height: 23,
            ),
            Image.network(
              "https://www.clipartkey.com/mpngs/m/111-1110687_facebook-wow-emoticon-icon-wow-reaction-transparent-background.png",
              width: 28,
              height: 20,
            ),
            Text(fbmodel.reacts.toString()),
          ],
        ),
        SizedBox(
          width: .3 * width,
        ),
        Text(
          fbmodel.cmnts.toString() + ' Comments .',
          style: TextStyle(color: Colors.black26, fontSize: 12),
        ),
        Text(
          fbmodel.shares.toString() + ' Shares',
          style: TextStyle(color: Colors.black26, fontSize: 12),
        )
      ],
    );
  }
}
