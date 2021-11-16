class NominationCategory {
  String? id;
  String? name;
  List<SingleNominee>? nominees;
  int? totalVotes;
  String? lastVoteDate;
  String? imgUrl;

  NominationCategory(
      {this.id,
      this.name,
      this.nominees,
      this.totalVotes,
      this.lastVoteDate,
      this.imgUrl});

  NominationCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    //TODO: Fix this
    // nominees =
    //     json['nominees'] != null ? Single?.fromJson(json['nominees']) : null;
    totalVotes = json['total_votes'];
    lastVoteDate = json['last_vote_date'];
    imgUrl = json['img_url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    //TODO: Fix this
    // if (nominees != null) {
    //   data['nominees'] = nominees.toJson();
    // }
    data['total_votes'] = totalVotes;
    data['last_vote_date'] = lastVoteDate;
    data['img_url'] = imgUrl;
    return data;
  }
}

class Nominees {
  SingleNominee? singleNominee;

  Nominees({this.singleNominee});

  Nominees.fromJson(Map<String, dynamic> json) {
    singleNominee = json['single_nominee'] != null
        ? SingleNominee?.fromJson(json['single_nominee'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    //TODO: Fix this
    // if (singleNominee != null) {
    //   data['single_nominee'] = singleNominee.toJson();
    // }
    return data;
  }
}

class SingleNominee {
  String? id;
  String? name;
  int? tokenCount;

  SingleNominee({this.id, this.name, this.tokenCount});

  SingleNominee.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    tokenCount = json['tokenCount'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['tokenCount'] = tokenCount;
    return data;
  }
}
