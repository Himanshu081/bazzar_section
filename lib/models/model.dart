class Apiresult {
  Products products;

  Apiresult({this.products});

  Apiresult.fromJson(Map<String, dynamic> json) {
    products = json['products'] != null
        ? new Products.fromJson(json['products'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products.toJson();
    }
    return data;
  }
}

class Products {
  int currentPage;
  List<Offers> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  Null nextPageUrl;
  String path;
  int perPage;
  Null prevPageUrl;
  int to;
  int total;

  Products(
      {this.currentPage,
      this.data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  Products.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = new List<Offers>();
      json['data'].forEach((v) {
        data.add(new Offers.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = this.firstPageUrl;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['last_page_url'] = this.lastPageUrl;
    data['next_page_url'] = this.nextPageUrl;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['prev_page_url'] = this.prevPageUrl;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}

class Offers {
  int id;
  int storeId;
  String title;
  String description;
  int couponCoins;
  String link;
  String affLink;
  int sortOrder;
  int featured;
  String createdAt;
  String updatedAt;
  List<Images> images;
  Store store;
  Coupon coupon;

  Offers(
      {this.id,
      this.storeId,
      this.title,
      this.description,
      this.couponCoins,
      this.link,
      this.affLink,
      this.sortOrder,
      this.featured,
      this.createdAt,
      this.updatedAt,
      this.images,
      this.store,
      this.coupon});

  Offers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['store_id'];
    title = json['title'];
    description = json['description'];
    couponCoins = json['coupon_coins'];
    link = json['link'];
    affLink = json['aff_link'];
    sortOrder = json['sort_order'];
    featured = json['featured'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['images'] != null) {
      images = new List<Images>();
      json['images'].forEach((v) {
        images.add(new Images.fromJson(v));
      });
    }
    store = json['store'] != null ? new Store.fromJson(json['store']) : null;
    coupon =
        json['coupon'] != null ? new Coupon.fromJson(json['coupon']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['store_id'] = this.storeId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['coupon_coins'] = this.couponCoins;
    data['link'] = this.link;
    data['aff_link'] = this.affLink;
    data['sort_order'] = this.sortOrder;
    data['featured'] = this.featured;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.images != null) {
      data['images'] = this.images.map((v) => v.toJson()).toList();
    }
    if (this.store != null) {
      data['store'] = this.store.toJson();
    }
    if (this.coupon != null) {
      data['coupon'] = this.coupon.toJson();
    }
    return data;
  }
}

class Images {
  int id;
  int productId;
  String image;
  String createdAt;
  String updatedAt;

  Images({this.id, this.productId, this.image, this.createdAt, this.updatedAt});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['image'] = this.image;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Store {
  int id;
  int categoryId;
  String type;
  String name;
  String description;
  String website;
  String facebook;
  String instagram;
  String twitter;
  String logo;
  String city;
  int active;
  int topBrand;
  int sortOrder;
  String createdAt;
  String updatedAt;
  Category category;

  Store(
      {this.id,
      this.categoryId,
      this.type,
      this.name,
      this.description,
      this.website,
      this.facebook,
      this.instagram,
      this.twitter,
      this.logo,
      this.city,
      this.active,
      this.topBrand,
      this.sortOrder,
      this.createdAt,
      this.updatedAt,
      this.category});

  Store.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    type = json['type'];
    name = json['name'];
    description = json['description'];
    website = json['website'];
    facebook = json['facebook'];
    instagram = json['instagram'];
    twitter = json['twitter'];
    logo = json['logo'];
    city = json['city'];
    active = json['active'];
    topBrand = json['top_brand'];
    sortOrder = json['sort_order'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['type'] = this.type;
    data['name'] = this.name;
    data['description'] = this.description;
    data['website'] = this.website;
    data['facebook'] = this.facebook;
    data['instagram'] = this.instagram;
    data['twitter'] = this.twitter;
    data['logo'] = this.logo;
    data['city'] = this.city;
    data['active'] = this.active;
    data['top_brand'] = this.topBrand;
    data['sort_order'] = this.sortOrder;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.category != null) {
      data['category'] = this.category.toJson();
    }
    return data;
  }
}

class Category {
  int id;
  Null parentId;
  String name;
  String image;
  int sortOrder;
  String createdAt;
  String updatedAt;

  Category(
      {this.id,
      this.parentId,
      this.name,
      this.image,
      this.sortOrder,
      this.createdAt,
      this.updatedAt});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    parentId = json['parent_id'];
    name = json['name'];
    image = json['image'];
    sortOrder = json['sort_order'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['parent_id'] = this.parentId;
    data['name'] = this.name;
    data['image'] = this.image;
    data['sort_order'] = this.sortOrder;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Coupon {
  int id;
  int productId;
  String title;
  String description;
  String image;
  String coupon;
  String type;
  String startDate;
  String expiryDate;
  int redeemed;
  String terms;
  String instructions;
  String createdAt;
  String updatedAt;

  Coupon(
      {this.id,
      this.productId,
      this.title,
      this.description,
      this.image,
      this.coupon,
      this.type,
      this.startDate,
      this.expiryDate,
      this.redeemed,
      this.terms,
      this.instructions,
      this.createdAt,
      this.updatedAt});

  Coupon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    coupon = json['coupon'];
    type = json['type'];
    startDate = json['start_date'];
    expiryDate = json['expiry_date'];
    redeemed = json['redeemed'];
    terms = json['terms'];
    instructions = json['instructions'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['image'] = this.image;
    data['coupon'] = this.coupon;
    data['type'] = this.type;
    data['start_date'] = this.startDate;
    data['expiry_date'] = this.expiryDate;
    data['redeemed'] = this.redeemed;
    data['terms'] = this.terms;
    data['instructions'] = this.instructions;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}