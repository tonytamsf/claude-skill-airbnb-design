## Prompt
**Time**: 2025-12-24 09:58:33 | **Session**: 0d3206cc

```
Please analyze this codebase and create a CLAUDE.md file, which will be given to future instances of Claude Code to operate in this repository.

What to add:
1. Commands that will be commonly used, such as how to build, lint, and run tests. Include the necessary commands to develop in this codebase, such as how to run a single test.
2. High-level code architecture and structure so that future instances can be productive more quickly. Focus on the "big picture" architecture that requires reading multiple files to understand.

Usage notes:
- If there's already a CLAUDE.md, suggest improvements to it.
- When you make the initial CLAUDE.md, do not repeat yourself and do not include obvious instructions like "Provide helpful error messages to users", "Write unit tests for all new utilities", "Never include sensitive information (API keys, tokens) in code or commits".
- Avoid listing every component or file structure that can be easily discovered.
- Don't include generic development practices.
- If there are Cursor rules (in .cursor/rules/ or .cursorrules) or Copilot rules (in .github/copilot-instructions.md), make sure to include the important parts.
- If there is a README.md, make sure to include the important parts.
- Do not make up information such as "Common Development Tasks", "Tips for Development", "Support and Documentation" unless this is expressly included in other files that you read.
- Be sure to prefix the file with the following text:

```
# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.
```
```

### Response

I've created a comprehensive CLAUDE.md file for this repository. The file includes:

## Key Sections:

1. **Project Overview** - Explains this is an Airbnb Design Language System reference repository

2. **Repository Structure** - Clear breakdown of the three main directories and their contents

3. **Design System Architecture** - Covers:
   - The four core design principles (Unified, Universal, Iconic, Conversational)
   - Component philosophy (living organisms vs atomic design)
   - Complete design tokens reference (colors, typography, spacing)
   - Platform implementations (Flutter/Dart and CSS/Web)

4. **Common Design Patterns** - Button hierarchy, accessibility requirements, cross-platform strategy

5. **Decision Framework** - The hierarchy for making design decisions and red flags to watch for

6. **Working with This Repository** - Practical guidance on:
   - Referencing design tokens
   - Adding new components
   - Modifying existing implementations

7. **Key Resources** - Links to all important files and external references

The file is focused on the "big picture" architecture that requires reading multiple files to understand, while avoiding obvious instructions or generic development practices. It provides future Claude instances with the context needed to work effectively with this design system reference repository.

---

## Prompt
**Time**: 2025-12-24 10:01:10 | **Session**: 0d3206cc

```
Base directory for this skill: /Users/tonytam/.claude/plugins/cache/anthropic-agent-skills/document-skills/00756142ab04/skills/skill-creator

# Skill Creator

This skill provides guidance for creating effective skills.

## About Skills

Skills are modular, self-contained packages that extend Claude's capabilities by providing
specialized knowledge, workflows, and tools. Think of them as "onboarding guides" for specific
domains or tasks—they transform Claude from a general-purpose agent into a specialized agent
equipped with procedural knowledge that no model can fully possess.

### What Skills Provide

1. Specialized workflows - Multi-step procedures for specific domains
2. Tool integrations - Instructions for working with specific file formats or APIs
3. Domain expertise - Company-specific knowledge, schemas, business logic
4. Bundled resources - Scripts, references, and assets for complex and repetitive tasks

## Core Principles

### Concise is Key

The context window is a public good. Skills share the context window with everything else Claude needs: system prompt, conversation history, other Skills' metadata, and the actual user request.

**Default assumption: Claude is already very smart.** Only add context Claude doesn't already have. Challenge each piece of information: "Does Claude really need this explanation?" and "Does this paragraph justify its token cost?"

Prefer concise examples over verbose explanations.

### Set Appropriate Degrees of Freedom

Match the level of specificity to the task's fragility and variability:

**High freedom (text-based instructions)**: Use when multiple approaches are valid, decisions depend on context, or heuristics guide the approach.

**Medium freedom (pseudocode or scripts with parameters)**: Use when a preferred pattern exists, some variation is acceptable, or configuration affects behavior.

**Low freedom (specific scripts, few parameters)**: Use when operations are fragile and error-prone, consistency is critical, or a specific sequence must be followed.

Think of Claude as exploring a path: a narrow bridge with cliffs needs specific guardrails (low freedom), while an open field allows many routes (high freedom).

### Anatomy of a Skill

Every skill consists of a required SKILL.md file and optional bundled resources:

```
skill-name/
├── SKILL.md (required)
│   ├── YAML frontmatter metadata (required)
│   │   ├── name: (required)
│   │   └── description: (required)
│   └── Markdown instructions (required)
└── Bundled Resources (optional)
    ├── scripts/          - Executable code (Python/Bash/etc.)
    ├── references/       - Documentation intended to be loaded into context as needed
    └── assets/           - Files used in output (templates, icons, fonts, etc.)
