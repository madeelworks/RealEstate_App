class Property {
  final String name;
  final String label;
  final double price;
  final String frontImage;
  final List<String> images;
  // final List<String> images;  // Multiple images
  final String description;   // Description of the property// List to hold multiple images

  Property({
    required this.name,
    required this.label,
    required this.price,
    required this.frontImage,
    required this.images,
    required this.description,

  });
}

List<Property> getPropertyList() {
  return [
    Property(
      name: "Clinton Villa",
      label: "FOR SALE",
      price: 3500.00,
      frontImage: "assets/images/house_01.jpg",
      description:  "Clinton Villa is a luxurious, modern residence in Los Angeles offering stunning lake and ocean views. Its open-concept design features expansive living spaces with floor-to-ceiling windows, a gourmet kitchen, and elegant bedrooms. The villa boasts a private swimming pool, landscaped gardens, and spacious outdoor areas perfect for relaxation and entertainment. Clinton Villa combines contemporary elegance with comfort, offering a premier lifestyle.",
      images: [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],  // Add all relevant images
    ),
    Property(
      name: "Salu House",
      label: "FOR RENT",
      price: 2500.00,

      frontImage: "assets/images/house_04.jpg",
      description: "Salu House is a stylish, contemporary residence located in Miami, offering spacious living areas and beautiful ocean views. With a modern design, it features large windows, a sleek kitchen, and comfortable bedrooms. The outdoor space includes a private deck and a pool, perfect for relaxation and entertaining. Salu House provides a blend of elegance and comfort in a prime location.",

      images: [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],  // Add all relevant images
    ),
    Property(
      name: "Hilton House",
      label: "FOR RENT",
      price: 3100.00,
      frontImage: "assets/images/house_02.jpg",
      description: "Hilton House is a modern, elegant residence located in California, offering serene lake views and spacious living areas. The home features an open layout, a gourmet kitchen, and beautifully designed bedrooms. Outdoors, the property boasts a private swimming pool and lush landscaping, ideal for relaxation and gatherings. Hilton House is the perfect blend of luxury and comfort in a prime location.",

      images: [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],  // Add all relevant images
    ),
    Property(
      name: "Ibe House",
      label: "FOR SALE",
      price: 4500.00,
      frontImage: "assets/images/house_03.jpg",
      description:"Ibe House is a luxurious and contemporary residence located in the heart of Florida, offering breathtaking views and expansive living spaces. Its sleek design features an open-plan layout, a modern kitchen, and elegantly furnished bedrooms. The outdoor area includes a private swimming pool, beautifully landscaped gardens, and ample space for entertaining. Ibe House combines sophistication with comfort, providing a perfect retreat for those seeking upscale living.",

      images: [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],  // Add all relevant images
    ),
    Property(
      name: "Aventura",
      label: "FOR SALE",
      price: 5200.00,
      frontImage: "assets/images/house_05.jpg",
      description:"Aventura House is a stunning modern residence located in New York, offering expansive views and a sophisticated design. The house features open-plan living areas, a state-of-the-art kitchen, and luxurious bedrooms, all filled with natural light. Outdoors, you'll find a private swimming pool and beautifully landscaped spaces, ideal for both relaxation and entertainment. Aventura House is the perfect blend of modern elegance and comfort in a prime location.",

      images: [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],  // Add all relevant images
    ),
    Property(
      name: "North House",
      label: "FOR SALE",
      price: 3500.00,
      frontImage: "assets/images/house_06.jpg",
      description: "North House is a beautifully designed contemporary home in Florida, offering spacious living areas and serene views. The house features an open-concept layout with a sleek kitchen, comfortable bedrooms, and large windows that invite natural light throughout. The outdoor space includes a private pool and lush gardens, perfect for relaxation or entertaining. North House combines modern luxury with a peaceful atmosphere in a desirable location.",

      images: [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],  // Add all relevant images
    ),
    Property(
      name: "Rasmus Resident",
      label: "FOR RENT",
      price: 2900.00,
      frontImage: "assets/images/house_07.jpg",
      description:"Rasmus Resident is a stylish, modern home located in Detroit, offering spacious living areas and elegant design. Featuring an open floor plan, a contemporary kitchen, and comfortable bedrooms, this residence is perfect for modern living. The outdoor area includes a private swimming pool and a beautifully landscaped yard, ideal for relaxation or hosting guests. Rasmus Resident blends luxury and comfort in a prime location.",

      images: [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],  // Add all relevant images
    ),
    Property(
      name: "Simone House",
      label: "FOR RENT",
      price: 3900.00,
      frontImage: "assets/images/house_08.jpg",
      description:"Simone House is a chic, modern residence located in Florida, offering spacious interiors and contemporary design. The home features an open-concept layout with a sleek kitchen, luxurious bedrooms, and large windows that provide ample natural light. Outside, the property boasts a private pool and well-manicured gardens, perfect for both relaxation and entertaining. Simone House combines elegance and comfort in a sought-after location.",

      images: [
        "assets/images/kitchen.jpg",
        "assets/images/bath_room.jpg",
        "assets/images/swimming_pool.jpg",
        "assets/images/bed_room.jpg",
        "assets/images/living_room.jpg",
      ],  // Add all relevant images
    ),
  ];
}
