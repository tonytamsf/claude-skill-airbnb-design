# Airbnb Design Language System Breakdown

## Overview

The Airbnb Design Language System (DLS) was created to establish a unified visual language across all platforms and products. As Karri Saarinen, who led the DLS development, stated: "Visual language is like any other language. Misunderstandings arise if the language is not shared and understood by everyone using it."

**Core Goals:**
1. Create a more beautiful and accessible design language
2. Achieve unified designs across platforms
3. Boost efficiency through reusable, well-defined components
4. Enable simultaneous feature releases across native platforms

---

## Design Principles

The Airbnb DLS is built on four guiding principles:

### 1. Unified
Each component contributes to a greater whole with no isolated features. Every piece of the design system works together cohesively.

### 2. Universal
The system must be welcoming and accessible to Airbnb's global user community, respecting cultural differences and accessibility needs.

### 3. Iconic
Bold, clear work that reflects the focus on design and functionality. Airbnb's design should be immediately recognizable.

### 4. Conversational
Motion and interactions communicate with users in understandable, human ways. The interface should feel natural and intuitive.

---

## Design Philosophy

### Component as Living Organism
Rather than following atomic design principles, Airbnb treats components as **"elements of a living organism"** with distinct functions and personalities. As the team noted: "A unified design language shouldn't be just a set of static rules and individual atoms; it should be an evolving ecosystem."

**Component Structure:**
- Each component has **required elements**: title, text, icon, imagery
- Plus **optional elements** for flexibility
- Defined simultaneously in both design files and code
- Components can evolve independently while maintaining system cohesion

### Cross-Platform First
The system prioritizes platform-agnostic design:
- Most components function identically across iOS and Android
- Platform conventions respected for navigation, icons, and interactions
- Responsive design supports different device sizes
- Design once for phones, adapt for tablets using consistent components

### Shared Constraints
Software design has few physical constraints compared to other design disciplines. The DLS establishes shared constraints to:
- Prevent disjointed user experiences
- Enable large teams to create coherent products
- Reduce complexity through standardization

---

## Typography System

### Font Sizes & Line Heights
| Style | Size/Line Height | Usage |
|-------|------------------|-------|
| Sheet title | 32px/36px | Main page titles |
| Section header | 23px/20px | Section headings |
| Body 1 / Header | 16px/23px | Primary body headers |
| Body 1 / High importance | 16px/23px | Important body text |
| Body 1 / Regular | 16px/23px | Standard body text |
| Body 1 / Link | 16px/23px | Text links |
| Body 2 / Header | 14px/18px | Secondary headers |
| Body 2 / High importance | 14px/18px | Important secondary text |
| Body 2 / Regular | 14px/18px | Secondary body text |
| Body 2 / Link | 14px/18px | Secondary links |
| Button | 14px/18px | Button labels |

### Typography Notes
- Two primary text sizes: 16px (Body 1) and 14px (Body 2)
- Consistent line height ratios for readability
- Font family: Not specified in overview (typically Airbnb uses Cereal font family)

---

## Color System

### Dark Texts (for light backgrounds)
| Name | Hex | Contrast Ratio | Usage |
|------|-----|----------------|-------|
| Regular | #222222 | 15.9:1 | Primary text |
| Low importance | #717171 | 4.88:1 | Secondary/subtle text |
| Disabled | #AAAAAA | 2.32:1 | Disabled state text |
| Destructive | #8F2A14 | 8.36:1 | Error/warning text |

### Light Backgrounds
| Name | Hex | Contrast Ratio | Usage |
|------|-----|----------------|-------|
| Primary button | #FFFFFF | 21:1 | Main background color |

### Light Texts (for dark backgrounds)
| Name | Hex | Contrast Ratio | Usage |
|------|-----|----------------|-------|
| Regular | #FFFFFF | 21:1 | Text on dark backgrounds |

### Dark Backgrounds
| Name | Hex/Gradient | Contrast Ratio | Usage |
|------|--------------|----------------|-------|
| Primary button | #D03660 → #D73B53 | 4.79:1 → 4.52:1 | Primary CTA gradient |
| Tertiary button | #222222 | 15.9:1 | Alternative button style |
| Disabled | #DDDDDD | 1.35:1 | Disabled state background |
| Ornamental | #600F97 → #A22085 | - | Decorative gradient |

### Dark Borders
| Name | Hex | Contrast Ratio | Usage |
|------|-----|----------------|-------|
| Tertiary button | #222222 | 15.9:1 | Button borders |

### Color Palette Summary
**Primary Colors:**
- Brand Pink/Red: #D03660 to #D73B53 (gradient)
- Brand Purple: #600F97 to #A22085 (gradient)

**Neutrals:**
- Black: #222222
- White: #FFFFFF
- Gray - Mid: #717171
- Gray - Light: #AAAAAA
- Gray - Lighter: #DDDDDD

**Semantic:**
- Destructive/Error: #8F2A14

---

## Spacing System

| Name | Value | Usage |
|------|-------|-------|
| x-large | 64px | Maximum spacing for major sections |
| large | 48px | Large gaps between sections |
| base | 24px | Standard spacing unit |
| small | 16px | Compact spacing |
| x-small | 8px | Minimal spacing |

### Spacing Scale
The spacing follows a base-8 system with the following progression:
- 8px (1× base-8)
- 16px (2× base-8)
- 24px (3× base-8)
- 48px (6× base-8)
- 64px (8× base-8)

---

## Icon System

### Standard Icons
- check
- chevron-downward
- chevron-right
- chevron-left
- chevron-upward
- close
- search
- share

### Outlined Icons
- heart (outline)
- star (outline)
- verified (outline)

### Filled Icons
- heart (filled)
- star (filled)
- verified (filled)

