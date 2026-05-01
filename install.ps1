#Requires -Version 7.0
<#
.SYNOPSIS
    Installs My Ministry Mission podcast skills into Claude Code.

.DESCRIPTION
    Copies all task skill directories to ~/.claude/skills/ so they become
    slash commands in Claude Code (/podcast-series-planner, etc.).

    Appends the foundation guardrails to ~/.claude/CLAUDE.md so they
    auto-load in every Claude Code session without manual invocation.

.EXAMPLE
    .\install.ps1

.EXAMPLE
    .\install.ps1 -Force
    Overwrites previously installed skill directories.
#>

param(
    [switch]$Force
)

$ErrorActionPreference = "Stop"

$repoRoot     = $PSScriptRoot
$skillsDir    = Join-Path $env:USERPROFILE ".claude\skills"
$globalClaude = Join-Path $env:USERPROFILE ".claude\CLAUDE.md"

# Skill directories to install, relative to repo root.
# Foundation is handled separately (goes to CLAUDE.md, not skills/).
$skills = @(
    "podcast-series\podcast-series-check",
    "podcast-series\podcast-series-planner",
    "podcast-series\podcast-series-outline",
    "podcast-series\podcast-series-narrative",
    "podcast-series\podcast-series-context-log",
    "podcast-episode\podcast-episode-ideas",
    "podcast-episode\podcast-episode-outline",
    "podcast-episode\podcast-episode-narrative",
    "podcast-guest\podcast-guest-research",
    "podcast-guest\podcast-guest-outline",
    "podcast-guest\podcast-guest-narrative",
    "podcast-guest\podcast-guest-rundown",
    "podcast-publication"
)

function Remove-YamlFrontmatter([string]$content) {
    # Strip the --- ... --- block at the top of a SKILL.md file.
    if (-not $content.TrimStart().StartsWith("---")) { return $content }
    $lines = $content -split "`n"
    # Find the closing --- (first occurrence after line 0)
    for ($i = 1; $i -lt $lines.Count; $i++) {
        if ($lines[$i].Trim() -eq "---") {
            return ($lines | Select-Object -Skip ($i + 1)) -join "`n"
        }
    }
    return $content
}

Write-Host ""
Write-Host "Installing My Ministry Mission podcast skills into Claude Code"
Write-Host "================================================================"
Write-Host ""

# 1. Create skills directory
New-Item -ItemType Directory -Force -Path $skillsDir | Out-Null

# 2. Copy each skill directory
$installed = 0
$skipped   = 0

foreach ($relative in $skills) {
    $skillName = Split-Path $relative -Leaf
    $src = Join-Path $repoRoot $relative
    $dst = Join-Path $skillsDir $skillName

    if (-not (Test-Path $src)) {
        Write-Warning "Source not found, skipping: $src"
        $skipped++
        continue
    }

    if ((Test-Path $dst) -and -not $Force) {
        Write-Host "  [skip]     /$skillName  (already installed; use -Force to overwrite)"
        $skipped++
        continue
    }

    Copy-Item -Recurse -Force $src $dst
    Write-Host "  [ok]       /$skillName"
    $installed++
}

# 3. Append foundation guardrails to ~/.claude/CLAUDE.md
Write-Host ""
$foundationPath = Join-Path $repoRoot "foundation\SKILL.md"

if (-not (Test-Path $foundationPath)) {
    Write-Warning "foundation\SKILL.md not found — skipping CLAUDE.md update."
} else {
    $foundationRaw  = Get-Content $foundationPath -Raw -Encoding UTF8
    $stripped       = Remove-YamlFrontmatter $foundationRaw

    # Keep only the sections that make sense as always-on CLAUDE.md instructions.
    # Drop the "How to Use This Skill" block (paste-into-chat workflow, no longer relevant).
    $sectionsStart  = $stripped.IndexOf("## Podcast Context Variables")
    $guardrailBody  = if ($sectionsStart -ge 0) { $stripped.Substring($sectionsStart) } else { $stripped }

    $intro   = "These guardrails apply to every podcast skill in this collection. They define the theological boundaries, voice, and output standards that all ``/podcast-*`` commands must follow."
    $marker  = "## My Ministry Mission — Podcast Foundation Guardrails"
    $content = "$marker`n`n$intro`n`n$guardrailBody"

    if (Test-Path $globalClaude) {
        $existing = Get-Content $globalClaude -Raw -Encoding UTF8
        if ($existing -match [regex]::Escape($marker)) {
            if ($Force) {
                # Replace the existing block
                $before  = ($existing -replace "(?s)`n---`n$([regex]::Escape($marker)).*$", "").TrimEnd()
                $updated = "$before`n`n---`n$content"
                Set-Content $globalClaude -Value $updated -Encoding UTF8 -NoNewline
                Write-Host "  [updated]  foundation guardrails in ~/.claude/CLAUDE.md"
            } else {
                Write-Host "  [skip]     foundation already in ~/.claude/CLAUDE.md  (use -Force to update)"
            }
        } else {
            Add-Content $globalClaude -Value "`n`n---`n$content" -Encoding UTF8
            Write-Host "  [ok]       foundation guardrails appended to ~/.claude/CLAUDE.md"
        }
    } else {
        New-Item -ItemType File -Path $globalClaude -Force | Out-Null
        Set-Content $globalClaude -Value $content -Encoding UTF8 -NoNewline
        Write-Host "  [ok]       ~/.claude/CLAUDE.md created with foundation guardrails"
    }
}

# 4. Summary
Write-Host ""
Write-Host "----------------------------------------------------------------"
Write-Host "  Installed : $installed skill(s)"
if ($skipped -gt 0) {
    Write-Host "  Skipped   : $skipped  (run with -Force to overwrite)"
}
Write-Host ""
Write-Host "Restart Claude Code to pick up the new commands."
Write-Host ""
Write-Host "Available slash commands:"
foreach ($relative in $skills) {
    $skillName = Split-Path $relative -Leaf
    Write-Host "  /$skillName"
}
Write-Host ""
