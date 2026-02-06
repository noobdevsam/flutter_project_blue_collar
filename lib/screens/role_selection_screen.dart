import 'package:flutter/material.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Getting screen size for responsive design
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          // Background Design (Top Navy Wave)
          Container(
            height: size.height * 0.4,
            decoration: const BoxDecoration(
              color: Color(0xFF003366), // Brand Navy Blue
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),
                  // Logo / Branding Area
                  const Icon(
                    Icons.handyman_rounded,
                    size: 80,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "BlueCollar",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const Text(
                    "Work done right.",
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),

                  const SizedBox(height: 80),

                  // Selection Header
                  const Text(
                    "Continue as...",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // ROLE CARDS
                  _buildRoleCard(
                    context,
                    title: "Client",
                    subtitle: "I need a service",
                    icon: Icons.person_outline,
                    color: Colors.blueGrey.shade50,
                    iconColor: const Color(0xFF003366),
                    onTap: () {
                      // Navigate to Client Login (ToDo)
                      print("Client Selected");
                    },
                  ),
                  const SizedBox(height: 16),
                  _buildRoleCard(
                    context,
                    title: "Provider",
                    subtitle: "I want to offer services",
                    icon: Icons.engineering_outlined,
                    color: const Color(0xFFFF8C00),
                    // Safety Orange
                    iconColor: Colors.white,
                    isHighlight: true,
                    // Highlights the 'Worker' option
                    onTap: () {
                      // Navigate to Provider Login (ToDo)
                      print("Provider Selected");
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper Widget for the Role Cards
  Widget _buildRoleCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required Color iconColor,
    required VoidCallback onTap,
    bool isHighlight = false,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: isHighlight ? color : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: isHighlight ? null : Border.all(color: Colors.grey.shade300),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isHighlight
                    ? Colors.white.withOpacity(0.2)
                    : Colors.blue.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: iconColor, size: 28),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: isHighlight ? Colors.white : Colors.black87,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: isHighlight ? Colors.white70 : Colors.grey.shade600,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: isHighlight ? Colors.white70 : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
