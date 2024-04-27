
class StudentReview {
  String? name;
  double? rating;
  String? imageUrl;
  String? str;
  String? review;

  StudentReview({
     this.name,
     this.rating,
     this.imageUrl,
     this.str,
     this.review,
  });
}

// Define your list of StudentReviews here
List<StudentReview> studentReviews = [
  StudentReview(
    name: 'Nawed Anagnos',
    rating: 4.0,
    imageUrl: 'assets/images/nawed.jpg',
    str:'MVSH Engineering college ',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque convallis nulla sit amet turpis vestibulum efficitur.',
  ),
  StudentReview(
    name: 'Sayeka Naj',
    rating: 4.0,
    imageUrl: 'assets/images/download2.jpeg',
     str:'MVSH Engineering college ',
    review:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque convallis nulla sit amet turpis vestibulum efficitur.',
  ),
  StudentReview(
    name: 'Ritu Kumari',
    rating: 3.5,
    imageUrl: 'assets/images/download4.jpeg',
     str:'MVSH Engineering college ',
    review:
        'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  ),
  StudentReview(
    name: 'John Doe',
    rating: 3.5,
    imageUrl: 'assets/images/download.jpeg',
     str:'MVSH Engineering college ',
    review:
        'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  ),
  StudentReview(
    name: 'Amayera Khanam',
    rating: 4.8,
    imageUrl: 'assets/images/images.jpeg',
     str:'MVSH Engineering college ',
    review:
        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.',
  ),
  // Add more items as needed
];
