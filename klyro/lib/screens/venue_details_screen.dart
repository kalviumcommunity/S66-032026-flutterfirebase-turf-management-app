import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class VenueDetailsScreen extends StatelessWidget {
  final Map<String, dynamic>? venueData;

  const VenueDetailsScreen({super.key, this.venueData});

  @override
  Widget build(BuildContext context) {
    // Extract venue data or use defaults
    final venueName = venueData?['name'] ?? 'Colosseum Yorkshir';
    final venueImage =
        venueData?['image'] ??
        'https://images.unsplash.com/photo-1518605368461-1ee71168f278?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80';
    final venueRating = (venueData?['rating'] ?? 4.5).toDouble();

    debugPrint('📍 Viewing venue details: $venueName');

    return Scaffold(
      backgroundColor: AppTheme.backgroundLight,
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTopSection(context, venueImage),
                _buildDetailsSection(venueName, venueRating),
              ],
            ),
          ),
          _buildFloatingBookButton(),
        ],
      ),
    );
  }

  Widget _buildTopSection(BuildContext context, String imageUrl) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 24, right: 24),
      height: 400,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                ),
              ],
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: AppTheme.textDark),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppTheme.primaryGreen.withValues(alpha: 0.3),
                  width: 10,
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.primaryGreen.withValues(alpha: 0.2),
                    blurRadius: 40,
                    spreadRadius: 10,
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.network(imageUrl, fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailsSection(String name, double rating) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.textDark,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Row(
                          children: List.generate(
                            rating.floor(),
                            (index) => const Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.amber,
                            ),
                          ),
                        ),
                        if (rating - rating.floor() >= 0.5)
                          const Icon(
                            Icons.star_half,
                            size: 16,
                            color: Colors.amber,
                          ),
                        const SizedBox(width: 8),
                        const Text(
                          '(54)',
                          style: TextStyle(
                            color: AppTheme.textSecondary,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppTheme.backgroundLight,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.favorite_border,
                      size: 20,
                      color: AppTheme.textDark,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppTheme.backgroundLight,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.share_outlined,
                      size: 20,
                      color: AppTheme.textDark,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),
          _buildInfoRow(Icons.access_time, '06:00 AM - 12 PM'),
          const SizedBox(height: 16),
          _buildInfoRow(
            Icons.location_on_outlined,
            'Suite / Office XX, 182-184 High Street North,\nEast Ham, London E6 2JA. UK',
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const SizedBox(width: 28), // Align with text above
              const Icon(
                Icons.directions,
                size: 16,
                color: AppTheme.primaryGreen,
              ),
              const SizedBox(width: 4),
              Text(
                'Get Direction',
                style: TextStyle(
                  color: AppTheme.primaryGreen,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          const Text(
            'Available Sports',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppTheme.textDark,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _buildSportIcon(Icons.sports_tennis),
              const SizedBox(width: 16),
              _buildSportIcon(Icons.sports_soccer),
              const SizedBox(width: 16),
              _buildSportIcon(Icons.sports_basketball),
              const SizedBox(width: 16),
              _buildSportIcon(Icons.sports_cricket),
            ],
          ),
          const SizedBox(height: 32),
          const Text(
            'Amenities',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppTheme.textDark,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildAmenityIcon(Icons.local_parking_outlined),
              _buildAmenityIcon(Icons.water_drop_outlined),
              _buildAmenityIcon(Icons.people_outline), // 8|8 replacement
              _buildAmenityIcon(Icons.timer_outlined),
              _buildAmenityIcon(Icons.restaurant_outlined),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 20, color: AppTheme.textSecondary),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              color: AppTheme.textSecondary,
              fontSize: 14,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSportIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppTheme.backgroundLight,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: AppTheme.textDark, size: 24),
    );
  }

  Widget _buildAmenityIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppTheme.backgroundLight,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: AppTheme.textDark, size: 24),
    );
  }

  Widget _buildFloatingBookButton() {
    return Positioned(
      bottom: 24,
      left: 24,
      right: 24,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppTheme.primaryGreen.withValues(alpha: 0.3),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.primaryGreen,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Book Now ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_outward, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