### Social Icons
- apple
- facebook
- google

### Icon Guidelines
- Two styles available: outlined and filled
- Consistent stroke weights across icon set
- Social media icons for authentication/sharing

---

## Design Tokens Structure

### Recommended Token Naming Convention

```
// Colors
--color-text-primary: #222222
--color-text-secondary: #717171
--color-text-disabled: #AAAAAA
--color-text-destructive: #8F2A14
--color-text-inverse: #FFFFFF

--color-bg-primary: #FFFFFF
--color-bg-button-primary-start: #D03660
--color-bg-button-primary-end: #D73B53
--color-bg-button-tertiary: #222222
--color-bg-disabled: #DDDDDD

--color-border-primary: #222222

--color-brand-gradient-pink-start: #D03660
--color-brand-gradient-pink-end: #D73B53
--color-brand-gradient-purple-start: #600F97
--color-brand-gradient-purple-end: #A22085

// Typography
--font-size-title: 32px
--font-size-header: 23px
--font-size-body-1: 16px
--font-size-body-2: 14px

--line-height-title: 36px
--line-height-header: 20px
--line-height-body-1: 23px
--line-height-body-2: 18px

// Spacing
--spacing-xs: 8px
--spacing-sm: 16px
--spacing-base: 24px
--spacing-lg: 48px
--spacing-xl: 64px
```

---

## Accessibility Considerations

### Contrast Ratios
- All contrast ratios meet WCAG AA standards (4.5:1 for normal text)
- Regular dark text (#222222) achieves 15.9:1 - exceeds AAA
- Primary button gradient maintains 4.52:1 minimum - meets AA for large text
- Disabled states (#AAAAAA at 2.32:1) intentionally low contrast to indicate inactive state

### Font Sizes
- Minimum font size: 14px (meets mobile accessibility standards)
- Line heights provide adequate spacing for readability
- Clear hierarchy with distinct size differences

---

## Implementation Guidelines

### Component Hierarchy
1. **Sheet title (32px)** - Top-level page titles
2. **Section header (23px)** - Major section divisions
3. **Body 1 (16px)** - Primary content, headers, links
4. **Body 2 (14px)** - Secondary content, buttons
5. **Buttons (14px)** - Interactive elements

### Button Styles
Based on the color system, implement these button variants:
- **Primary**: Gradient background (#D03660 → #D73B53), white text
- **Tertiary**: Dark background (#222222), white text
- **Disabled**: Light gray background (#DDDDDD), gray text (#AAAAAA)

### Layout Best Practices
- Use 24px as the base spacing unit for consistent rhythm
- Apply 8px for tight spacing (within components)
- Use 48px or 64px for major section breaks
- Maintain consistent padding across similar components

---

## Building Process & Methodology

### Foundation Phase
1. **Style Guide Creation**: Define basic typography, colors, icons, spacing, and information architecture
2. **Design Audit**: Print and display existing designs side-by-side to identify inconsistencies
3. **Component Library**: Collect components into organized categories:
   - Navigation
   - Marquees
   - Content
   - Image
   - Specialty

### Development Approach
- **Simultaneous Definition**: Create components in both design files and code at the same time
- **Component Library Organization**: Master file with components categorized by function
- **Version Control**: Use git/GitHub for component updates with pull requests
- **Documentation**: Create PNG documentation for each component
- **Responsive Adaptation**: Design once for phones, systematically adapt for tablets

### Technical Implementation
- Build components using custom view framework
- Create one component set for phones (iOS/Android)
- Adapt to tablets using responsive design principles
- Deploy across platforms simultaneously

---

## Lessons Learned

### 1. Prioritize Component Effort
Not all components warrant equal effort. Focus on foundational patterns that will be used frequently (like rows and lists) rather than one-off specialty components.

### 2. Design File Management
- Sketch symbol management can be challenging at scale
- Consider using layer groups instead of nested symbols
- Implement version control for design files
- Document components as they're created, not after

### 3. Shared Vocabulary
The design system creates a shared language between designers and engineers, improving:
- Communication efficiency
- Handoff quality
- Implementation speed
- Consistency across teams

### 4. Documentation Timing
Create documentation during component development, not after completion. This ensures:
- Nothing is forgotten or lost
- Rationale is captured while fresh
- Examples are relevant and complete

---

## Business Impact

### Development Efficiency
- **Faster Feature Development**: Reduced view code complexity speeds up implementation
- **Simultaneous Releases**: Features can ship across all native platforms at once
- **Higher Fidelity Prototyping**: Design with production-ready components
- **Reduced Costs**: Less rework and faster iteration cycles

### Team Collaboration
- **Shared Vocabulary**: Common language between designers and engineers
- **Consistent Quality**: Standardized components ensure baseline quality
- **Scalable Design**: Large teams can work coherently without constant sync
- **Knowledge Transfer**: New team members onboard faster with clear system

### User Experience
- **Platform Consistency**: Users get familiar, cohesive experience across devices
- **Accessibility**: System-wide standards ensure inclusive design
- **Quality at Scale**: Maintain high quality as product grows
- **Faster Updates**: Roll out improvements across all touchpoints efficiently

---

## References & Further Reading

- [Building a Visual Language: Behind the scenes of our Airbnb design system](https://medium.com/airbnb-design/building-a-visual-language-behind-the-scenes-of-our-airbnb-design-system-224748775e4e) by Karri Saarinen
- [Airbnb Design Language System](https://karrisaarinen.com/dls/)
- [Creating the Airbnb Design System](https://karrisaarinen.com/posts/building-airbnb-design-system/)
- [Designer News AMA: Karri Saarinen - Creating Design Systems at Airbnb](https://www.designernews.co/stories/69628--ama-karri-saarinen-designer-creating-design-systems-at-airbnb)
