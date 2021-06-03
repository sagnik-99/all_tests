// To parse this JSON data, do
//
//     final profileOfferModel = profileOfferModelFromJson(jsonString);

import 'dart:convert';

ProfileOfferModel profileOfferModelFromJson(String str) => ProfileOfferModel.fromJson(json.decode(str));

String profileOfferModelToJson(ProfileOfferModel data) => json.encode(data.toJson());

class ProfileOfferModel {
  ProfileOfferModel({
    this.offerId,
    this.seOId,
    this.name,
    this.description,
    this.desire,
    this.auctioned,
    this.auctionResponseInfo,
    this.exchangeMode,
    this.location,
    this.offerType,
    this.offerStage,
    this.category,
    this.totalOfferValuation,
    this.unitOfferValuation,
    this.images,
    this.videos,
    this.documents,
    this.condition,
    this.hidden,
    this.hiddenPeriod,
    this.activeSince,
    this.facets,
    this.customTags,
    this.user,
    this.currentUserOfferOwner,
    this.favourite,
    this.chatCount,
    this.dealCount,
    this.publishedDate,
    this.rejectionReason,
    this.rejectionReasonFields,
    this.createdBy,
    this.createdDate,
    this.lastModifiedBy,
    this.lastModifiedDate,
    this.quantity,
    this.itemCondition,
    this.conditionType,
  });

  final String offerId;
  final String seOId;
  final String name;
  final String description;
  final Desire desire;
  final bool auctioned;
  final dynamic auctionResponseInfo;
  final String exchangeMode;
  final Location location;
  final String offerType;
  final String offerStage;
  final Category category;
  final int totalOfferValuation;
  final int unitOfferValuation;
  final List<Image> images;
  final List<dynamic> videos;
  final List<dynamic> documents;
  final dynamic condition;
  final bool hidden;
  final int hiddenPeriod;
  final String activeSince;
  final dynamic facets;
  final List<String> customTags;
  final User user;
  final bool currentUserOfferOwner;
  final bool favourite;
  final int chatCount;
  final int dealCount;
  final int publishedDate;
  final dynamic rejectionReason;
  final dynamic rejectionReasonFields;
  final String createdBy;
  final String createdDate;
  final String lastModifiedBy;
  final String lastModifiedDate;
  final int quantity;
  final String itemCondition;
  final dynamic conditionType;

  factory ProfileOfferModel.fromJson(Map<String, dynamic> json) => ProfileOfferModel(
    offerId: json["offerId"],
    seOId: json["seOId"],
    name: json["name"],
    description: json["description"],
    desire: Desire.fromJson(json["desire"]),
    auctioned: json["auctioned"],
    auctionResponseInfo: json["auctionResponseInfo"],
    exchangeMode: json["exchangeMode"],
    location: Location.fromJson(json["location"]),
    offerType: json["offerType"],
    offerStage: json["offerStage"],
    category: Category.fromJson(json["category"]),
    totalOfferValuation: json["totalOfferValuation"],
    unitOfferValuation: json["unitOfferValuation"],
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    videos: List<dynamic>.from(json["videos"].map((x) => x)),
    documents: List<dynamic>.from(json["documents"].map((x) => x)),
    condition: json["condition"],
    hidden: json["hidden"],
    hiddenPeriod: json["hiddenPeriod"],
    activeSince: json["activeSince"],
    facets: json["facets"],
    customTags: List<String>.from(json["customTags"].map((x) => x)),
    user: User.fromJson(json["user"]),
    currentUserOfferOwner: json["currentUserOfferOwner"],
    favourite: json["favourite"],
    chatCount: json["chatCount"],
    dealCount: json["dealCount"],
    publishedDate: json["publishedDate"],
    rejectionReason: json["rejectionReason"],
    rejectionReasonFields: json["rejectionReasonFields"],
    createdBy: json["createdBy"],
    createdDate: json["createdDate"],
    lastModifiedBy: json["lastModifiedBy"],
    lastModifiedDate: json["lastModifiedDate"],
    quantity: json["quantity"],
    itemCondition: json["itemCondition"],
    conditionType: json["conditionType"],
  );

  Map<String, dynamic> toJson() => {
    "offerId": offerId,
    "seOId": seOId,
    "name": name,
    "description": description,
    "desire": desire.toJson(),
    "auctioned": auctioned,
    "auctionResponseInfo": auctionResponseInfo,
    "exchangeMode": exchangeMode,
    "location": location.toJson(),
    "offerType": offerType,
    "offerStage": offerStage,
    "category": category.toJson(),
    "totalOfferValuation": totalOfferValuation,
    "unitOfferValuation": unitOfferValuation,
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "videos": List<dynamic>.from(videos.map((x) => x)),
    "documents": List<dynamic>.from(documents.map((x) => x)),
    "condition": condition,
    "hidden": hidden,
    "hiddenPeriod": hiddenPeriod,
    "activeSince": activeSince,
    "facets": facets,
    "customTags": List<dynamic>.from(customTags.map((x) => x)),
    "user": user.toJson(),
    "currentUserOfferOwner": currentUserOfferOwner,
    "favourite": favourite,
    "chatCount": chatCount,
    "dealCount": dealCount,
    "publishedDate": publishedDate,
    "rejectionReason": rejectionReason,
    "rejectionReasonFields": rejectionReasonFields,
    "createdBy": createdBy,
    "createdDate": createdDate,
    "lastModifiedBy": lastModifiedBy,
    "lastModifiedDate": lastModifiedDate,
    "quantity": quantity,
    "itemCondition": itemCondition,
    "conditionType": conditionType,
  };
}

