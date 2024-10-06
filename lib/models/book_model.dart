class BookModel {
  String title;
  String subTitle;
  String author;
  String image;
  double ratings;
  bool isFavorite;
  String description;
  List<Chapter> chapters;

  BookModel({
    required this.title,
    required this.subTitle,
    required this.author,
    required this.image,
    required this.ratings,
    required this.isFavorite,
    required this.description,
    required this.chapters,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    var chapterList = json['chapters'] as List;
    List<Chapter> chapterItems = chapterList.map((i) => Chapter.fromJson(i)).toList();

    return BookModel(
      title: json['title'],
      subTitle: json['subTitle'],
      author: json['author'],
      image: json['image'],
      ratings: json['ratings'].toDouble(),
      isFavorite: json['isFavorite'],
      description: json['description'],
      chapters: chapterItems,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subTitle': subTitle,
      'author': author,
      'image': image,
      'ratings': ratings,
      'isFavorite': isFavorite,
      'description': description,
      'chapters': chapters.map((chapter) => chapter.toJson()).toList(),
    };
  }
}

class Chapter {
  String chapterTitle;
  String chapterTag;
  String chapterDescription;

  Chapter({
    required this.chapterTitle,
    required this.chapterTag,
    required this.chapterDescription,
  });

  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(
      chapterTitle: json['chapterTitle'],
      chapterTag: json['chapterTag'],
      chapterDescription: json['chapterDescription'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'chapterTitle': chapterTitle,
      'chapterTag': chapterTag,
      'chapterDescription': chapterDescription,
    };
  }
}