```

#### SKILL.md (required)

Every SKILL.md consists of:

- **Frontmatter** (YAML): Contains `name` and `description` fields. These are the only fields that Claude reads to determine when the skill gets used, thus it is very important to be clear and comprehensive in describing what the skill is, and when it should be used.
- **Body** (Markdown): Instructions and guidance for using the skill. Only loaded AFTER the skill triggers (if at all).

#### Bundled Resources (optional)

##### Scripts (`scripts/`)

Executable code (Python/Bash/etc.) for tasks that require deterministic reliability or are repeatedly rewritten.

- **When to include**: When the same code is being rewritten repeatedly or deterministic reliability is needed
- **Example**: `scripts/rotate_pdf.py` for PDF rotation tasks
- **Benefits**: Token efficient, deterministic, may be executed without loading into context
- **Note**: Scripts may still need to be read by Claude for patching or environment-specific adjustments

##### References (`references/`)

Documentation and reference material intended to be loaded as needed into context to inform Claude's process and thinking.

- **When to include**: For documentation that Claude should reference while working
- **Examples**: `references/finance.md` for financial schemas, `references/mnda.md` for company NDA template, `references/policies.md` for company policies, `references/api_docs.md` for API specifications
- **Use cases**: Database schemas, API documentation, domain knowledge, company policies, detailed workflow guides
- **Benefits**: Keeps SKILL.md lean, loaded only when Claude determines it's needed
- **Best practice**: If files are large (>10k words), include grep search patterns in SKILL.md
- **Avoid duplication**: Information should live in either SKILL.md or references files, not both. Prefer references files for detailed information unless it's truly core to the skill—this keeps SKILL.md lean while making information discoverable without hogging the context window. Keep only essential procedural instructions and workflow guidance in SKILL.md; move detailed reference material, schemas, and examples to references files.

##### Assets (`assets/`)

Files not intended to be loaded int

*[... prompt truncated ...]*
```

### Response

I'll help you create a skill for designing apps using the Airbnb Design Language System. Following the skill creation process, let me start by understanding concrete examples of how this skill will be used.

## Step 1: Understanding the Skill with Concrete Examples

To create an effective skill, I need to understand how it will be used in practice. Let me ask you some clarifying questions:

**Primary Questions:**

1. **What type of design output should this skill produce?**
   - HTML/CSS code for web apps?
   - Flutter/Dart code for mobile apps?
   - Design documentation and specifications?
   - Visual mockups or prototypes?
   - All of the above?

2. **What would users typically ask for?** For example:
   - "Design a login screen using Airbnb DLS"
   - "Create a profile page that follows Airbnb design principles"
   - "Build a booking flow with Airbnb styling"
   - Other types of requests?

3. **What platforms should this skill target?**
   - Web applications (HTML/CSS/React)?
   - Mobile applications (Flutter)?
   - Cross-platform?

4. **Should the skill be opinionated about frameworks?** For example:
   - Always use React for web?
   - Always use Flutter for mobile?
   - Or should it adapt based on user preference?

Could you share some concrete examples of how you envision using this skill? This will help me design it to be most effective for your actual use cases.

---

## Prompt
**Time**: 2025-12-24 10:09:12 | **Session**: 0d3206cc

```
Base directory for this skill: /Users/tonytam/.claude/plugins/cache/anthropic-agent-skills/document-skills/00756142ab04/skills/skill-creator

# Skill Creator

This skill provides guidance for creating effective skills.

## About Skills

Skills are modular, self-contained packages that extend Claude's capabilities by providing
specialized knowledge, workflows, and tools. Think of them as "onboarding guides" for specific
domains or tasks—they transform Claude from a general-purpose agent into a specialized agent
equipped with procedural knowledge that no model can fully possess.

### What Skills Provide

1. Specialized workflows - Multi-step procedures for specific domains
2. Tool integrations - Instructions for working with specific file formats or APIs
3. Domain expertise - Company-specific knowledge, schemas, business logic
4. Bundled resources - Scripts, references, and assets for complex and repetitive tasks

## Core Principles

### Concise is Key

The context window is a public good. Skills share the context window with everything else Claude needs: system prompt, conversation history, other Skills' metadata, and the actual user request.

**Default assumption: Claude is already very smart.** Only add context Claude doesn't already have. Challenge each piece of information: "Does Claude really need this explanation?" and "Does this paragraph justify its token cost?"

Prefer concise examples over verbose explanations.

### Set Appropriate Degrees of Freedom

Match the level of specificity to the task's fragility and variability:

**High freedom (text-based instructions)**: Use when multiple approaches are valid, decisions depend on context, or heuristics guide the approach.

**Medium freedom (pseudocode or scripts with parameters)**: Use when a preferred pattern exists, some variation is acceptable, or configuration affects behavior.

**Low freedom (specific scripts, few parameters)**: Use when operations are fragile and error-prone, consistency is critical, or a specific sequence must be followed.

Think of Claude as exploring a path: a narrow bridge with cliffs needs specific guardrails (low freedom), while an open field allows many routes (high freedom).

### Anatomy of a Skill

Every skill consists of a required SKILL.md file and optional bundled resources:

```
skill-name/
├── SKILL.md (required)
│   ├── YAML frontmatter metadata (required)
│   │   ├── name: (required)
│   │   └── description: (required)
│   └── Markdown instructions (required)
└── Bundled Resources (optional)
    ├── scripts/          - Executable code (Python/Bash/etc.)
    ├── references/       - Documentation intended to be loaded into context as needed
    └── assets/           - Files used in output (templates, icons, fonts, etc.)