class Category {
  Category({
    this.categoryId,
    this.type,
    this.label,
    this.description,
    this.leafNode,
    this.breadcrumbs,
    this.hierarchy,
    this.tags,
    this.vertical,
    this.synonyms,
    this.imagePath,
    this.fullSearchScore,
    this.completionSearchScore,
    this.seoId,
    this.url,
  });

  final String categoryId;
  final String type;
  final String label;
  final String description;
  final bool leafNode;
  final List<String> breadcrumbs;
  final List<Hierarchy> hierarchy;
  final List<dynamic> tags;
  final Vertical vertical;
  final List<dynamic> synonyms;
  final dynamic imagePath;
  final dynamic fullSearchScore;
  final dynamic completionSearchScore;
  final String seoId;
  final String url;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    categoryId: json["categoryId"],
    type: json["type"],
    label: json["label"],
    description: json["description"],
    leafNode: json["leafNode"],
    breadcrumbs: List<String>.from(json["breadcrumbs"].map((x) => x)),
    hierarchy: List<Hierarchy>.from(json["hierarchy"].map((x) => Hierarchy.fromJson(x))),
    tags: List<dynamic>.from(json["tags"].map((x) => x)),
    vertical: Vertical.fromJson(json["vertical"]),
    synonyms: List<dynamic>.from(json["synonyms"].map((x) => x)),
    imagePath: json["imagePath"],
    fullSearchScore: json["fullSearchScore"],
    completionSearchScore: json["completionSearchScore"],
    seoId: json["seoId"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "categoryId": categoryId,
    "type": type,
    "label": label,
    "description": description,
    "leafNode": leafNode,
    "breadcrumbs": List<dynamic>.from(breadcrumbs.map((x) => x)),
    "hierarchy": List<dynamic>.from(hierarchy.map((x) => x.toJson())),
    "tags": List<dynamic>.from(tags.map((x) => x)),
    "vertical": vertical.toJson(),
    "synonyms": List<dynamic>.from(synonyms.map((x) => x)),
    "imagePath": imagePath,
    "fullSearchScore": fullSearchScore,
    "completionSearchScore": completionSearchScore,
    "seoId": seoId,
    "url": url,
  };
}

class Hierarchy {
  Hierarchy({
    this.categoryId,
    this.label,
  });

  final String categoryId;
  final String label;

  factory Hierarchy.fromJson(Map<String, dynamic> json) => Hierarchy(
    categoryId: json["categoryId"],
    label: json["label"],
  );

  Map<String, dynamic> toJson() => {
    "categoryId": categoryId,
    "label": label,
  };
}

class Vertical {
  Vertical({
    this.id,
    this.label,
  });

  final String id;
  final String label;

  factory Vertical.fromJson(Map<String, dynamic> json) => Vertical(
    id: json["id"],
    label: json["label"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "label": label,
  };
}

class Desire {
  Desire({
    this.description,
    this.desireType,
    this.tags,
    this.vertical,
    this.category,
    this.amount,
  });

  final String description;
  final String desireType;
  final List<dynamic> tags;
  final dynamic vertical;
  final dynamic category;
  final int amount;

  factory Desire.fromJson(Map<String, dynamic> json) => Desire(
    description: json["description"],
    desireType: json["desireType"],
    tags: List<dynamic>.from(json["tags"].map((x) => x)),
    vertical: json["vertical"],
    category: json["category"],
    amount: json["amount"],
  );

  Map<String, dynamic> toJson() => {
    "description": description,
    "desireType": desireType,
    "tags": List<dynamic>.from(tags.map((x) => x)),
    "vertical": vertical,
    "category": category,
    "amount": amount,
  };
}

class Image {
  Image({
    this.id,
    this.name,
    this.orgName,
    this.url,
    this.keywords,
    this.displayIndex,
    this.mimeType,
    this.cover,
  });

  final String id;
  final String name;
  final String orgName;
  final String url;
  final dynamic keywords;
  final String displayIndex;
  final dynamic mimeType;
  final bool cover;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"],
    name: json["name"],
    orgName: json["orgName"],
    url: json["url"],
    keywords: json["keywords"],
    displayIndex: json["displayIndex"],
    mimeType: json["mimeType"],
    cover: json["cover"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "orgName": orgName,
    "url": url,
    "keywords": keywords,
    "displayIndex": displayIndex,
    "mimeType": mimeType,
    "cover": cover,
  };
}

class Location {
  Location({
    this.lat,
    this.lng,
    this.area,
    this.zip,
    this.flatNo,
    this.city,
    this.state,
    this.country,
    this.annotation,
    this.addressLine,
  });

  final double lat;
  final double lng;
  final String area;
  final String zip;
  final String flatNo;
  final String city;
  final String state;
  final String country;
  final String annotation;
  final String addressLine;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    lat: json["lat"].toDouble(),
    lng: json["lng"].toDouble(),
    area: json["area"],
    zip: json["zip"],
    flatNo: json["flatNo"],
    city: json["city"],
    state: json["state"],
    country: json["country"],
    annotation: json["annotation"],
    addressLine: json["addressLine"],
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "lng": lng,
    "area": area,
    "zip": zip,
    "flatNo": flatNo,
    "city": city,
    "state": state,
    "country": country,
    "annotation": annotation,
    "addressLine": addressLine,
  };
}

class User {
  User({
    this.identityId,
    this.name,
    this.imageUrl,
    this.averageRating,
  });

  final String identityId;
  final String name;
  final dynamic imageUrl;
  final int averageRating;

  factory User.fromJson(Map<String, dynamic> json) => User(
    identityId: json["identityId"],
    name: json["name"],
    imageUrl: json["imageUrl"],
    averageRating: json["averageRating"],
  );

  Map<String, dynamic> toJson() => {
    "identityId": identityId,
    "name": name,
    "imageUrl": imageUrl,
    "averageRating": averageRating,
  };
}
