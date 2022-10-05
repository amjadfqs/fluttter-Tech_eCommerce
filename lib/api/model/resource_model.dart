class ResourceModel {
  int id;
  String title;
  String tags;
  String company;
  String logo;

  ResourceModel({
    this.id = 0,
    this.title = '',
    this.tags = '',
    this.company = '',
    this.logo = '',
  });

  //
  ResourceModel.fromJson(Map json)
      : id = json['id'],
        title = json['title'],
        tags = json['tags'],
        company = json['company'],
        logo = json['logo'];
}