```

#### SKILL.md (required)

Every SKILL.md consists of:

- **Frontmatter** (YAML): Contains `name` and `description` fields. These are the only fields that Claude reads to determine when the skill gets used, thus it is very important to be clear and comprehensive in describing what the skill is, and when it should be used.
- **Body** (Markdown): Instructions and guidance for using the skill. Only loaded AFTER the skill triggers (if at all).

#### Bundled Resources (optional)

##### Scripts (`scripts/`)

Executable code (Python/Bash/etc.) for tasks that require deterministic reliability or are repeatedly rewritten.

- **When to include**: When the same code is being rewritten repeatedly or deterministic reliability is needed
- **Example**: `scripts/rotate_pdf.py` for PDF rotation tasks
- **Benefits**: Token efficient, deterministic, may be executed without loading into context
- **Note**: Scripts may still need to be read by Claude for patching or environment-specific adjustments

##### References (`references/`)

Documentation and reference material intended to be loaded as needed into context to inform Claude's process and thinking.

- **When to include**: For documentation that Claude should reference while working
- **Examples**: `references/finance.md` for financial schemas, `references/mnda.md` for company NDA template, `references/policies.md` for company policies, `references/api_docs.md` for API specifications
- **Use cases**: Database schemas, API documentation, domain knowledge, company policies, detailed workflow guides
- **Benefits**: Keeps SKILL.md lean, loaded only when Claude determines it's needed
- **Best practice**: If files are large (>10k words), include grep search patterns in SKILL.md
- **Avoid duplication**: Information should live in either SKILL.md or references files, not both. Prefer references files for detailed information unless it's truly core to the skill—this keeps SKILL.md lean while making information discoverable without hogging the context window. Keep only essential procedural instructions and workflow guidance in SKILL.md; move detailed reference material, schemas, and examples to references files.

##### Assets (`assets/`)

Files not intended to be loaded int

*[... prompt truncated ...]*
```

### Response

Perfect! I've successfully created the **Airbnb Design Language System** skill. Here's what was built:

## 📦 Skill Package Created

**File:** `/Users/tonytam/git/airbnb-design/airbnb-design.skill` (19KB)

This skill enables Claude to design and implement apps following Airbnb's proven design principles with built-in accessibility and cross-platform consistency.

## 🎯 What the Skill Does

The skill triggers when users ask to:
- Design a login screen using Airbnb DLS
- Create a profile page following Airbnb design principles
- Build a booking flow with Airbnb styling
- Generate Flutter/Dart or React code with professional design standards
- Create accessible, cross-platform UI components

## 📁 Skill Contents

### **SKILL.md** - Core Instructions
- 6-step workflow: requirements → principles → tokens → code generation → validation → patterns
- Quick examples for Flutter and React
- Decision framework and common patterns
- References to all bundled resources

### **scripts/**
- `validate_contrast.py` - WCAG contrast ratio checker for accessibility compliance
  - Tests all Airbnb DLS color combinations
  - Validates custom colors: `python validate_contrast.py #222222 #FFFFFF`

### **references/** - Progressive Disclosure Documentation
- `design-principles.md` - The four principles (Unified, Universal, Iconic, Conversational) with decision framework
- `component-patterns.md` - Common UI patterns: login screens, profile pages, forms, navigation, buttons
- `accessibility-checklist.md` - Complete WCAG AA compliance guide

### **assets/** - Theme Files & Templates
- `airbnb_theme.dart` - Complete Flutter theme (colors, typography, spacing, buttons)
- `airbnb-theme.css` - Complete web theme (CSS custom properties, utility classes)
- `airbnb-design-tokens.json` - Raw design tokens
- `templates/flutter/login_screen.dart` - Full Flutter login example
- `templates/react/LoginScreen.tsx` - Full React login example

## ✨ Key Features

1. **Four Design Principles Enforcement** - Ensures all designs are Unified, Universal, Iconic, and Conversational
2. **Accessibility Built-in** - WCAG AA compliance with automated contrast validation
3. **Cross-Platform** - Generates Flutter (mobile) and React (web) code using the same design system
4. **Design Tokens** - Standardized colors, typography, spacing following base-8 system
5. **Component Templates** - Production-ready login screens and common patterns
6. **Progressive Disclosure** - Lean SKILL.md with detailed references loaded as needed

## 🚀 How to Use the Skill

To install and use this skill, you can either:
1. **Share the .skill file** - Give the `airbnb-design.skill` file to anyone who needs it
2. **Install it** - The recipient can install it in Claude Code by placing it in their skills directory

Once installed, simply ask Claude things like:
- "Design a login screen using Airbnb design"
- "Create a Flutter profile page following Airbnb DLS"
- "Build a React booking form with Airbnb styling"

Claude will automatically use this skill and follow the complete design system!

The skill has been validated and packaged successfully. All design tokens, templates, and documentation are included.

---

