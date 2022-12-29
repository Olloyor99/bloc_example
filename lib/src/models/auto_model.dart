class AutoApi {
  AutoApi({
    this.code,
    this.meta,
    this.data,
  });

  int? code;
  Meta? meta;
  List<Datum>? data;

  factory AutoApi.fromMap(Map<String, dynamic> json) => AutoApi(
        code: json["code"],
        meta: Meta.fromMap(json["meta"]),
        data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "code": code,
        "meta": meta!.toMap(),
        "data": List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Datum {
  Datum({
    this.id,
    this.name,
    this.email,
    this.gender,
    this.status,
  });

  int? id;
  String? name;
  String? email;
  String? gender;
  String? status;

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        gender: json["gender"],
        status: json["status"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "gender": gender,
        "status": status,
      };
}

class Meta {
  Meta({
    this.pagination,
  });

  Pagination? pagination;

  factory Meta.fromMap(Map<String, dynamic> json) => Meta(
        pagination: Pagination.fromMap(json["pagination"]),
      );

  Map<String, dynamic> toMap() => {
        "pagination": pagination!.toMap(),
      };
}

class Pagination {
  Pagination({
    this.total,
    this.pages,
    this.page,
    this.limit,
  });

  int? total;
  int? pages;
  int? page;
  int? limit;

  factory Pagination.fromMap(Map<String, dynamic> json) => Pagination(
        total: json["total"],
        pages: json["pages"],
        page: json["page"],
        limit: json["limit"],
      );

  Map<String, dynamic> toMap() => {
        "total": total,
        "pages": pages,
        "page": page,
        "limit": limit,
      };
}
