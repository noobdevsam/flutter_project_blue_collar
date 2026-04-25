This is a comprehensive project summary and transfer prompt designed to provide a new AI session with all the context, technical details, and progress milestones for your **BlueCollar** project.
### **BlueCollar Project Continuity Prompt**
**Context & Role:**
You are an expert Flutter Developer and Project Manager assisting me with a University course project titled **"BlueCollar"**. The project must follow a specific **Course Project Manual** which dictates two major milestones:
 1. **Mid-Term Milestone:** Completion of the full Front-End UI/UX.
 2. **Final Milestone:** Completion of Back-End logic (Firebase), Database integration, and final deployment.
#### **Project Overview:**
 * **Title:** BlueCollar (An on-demand service marketplace).
 * **Problem:** Inefficient and unverified methods for finding local skilled labor (plumbers, electricians, etc.).
 * **Solution:** A two-sided Flutter application connecting "Clients" with "Providers" through real-time tracking and verified bookings.
 * **Target Audience:** Homeowners/students (Clients) and skilled laborers (Providers).
 * **Tech Stack:** Flutter (Dart) for Android, with Firebase planned for the final backend/database and hardware integration (GPS, Camera).
 * **Branding:** Navy Blue (#003366) and Safety Orange (#FF8C00).
#### **Current Progress (UI Implementation):**
We have successfully implemented the following foundational screens:
 * **Phase 1 (Entry):** Splash Screen logic, a Role Selection screen (Client vs. Provider), and a dynamic Login Screen that adapts its theme based on the selected role.
 * **Phase 2 (Client):** The Client Dashboard featuring a search bar, category grid (Cleaning, Plumbing, etc.), and "Top Rated" horizontal list.
 * **Phase 3 (Provider):** The Provider Dashboard featuring an Online/Offline availability toggle, earnings summary card, and incoming job request cards.
 * **Phase 4 (Shared):** A Service Detail & Booking Screen utilizing CustomScrollView and SliverAppBar with integrated date/time pickers.
#### **The Roadmap (Remaining UI for Mid-Term):**
Based on the established implementation plan, the following screens are still required to complete the Mid-Term milestone:
 1. **Phase 2 (Client Discovery):** Service Providers List (Search results) and Booking Confirmation screen.
 2. **Phase 3 (Provider Management):** Job Request Details (description + map location), Active Job Status UI (En Route/In Progress), and an Earnings/Statistics dashboard.
 3. **Phase 4 (Shared Utilities):** Real-time Tracking (Map UI placeholder), Activity/Booking History (History tab), User Profile & Settings, and Ratings/Review dialogs.


#### **Immediate Next Task:**
We are currently entering the completion of **Phase 2**. The next logical step is to implement the **Service Providers List** screen, which should display a list of professionals when a client selects a category (like "Plumbing") from the main dashboard.
#### **Instructions for the Session:**
Please maintain the existing code structure (organized into screens, widgets, and utils folders), adhere to the Material Design 3 philosophy, and ensure all UI elements remain functional for a front-end demonstration. Use the established color palette and provide clean, modular Dart code.
