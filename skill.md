Before doing anything else, read the following memory files from your vault:
- $VAULT_PATH/memory/workspace.md
- $VAULT_PATH/memory/team.md
- $VAULT_PATH/memory/projects.md
- $VAULT_PATH/memory/conversations.md

Add any additional memory files you use (e.g. calendar.md, images.md) to the list above.

Then process and organize notes in the Obsidian vault at $VAULT_PATH, following these conventions:

## Vault Structure
- `daily/` — daily notes, format YYYY-MM-DD.md
- `projects/` — one file per project
- `people/team/` — one file per person who warrants a dedicated note (e.g. direct reports)
- `tasks/In Progress.md` — your active personal tasks across projects
- `memory/` — Claude's memory files

## Daily Note Format
- Frontmatter: plain text `create date:` and `update date:` (not YAML)
- Section heading: `## [[Project or Person]] - Type` where Type is a word describing the meeting/note context (e.g. Bugs, Standup, Sync, Notes)
- Reference line: `→ [[projects/Project Name#heading]]`
- Summary: one line describing the nature of what was captured (not a repeat of the detail)

## Moving Notes Out of Daily
- **Project-related notes** → move full detail to project file, leave link + one-line summary in daily
- **Person-related notes** (1:1s, individual meetings) → move to person file in `people/team/`, same treatment
- **Non-project, non-person notes** → leave in daily as-is
- Completed tasks stay in the project file; do not surface them in In Progress.md

## Project File Conventions
- Date sections use `## M/D/YY` headings (enables anchor links from daily notes)
- Always reverse chronological order — newest date at top, undated/background content at bottom
- Add new content under a new dated `##` heading at the top
- Bold person names within a date section for scannability
- Link people with dedicated files using [[wikilinks]]; use plain text for everyone else

## Wikilinks
- Only create [[wikilinks]] for people who have dedicated files in `people/team/`
- Everyone else — plain text only, no wikilinks, no person files
- Always link projects by their file name in `projects/`
- When mentioning a person with a dedicated file, update their `## Referenced In` section

## Tasks
- Personal open tasks → `tasks/In Progress.md` under the relevant `## [[Project]]` section
- Use `- [ ]` for open, `- [x]` for done
- Completed items belong in the project file, not In Progress.md
- **After processing any notes, always scan for personal action items and add them to In Progress.md** — includes tasks explicitly assigned, follow-ups mentioned, and new projects taken on

## Keeping Memory Up to Date
At the end of every notes session, update the relevant memory files:
- **memory/projects.md** — add any new projects; update status of existing ones
- **memory/team.md** — add any new people mentioned; update roles or context if changed
- **memory/conversations.md** — prepend a new session entry (newest at top); include: what was done, preferences confirmed, open threads
- **memory/workspace.md** — update if vault structure or conventions changed
- Only update memory files that actually changed — don't rewrite for no reason

## Deleting Files
- Never permanently delete files from the vault
- To "delete" a file, move it to `$VAULT_PATH/trash/`
- Ignore files in `trash/` when reading context, refreshing memory, or following links

## Style
- Concise, no fluff
- Inline code for technical identifiers
- Use `→` for reference/redirect lines
