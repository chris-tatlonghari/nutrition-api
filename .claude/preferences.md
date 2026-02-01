# Coding Preferences & Guidelines

## Core Philosophy
Prioritize clean, maintainable code that follows Rails conventions. When in doubt, choose the explicit, idiomatic approach over shortcuts.

## Rails Best Practices

### Avoid "Sharp Knives"
- ❌ Avoid methods like `.to_unsafe_h` which bypass strong parameters security

### Code Clarity
- Prefer explicit over implicit
- Favor Rails conventions over custom solutions
- Choose readability over brevity

## Design Philosophy

### Use Color Sparingly
- Avoid "overdose" of primary colors in UI
- Use primary color as strategic accent, not background filler
- Example: DoorDash's intentional use of red vs. full color saturation
- Active states: Bold borders rather than filled backgrounds

### Clean, Minimal Design
- Simple, professional aesthetics
- Strategic pops of color rather than overwhelming gradients
- Let white space and clean typography do the work

## When Making Decisions
1. **Is it Rails-idiomatic?** Follow Rails conventions first
2. **Does it smell?** If something feels like a hack, it probably is
3. **Is it explicit?** Clear intent > clever shortcuts
4. **Would I need to explain it?** If yes, probably choose the simpler way

## Security Mindset
- Never bypass Rails security features without explicit reason
- Prefer whitelisting over blacklisting

---

*This file helps Claude Code make decisions aligned with this project's coding standards.*
