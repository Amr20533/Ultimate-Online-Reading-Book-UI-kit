import 'package:online_reading_book_app/models/book_model.dart';

class BooksData{
  List<BookModel> books = [
    BookModel(
      title: "Crushing",
      subTitle: "& Influence",
      // subTitle: "Mastering Success",
      author: "Gary Vaynerchuk",
      image: "assets/images/book-1.png",
      ratings: 4.9,
      isFavorite: true,
      description: "A guide to understanding the nuances of influence and success in the modern world.",
      chapters: [
        Chapter(
          chapterTitle: "Money",
          chapterTag: "Life is about to change",
          chapterDescription: "Understanding the importance of financial literacy and wealth creation.",
        ),
        Chapter(
          chapterTitle: "Power",
          chapterTag: "Everything loves power",
          chapterDescription: "Exploring the dynamics of power in business and personal relationships.",
        ),
        Chapter(
          chapterTitle: "Influence",
          chapterTag: "Influence easily like never before",
          chapterDescription: "Techniques to enhance your ability to influence others.",
        ),
        Chapter(
          chapterTitle: "Win",
          chapterTag: "Winning is what matters",
          chapterDescription: "Strategies for achieving your goals and winning in life.",
        ),
      ],
    ),
    BookModel(
    title: "Top Ten",
    subTitle: "Business Hacks",
    // subTitle: "Maximize Your Efficiency",
    author: "Herman Joel",
    image: "assets/images/book-2.png",
    ratings: 4.8,
    isFavorite: false,
    description: "Discover the top ten hacks that can help you streamline your business processes.",
    chapters: [
      Chapter(
        chapterTitle: "Hack 1",
        chapterTag: "Optimizing Workflow",
        chapterDescription: "Learn how to optimize your daily workflow for better productivity.",
      ),
      Chapter(
        chapterTitle: "Hack 2",
        chapterTag: "Effective Delegation",
        chapterDescription: "Master the art of delegation to maximize team efficiency.",
      ),
      Chapter(
        chapterTitle: "Hack 3",
        chapterTag: "Leveraging Technology",
        chapterDescription: "Utilize the latest technology to streamline operations.",
      ),
      Chapter(
        chapterTitle: "Hack 4",
        chapterTag: "Networking",
        chapterDescription: "How to effectively network to grow your business.",
      ),
    ],
  ),
    BookModel(
    title: "The Art of",
    subTitle: "Business",
    // subTitle: "Crafting Success",
    author: "Herman Joel",
    image: "assets/images/book-3.png",
    ratings: 4.8,
    isFavorite: true,
    description: "An insightful look into the principles of successful business practices.",
    chapters: [
      Chapter(
        chapterTitle: "Chapter 1",
        chapterTag: "Understanding the Basics",
        chapterDescription: "A deep dive into the foundational concepts of business.",
      ),
      Chapter(
        chapterTitle: "Chapter 2",
        chapterTag: "Market Analysis",
        chapterDescription: "Techniques for analyzing and understanding your market.",
      ),
      Chapter(
        chapterTitle: "Chapter 3",
        chapterTag: "Building a Brand",
        chapterDescription: "Strategies for creating a compelling brand identity.",
      ),
      Chapter(
        chapterTitle: "Chapter 4",
        chapterTag: "Customer Engagement",
        chapterDescription: "Ways to engage and retain your customers effectively.",
      ),
    ],
  )

  ];



}