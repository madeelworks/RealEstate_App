import 'package:flutter/material.dart';
import 'package:real_estate/data.dart';  // Make sure Property and getPropertyList are here
import 'package:real_estate/detail.dart';  // Ensure the Detail page is imported

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Property> properties = getPropertyList();  // Get property list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading:IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Open the Drawer
            Scaffold.of(context).openDrawer();
          },
        ),

        title: Text(
          "Chaudhary RealEstate",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,  // White text
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title: "Chaudhary RealEstate"


          Padding(
            padding: EdgeInsets.only(top: 16, left: 24, right: 24, bottom: 16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,  // Blue background for search box
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                onChanged: (value) {
                  _filterProperties(value);  // Ensure filtering works dynamically
                },
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,  // White text color
                ),
                decoration: InputDecoration(
                  hintText: 'Search "For Rent" or "For Sale"',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.white.withOpacity(0.6),  // White with opacity for hint
                  ),
                  border: InputBorder.none,  // Remove underline
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  suffixIcon: Icon(Icons.search, color: Colors.white),  // White search icon
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(right: 24, left: 24, top: 24, bottom: 12),
            child: Row(
              children: [
                Text(
                  properties.length.toString(),  // Use dynamic result count
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  "Results found",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,  // 2 items per row
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3 / 2,  // Adjust the ratio for the item size
                ),
                itemCount: properties.length,  // Use the property count
                itemBuilder: (context, index) {
                  return buildProperty(properties[index], index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Filter Method for search functionality
  void _filterProperties(String query) {
    setState(() {
      properties = getPropertyList().where((property) {
        return property.label.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  Widget buildProperty(Property property, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detail(property: property),
          ),
        );
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(property.frontImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Text(
                    "FOR " + property.label,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  property.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  r"$" + property.price.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
