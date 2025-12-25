# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This repository contains the Airbnb Design Language System (DLS) reference implementation and documentation. It is a resource library for implementing Airbnb's design principles across multiple platforms (Flutter/Dart, CSS/Web).

**Core Philosophy**: "Visual language is like any other language. Misunderstandings arise if the language is not shared and understood by everyone using it." — Karri Saarinen, Airbnb DLS Lead

## Repository Structure

```
airbnb-design/
├── design1/                    # Implementation files and documentation
│   ├── DESIGN_PRINCIPLES.md   # The four principles: Unified, Universal, Iconic, Conversational
│   ├── airbnb-design-system-breakdown.md  # Comprehensive DLS overview
│   ├── airbnb-design-tokens.json          # Design tokens (colors, typography, spacing)
│   ├── airbnb_theme.dart                  # Flutter/Dart theme implementation
│   └── airbnb-theme.css                   # CSS theme implementation
├── source/                     # Original source PDFs from Airbnb Design
└── docs/                       # Additional documentation
```

## Design System Architecture

### The Four Design Principles

All design work must align with these principles (defined in `design1/DESIGN_PRINCIPLES.md:10-75`):

1. **Unified**: Every component contributes to a greater whole - no isolated features
2. **Universal**: Welcoming and accessible to a global community (WCAG AA minimum)
3. **Iconic**: Bold, clear work reflecting design and functionality
4. **Conversational**: Motion communicates in understandable, human ways

### Component Philosophy

Components are treated as **"elements of a living organism"** rather than atomic design units. Each component has:
- **Required elements**: title, text, icon, imagery
- **Optional elements**: for flexibility
- Defined simultaneously in both design files and code
- Ability to evolve independently while maintaining system cohesion

### Design Tokens

The design system uses a standardized token system defined in `design1/airbnb-design-tokens.json`:

**Colors**:
- Primary text: `#222222` (15.9:1 contrast - exceeds AAA)
- Secondary text: `#717171` (4.88:1 contrast - meets AA)
- Primary CTA gradient: `#D03660` → `#D73B53`
- Brand purple gradient: `#600F97` → `#A22085`

**Typography**:
- Sheet Title: 32px/36px line height (page titles)
- Section Header: 23px/20px line height (section headings)
- Body 1: 16px/23px line height (primary content)
- Body 2: 14px/18px line height (secondary content, buttons)

**Spacing** (base-8 system):
- xs: 8px (tight spacing)
- sm: 16px (compact)
- base: 24px (standard unit)
- lg: 48px (section breaks)
- xl: 64px (major divisions)

### Platform Implementations

**Flutter/Dart** (`design1/airbnb_theme.dart`):
- `AirbnbColors` class with all color constants and gradients
- `AirbnbTypography` class with TextStyle definitions
- `AirbnbSpacing` class with spacing constants
- `AirbnbTheme.lightTheme` - complete Material3 ThemeData
- Helper methods: `primaryGradientButton()`, `tertiaryButton()`

**CSS/Web** (`design1/airbnb-theme.css`):
- CSS custom properties (`:root` variables)
- Typography utility classes (`.text-sheet-title`, `.text-body-1-regular`, etc.)
- Button styles (`.btn-primary`, `.btn-tertiary`, `.btn-outline`)
- Spacing utilities (`.m-base`, `.p-lg`, etc.)

## Common Design Patterns

### Button Hierarchy
- **Primary**: Gradient background (`#D03660` → `#D73B53`), white text - highest emphasis
- **Tertiary**: Dark background (`#222222`), white text - medium emphasis
- **Outline**: Transparent background, border - lowest emphasis
- **Disabled**: Gray background (`#DDDDDD`), reduced contrast

### Accessibility Requirements
- All text must meet WCAG AA contrast ratios (4.5:1 minimum, 7:1 for AAA)
- Minimum font size: 14px
- Never use color as the only indicator
- Support multiple languages and locales

### Cross-Platform Strategy
- Design once, adapt for each platform
- Most components work identically across iOS and Android
- Respect platform conventions for navigation, icons, and interactions
- Use consistent color palette and spacing across all platforms

## Decision Framework

When making design decisions, use this hierarchy (from `design1/DESIGN_PRINCIPLES.md:166-174`):

1. **System First**: Can existing components solve this?
2. **Principles Check**: Does this align with the four principles?
3. **User Needs**: Does this serve user goals?
4. **Business Goals**: Does this support our objectives?
5. **Technical Feasibility**: Can we build this well?

### Red Flags

Stop and reconsider if you're:
- Creating one-off components for single use cases
- Ignoring existing patterns without strong rationale
- Prioritizing aesthetics over accessibility
- Adding complexity without clear user benefit
- Designing in isolation without system context

## Working with This Repository

### Referencing Design Tokens
Always use design tokens from `airbnb-design-tokens.json` rather than hard-coding values. The tokens are already implemented in both Flutter and CSS.

### Adding New Components
1. Ensure it aligns with all four design principles
2. Check if existing components can solve the need
3. Define required and optional elements
4. Implement in both design tool and code simultaneously
5. Document usage guidelines as you build
6. Verify WCAG AA accessibility standards
7. Test across target platforms

### Modifying Existing Implementations
When updating `airbnb_theme.dart` or `airbnb-theme.css`:
- Maintain consistency with design tokens
- Update both implementations if the change applies to both
- Verify contrast ratios still meet accessibility standards
- Document the rationale for changes

## Key Resources

- **Design Principles**: `design1/DESIGN_PRINCIPLES.md`
- **System Breakdown**: `design1/airbnb-design-system-breakdown.md`
- **Design Tokens**: `design1/airbnb-design-tokens.json`
- **Flutter Theme**: `design1/airbnb_theme.dart`
- **CSS Theme**: `design1/airbnb-theme.css`

### External References
- [Building a Visual Language](https://medium.com/airbnb-design/building-a-visual-language-behind-the-scenes-of-our-airbnb-design-system-224748775e4e) - Karri Saarinen
- [Creating the Airbnb Design System](https://karrisaarinen.com/posts/building-airbnb-design-system/)
- [Airbnb DLS Overview](https://karrisaarinen.com/dls/)
