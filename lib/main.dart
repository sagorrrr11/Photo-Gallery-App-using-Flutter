import 'package:flutter/material.dart';

void main() {
  runApp(const PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {
  const PhotoGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Photo Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PhotoGalleryScreen(),
    );
  }
}

class PhotoGalleryScreen extends StatelessWidget {
  const PhotoGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Gallery'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Welcome to My Photo Gallery!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search for photos',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                _buildPhotoButton(
                    context,
                    'https://scontent.fjsr1-1.fna.fbcdn.net/v/t39.30808-6/343421162_146392698377137_5760990567442623984_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHEw201LV0R0DXUIa7jbHM-Gl593GsHSX4aXn3cawdJfhBC64wAlPeltuwcR-PIMg9lDlApCRAdkCxpKdcWJE-q&_nc_ohc=g3bSFmv-tZsAX-7g8V_&_nc_zt=23&_nc_ht=scontent.fjsr1-1.fna&oh=00_AfDNl1r0L7CKULbFxwTzkqRhsjqgXvulhSBK_q-1P8DyaQ&oe=648ADDBF',
                    'Photo 1'),
                _buildPhotoButton(
                    context,
                    'https://scontent.fjsr1-1.fna.fbcdn.net/v/t39.30808-6/343421162_146392698377137_5760990567442623984_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHEw201LV0R0DXUIa7jbHM-Gl593GsHSX4aXn3cawdJfhBC64wAlPeltuwcR-PIMg9lDlApCRAdkCxpKdcWJE-q&_nc_ohc=g3bSFmv-tZsAX-7g8V_&_nc_zt=23&_nc_ht=scontent.fjsr1-1.fna&oh=00_AfDNl1r0L7CKULbFxwTzkqRhsjqgXvulhSBK_q-1P8DyaQ&oe=648ADDBF',
                    'Photo 2'),
                _buildPhotoButton(
                    context,
                    'https://scontent.fjsr1-1.fna.fbcdn.net/v/t39.30808-6/343421162_146392698377137_5760990567442623984_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHEw201LV0R0DXUIa7jbHM-Gl593GsHSX4aXn3cawdJfhBC64wAlPeltuwcR-PIMg9lDlApCRAdkCxpKdcWJE-q&_nc_ohc=g3bSFmv-tZsAX-7g8V_&_nc_zt=23&_nc_ht=scontent.fjsr1-1.fna&oh=00_AfDNl1r0L7CKULbFxwTzkqRhsjqgXvulhSBK_q-1P8DyaQ&oe=648ADDBF',
                    'Photo 3'),
                _buildPhotoButton(
                    context,
                    'https://scontent.fjsr1-1.fna.fbcdn.net/v/t39.30808-6/343421162_146392698377137_5760990567442623984_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHEw201LV0R0DXUIa7jbHM-Gl593GsHSX4aXn3cawdJfhBC64wAlPeltuwcR-PIMg9lDlApCRAdkCxpKdcWJE-q&_nc_ohc=g3bSFmv-tZsAX-7g8V_&_nc_zt=23&_nc_ht=scontent.fjsr1-1.fna&oh=00_AfDNl1r0L7CKULbFxwTzkqRhsjqgXvulhSBK_q-1P8DyaQ&oe=648ADDBF',
                    'Photo 4'),
                _buildPhotoButton(
                    context,
                    'https://scontent.fjsr1-1.fna.fbcdn.net/v/t39.30808-6/343421162_146392698377137_5760990567442623984_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHEw201LV0R0DXUIa7jbHM-Gl593GsHSX4aXn3cawdJfhBC64wAlPeltuwcR-PIMg9lDlApCRAdkCxpKdcWJE-q&_nc_ohc=g3bSFmv-tZsAX-7g8V_&_nc_zt=23&_nc_ht=scontent.fjsr1-1.fna&oh=00_AfDNl1r0L7CKULbFxwTzkqRhsjqgXvulhSBK_q-1P8DyaQ&oe=648ADDBF',
                    'Photo 5'),
                _buildPhotoButton(
                    context,
                    'https://scontent.fjsr1-1.fna.fbcdn.net/v/t39.30808-6/343421162_146392698377137_5760990567442623984_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHEw201LV0R0DXUIa7jbHM-Gl593GsHSX4aXn3cawdJfhBC64wAlPeltuwcR-PIMg9lDlApCRAdkCxpKdcWJE-q&_nc_ohc=g3bSFmv-tZsAX-7g8V_&_nc_zt=23&_nc_ht=scontent.fjsr1-1.fna&oh=00_AfDNl1r0L7CKULbFxwTzkqRhsjqgXvulhSBK_q-1P8DyaQ&oe=648ADDBF',
                    'Photo 6'),
              ],
            ),
            const SizedBox(height: 16.0),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Sample Photo 1'),
                  subtitle: Text('Category 1'),
                ),
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Sample Photo 2'),
                  subtitle: Text('Category 2'),
                ),
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Sample Photo 3'),
                  subtitle: Text('Category 3'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Photos Uploaded Successfully!'),
            ),
          );
        },
        child: const Icon(Icons.cloud_upload),
      ),
    );
  }

  Widget _buildPhotoButton(
      BuildContext context, String imageUrl, String caption) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Clicked on photo!'),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              caption,
              style: const TextStyle(fontSize: 12),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
