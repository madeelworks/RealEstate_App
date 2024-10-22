import 'package:flutter/material.dart';
import 'package:real_estate/data.dart';  // Ensure Property is imported correctly

class Detail extends StatelessWidget {
  final Property property;

  Detail({required this.property});

  @override
  Widget build(BuildContext context) {
    // Combine frontImage and other images to ensure frontImage comes first
    List<String> allImages = [property.frontImage, ...property.images];

    return Scaffold(
      appBar: AppBar(
        title: Text(property.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Property Image Carousel (PageView to slide through images)
            SizedBox(
              height: 250,
              child: allImages.isNotEmpty // Ensure there are images
                  ? PageView.builder(
                itemCount: allImages.length,  // Total images including frontImage
                itemBuilder: (context, index) {
                  return Image.asset(
                    allImages[index], // Display each image
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      // Show an error widget if image fails to load
                      return Center(
                        child: Text(
                          'Image not found',
                          style: TextStyle(color: Colors.red),
                        ),
                      );
                    },
                  );
                },
              )
                  : Center(
                child: Text('No images available'),
              ), // Handle no images case
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                property.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                r"$" + property.price.toString(),
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                property.description,  // Display the property description
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
