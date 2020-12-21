class FacebookCardModel {
  String fbname, date, postdetails;

  String userImgLink;

  String postImgLink;

  String postStatus;

  int reacts, cmnts, shares;

  FacebookCardModel(
      {this.fbname,
      this.date,
      this.postdetails,
      this.reacts,
      this.cmnts,
      this.shares,
      this.userImgLink,
      this.postImgLink,
      this.postStatus});
}
