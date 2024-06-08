# CatchMe Portfolio

Welcome to the **CatchMe Portfolio** project! This Flutter application showcases a fun and interactive way to present a portfolio. The main highlight of this project is the "Catch Me" feature, where a button playfully moves away when hovered over, making it an engaging experience for users.

## Features

- **Interactive Animation**: The "Catch Me" button moves to a random position nearby when hovered over, with increasing speed, making it challenging to catch.
- **Dynamic Background**: The background color changes randomly on each hover, adding a vibrant touch to the UI.
- **Profile Information**: Displays a welcoming message and profile details in a styled container.
- **Responsive Design**: The layout adjusts according to different screen sizes, ensuring a great user experience across devices.

## Demo

![Demo GIF](link-to-demo-gif)  
*Include a link to a GIF or video showing the application in action.*

## Installation

To run this project locally, follow these steps:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/catchme-portfolio.git
   ```
2. **Navigate to the project directory:**
   ```bash
   cd catchme_portfilio
   ```
3. **Install dependencies:**
   ```bash
   flutter pub get
   ```
4. **Run the application:**
   ```bash
   flutter run
   ```

## Usage

- Hover over the "Catch Me" button to see it move to a new random position and watch the background color change.
- Click the button to stop the animation and see the final percentage indicator.

## Code Overview

### Main Files and Directories

- **lib/main.dart**: Entry point of the application.
- **lib/pages/home_page.dart**: Contains the main `HomePage` widget with the interactive animation logic.
- **lib/components/**: Includes reusable components like `ProfileIcons` and `CatchMeContainer`.
- **lib/logic/random_allocator.dart**: Logic for generating random widths and colors.

### Key Components

- **HomePage**: The main stateful widget managing the animation and UI.
- **RandomAllocator**: A helper class to provide random values for the animation.
- **CatchMeContainer**: The interactive button widget.

## Customization

You can customize the behavior and appearance of the application by modifying the following:

- **Animation Speed and Movement**: Adjust the `_hoverSpeed` and random position logic in `home_page.dart`.
- **Colors**: Change the color palette in `random_allocator.dart` for different background colors.
- **Text and Styling**: Update the text and styles in the `HomePage` widget to match your preferences.

## Contribution

Contributions are welcome! If you have suggestions or improvements, feel free to open an issue or submit a pull request.

## Contact

For any questions or feedback, please reach out to me at try.vrmketan@gmail.com

---

**Enjoy coding and catching the button!** 🎉

---
