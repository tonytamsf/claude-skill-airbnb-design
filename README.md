# Airbnb Design Language System (DLS)

A comprehensive reference implementation and documentation for Airbnb's Design Language System, featuring cross-platform design tokens, components, and guidelines.

> "Visual language is like any other language. Misunderstandings arise if the language is not shared and understood by everyone using it." — Karri Saarinen, Airbnb DLS Lead

## Overview

This repository provides production-ready implementations of Airbnb's Design Language System for Flutter/Dart and Web/CSS platforms, along with comprehensive documentation of design principles and patterns.

## Features

- **Design Tokens**: Standardized colors, typography, and spacing system
- **Flutter/Dart Theme**: Complete Material3 ThemeData implementation
- **CSS Theme**: Web-ready CSS custom properties and utility classes
- **Design Principles**: Comprehensive documentation of Airbnb's four core principles
- **Accessibility**: WCAG AA compliant (minimum 4.5:1 contrast ratios)
- **Cross-Platform**: Consistent design language across iOS, Android, and Web

## Quick Start

### Flutter/Dart

```dart
import 'package:your_app/airbnb_theme.dart';

MaterialApp(
  theme: AirbnbTheme.lightTheme,
  home: YourHomePage(),
);

// Use design tokens
Container(
  padding: EdgeInsets.all(AirbnbSpacing.base),
  decoration: BoxDecoration(
    gradient: AirbnbColors.primaryGradient,
  ),
  child: Text(
    'Hello Airbnb',
    style: AirbnbTypography.sheetTitle,
  ),
);

// Use helper methods
ElevatedButton(
  style: AirbnbTheme.primaryGradientButton(),
  onPressed: () {},
  child: Text('Book Now'),
);
```

### Web/CSS

```html
<link rel="stylesheet" href="airbnb-theme.css">

<div class="p-base">
  <h1 class="text-sheet-title">Welcome to Airbnb</h1>
  <p class="text-body-1-regular">Find your perfect stay</p>
  <button class="btn-primary">Book Now</button>
</div>
```

## Design Principles

Airbnb's Design Language System is built on four fundamental principles:

### 1. Unified
Every component contributes to a greater whole. No feature exists in isolation—each element is part of a cohesive ecosystem.

### 2. Universal
Welcoming and accessible to a global community. Designs must work across cultures, languages, and abilities (WCAG AA minimum).

### 3. Iconic
Bold, clear work that reflects both design excellence and functional purpose. Memorable and distinctive.

### 4. Conversational
Motion and interaction communicate in understandable, human ways. Interfaces feel natural and intuitive.

Read more in [DESIGN_PRINCIPLES.md](design1/DESIGN_PRINCIPLES.md)

## Repository Structure

```
airbnb-design/
├── design1/
│   ├── DESIGN_PRINCIPLES.md          # Core principles documentation
│   ├── airbnb-design-system-breakdown.md  # Comprehensive DLS overview
│   ├── airbnb-design-tokens.json     # Design tokens specification
│   ├── airbnb_theme.dart             # Flutter/Dart implementation
│   └── airbnb-theme.css              # CSS implementation
├── source/                            # Original source PDFs
├── docs/                              # Additional documentation
├── CLAUDE.md                          # AI assistant guidance
└── README.md                          # This file
```

## Design Tokens

### Colors

- **Primary Text**: `#222222` (15.9:1 contrast ratio - exceeds AAA)
- **Secondary Text**: `#717171` (4.88:1 contrast ratio - meets AA)
- **Primary CTA Gradient**: `#D03660` → `#D73B53`
- **Brand Purple Gradient**: `#600F97` → `#A22085`
- **Success**: `#008A05` (meets AA on white)
- **Error**: `#C13515` (meets AA on white)

### Typography

Built on a harmonious type scale:

- **Sheet Title**: 32px / 36px line height (page titles)
- **Section Header**: 23px / 20px line height (section headings)
- **Body 1**: 16px / 23px line height (primary content)
- **Body 2**: 14px / 18px line height (secondary content, buttons)

### Spacing

Base-8 system for consistent rhythm:

- **xs**: 8px (tight spacing)
- **sm**: 16px (compact)
- **base**: 24px (standard unit)
- **lg**: 48px (section breaks)
- **xl**: 64px (major divisions)

## Button Hierarchy

- **Primary**: Gradient background, white text - highest emphasis
- **Tertiary**: Dark background, white text - medium emphasis
- **Outline**: Transparent background with border - lowest emphasis
- **Disabled**: Gray background with reduced contrast

## Accessibility

All components meet WCAG AA standards:

- Minimum contrast ratio of 4.5:1 for text
- Minimum font size of 14px
- Color is never the only indicator
- Support for multiple languages and locales
- Keyboard navigation support

## Contributing

When adding new components or modifying existing ones:

1. Ensure alignment with all four design principles
2. Check if existing components can solve the need
3. Use design tokens from `airbnb-design-tokens.json`
4. Implement in both Flutter and CSS if applicable
5. Verify WCAG AA accessibility standards
6. Test across target platforms
7. Document usage guidelines

## Resources

### Internal Documentation
- [Design Principles](design1/DESIGN_PRINCIPLES.md)
- [System Breakdown](design1/airbnb-design-system-breakdown.md)
- [Design Tokens](design1/airbnb-design-tokens.json)

### External References
- [Building a Visual Language](https://medium.com/airbnb-design/building-a-visual-language-behind-the-scenes-of-our-airbnb-design-system-224748775e4e) - Karri Saarinen
- [Creating the Airbnb Design System](https://karrisaarinen.com/posts/building-airbnb-design-system/)
- [Airbnb DLS Overview](https://karrisaarinen.com/dls/)

## License

This is a reference implementation for educational purposes. Please consult Airbnb's official design resources for production use.

## Acknowledgments

Based on the work of Karri Saarinen and the Airbnb Design team. This repository is an independent implementation created for learning and reference purposes.
