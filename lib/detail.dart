import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/data.dart'; // Ensure Property class is properly imported

class Detail extends StatelessWidget {
  final Property property;

  // Constructor with the required keyword to ensure a non-nullable parameter
  const Detail({Key? key, required this.property}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Combine frontImage and other images to ensure frontImage comes first
    List<String> allImages = [property.frontImage, ...?property.images];

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
                itemCount: allImages.length, // Total images including frontImage
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
                property.description, // Display the property description
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ),
            Wrap(

              spacing: 10.0,
              children: <Widget>[
                Chip(
                  label: Text('Garage'),
                  avatar: Icon(CupertinoIcons.car_detailed),
                ),Chip(
                  label: Text('Electricity'),
                  avatar: Icon(CupertinoIcons.antenna_radiowaves_left_right),
                ),Chip(
                  label: Text('Water'),
                  avatar: Icon(CupertinoIcons.drop),
                ),Chip(
                  label: Text('Gas'),
                  avatar: Icon(CupertinoIcons.flame),
                ),
                Divider(color: Colors.white10,),Chip(
                  label: Text('Security'),
                  avatar: Icon(CupertinoIcons.badge_plus_radiowaves_right),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
