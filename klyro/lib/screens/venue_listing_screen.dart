import 'package:flutter/material.dart';
import '../main.dart';
import '../theme/app_theme.dart';

class VenueListingScreen extends StatefulWidget {
  const VenueListingScreen({super.key});

  @override
  State<VenueListingScreen> createState() => _VenueListingScreenState();
}

class _VenueListingScreenState extends State<VenueListingScreen> {
  int _selectedCategoryIndex = 2; // Default to Cricket

  final List<Map<String, dynamic>> _categories = [
    {'icon': Icons.sports_tennis, 'name': 'Badminton'}, // Approximation
    {'icon': Icons.sports_soccer, 'name': 'Football'},
    {'icon': Icons.sports_cricket, 'name': 'Cricket'},
    {'icon': Icons.sports_tennis, 'name': 'Tennis'},
    {'icon': Icons.sports_basketball, 'name': 'Basketball'},
  ];

  final List<Map<String, dynamic>> _venues = [
    {
      'name': 'Trophy Fighters',
      'location': 'Aberdeen City (-2.9)',
      'rating': 4.5,
      'image':
          'https://images.unsplash.com/photo-1574629810360-7efbb1925536?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80',
    },
    {
      'name': 'Rush Arena UK',
      'location': 'Northumberland (-3.9)',
      'rating': 4.0,
      'image':
          'https://images.unsplash.com/photo-1508344928928-7165b67de128?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80',
    },
    {
      'name': '7 Star Lords Turf',
      'location': 'South Humberside (-7.3)',
      'rating': 5.0,
      'image':
          'https://plus.unsplash.com/premium_photo-1661962386183-b684cb7b1129?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80',
    },
    {
      'name': 'Colosseum Yorkshir',
      'location': 'South Yorkshire (-3.9)',
      'rating': 4.5,
      'image':
          'https://images.unsplash.com/photo-1518605368461-1ee71168f278?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80',
    },
    {
      'name': 'Square Out Arena',
      'location': 'West Berkshire (-10.5)',
      'rating': 4.0,
      'image':
          'https://images.unsplash.com/photo-1529900895318-7b9c9f2b1d31?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80',
    },
    {
      'name': 'The Elite Sports',
      'location': 'Hertfordshire County',
      'rating': 4.5,
      'image':
          'https://images.unsplash.com/photo-1459865264687-595d652de67e?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAppBar(),
            const SizedBox(height: 20),
            _buildCategoryList(),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'For ${_categories[_selectedCategoryIndex]['name']} Ground',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textDark,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(child: _buildVenueGrid()),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 24, top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: AppTheme.textDark),
                onPressed:
                    () {}, // Handled by standard back if pushed, but this is a nav screen
              ),
              const SizedBox(width: 8),
              const Text(
                'Book Your Venues',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textDark,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
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
                child: const Icon(
                  Icons.filter_alt_outlined,
                  size: 20,
                  color: AppTheme.textDark,
                ),
              ),
              const SizedBox(width: 12),
              Container(
                padding: const EdgeInsets.all(8),
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
                child: const Icon(
                  Icons.search,
                  size: 20,
                  color: AppTheme.textDark,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryList() {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          final isSelected = index == _selectedCategoryIndex;
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedCategoryIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: isSelected ? AppTheme.primaryGreen : Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Icon(
                      _categories[index]['icon'],
                      color: isSelected ? Colors.black : AppTheme.textDark,
                      size: 28,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _categories[index]['name'],
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.w500,
                      color: isSelected
                          ? AppTheme.textDark
                          : AppTheme.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildVenueGrid() {
    return GridView.builder(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 120),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75, // Adjust based on card content height
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: _venues.length,
      itemBuilder: (context, index) {
        final venue = _venues[index];
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              AppRoutes.venueDetails,
              arguments: venue,
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  child: Image.network(
                    venue['image'],
                    height: 100,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        venue['name'],
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.textDark,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 12,
                            color: AppTheme.textSecondary,
                          ),
                          const SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              venue['location'],
                              style: const TextStyle(
                                fontSize: 10,
                                color: AppTheme.textSecondary,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: List.generate(5, (starIndex) {
                          return Icon(
                            starIndex < venue['rating'].floor()
                                ? Icons.star
                                : Icons.star_half,
                            size: 12,
                            color: Colors.amber,
                          );
                        }),
                      ),
                      const SizedBox(height: 8),
                      // Mock Icons for available sports at bottom
                      Row(
                        children: [
                          _buildMiniIcon(Icons.sports_cricket_outlined),
                          const SizedBox(width: 4),
                          _buildMiniIcon(Icons.sports_soccer_outlined),
                          const SizedBox(width: 4),
                          _buildMiniIcon(Icons.sports_tennis_outlined),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildMiniIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppTheme.backgroundLight,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 12, color: AppTheme.textSecondary),
    );
  }
}
