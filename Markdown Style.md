> Note: the following is written in an informal tone with personal opinions. This is not related at all related to the research draft itself.

This vault adheres to a local style of writing Markdown. With this we aim to make it look very close to LaTeX documents in Obsidian/Typora with no additional setup.

## Motivation

 So far, we don't have the perfect editor for math papers/books that is
- easy to write (like Markdown, not LaTeX)
- has capacity to use mathematical theorem environments with auto labeling / references (like LaTeX and potentially with Pandoc, not plain Markdown)
- and you can see the final, beaultiful result right after writing in real-time with no compilation (like Typora, not Pandoc).

Obsidian checks the mark for the first and the last item, and do have some reference functionality. But it does not have good math environments yet. A perfectionist solution could be to 
1. extend the [CommonMark](https://commonmark.org/) spec very carefully the right way to support theorem environment + cross-references
2. and make a good Obsidian/VSCode plugin or a nice editor to render them correctly in real-time. 
Unfortunately, I'm a PhD student already struggling with a thesis. To this end, I am devising a lazy/minimal grammar of Markdown that renders right away in Obsidian like a basic LaTeX file with theorem environments.

## Spec

The main thing here is a _theorem environment_. It mimics the look of the `amsthm` LaTeX package. We follow the specification of [CommonMark 0.30](https://spec.commonmark.org/0.30/).

> __Definition [theorem-environment].__ A _theorem environment_ is a [block quote](https://spec.commonmark.org/0.30/#block-quotes) that contains the following elements. ^def-theorem-environment
> - Right after the block quote marker, the text ` __EnvType [EnvName].__ ` (including padding whitespaces) follows. 
> 	- `EnvType` should be one of the followings in the table. 
> 	- `EnvName` can be any name, but it only consists of lowercase alphabets, dash `-`, and should start with an alphabet.
> - Then any contents can be inside the block quote.
> - It should have exactly one [block identifier](https://help.obsidian.md/Linking+notes+and+files/Internal+links#Link+to+a+block+in+a+note) somewhere inside the block quote which is exactly `^EnvAbbr-EnvName`.
> 	- `EnvAbbr` should correspond to `EnvType` as the following table.
> 	- The identifier should be positioned at the very end of a line, with no trailing spaces.

| EnvType    | EnvAbbr  |
|------------|----------|
| Theorem    | thm      |
| Definition | def      |
| Corollary  | cor      |
| Remark     | rem      |
| Remark     | rem      |

_Proof._ A _proof environment_ is simply a series of paragraphs, with the first one starting with `_Proof._`, and the last one ending with □ (&#9633).  □

Typing these manually do not make sense. I use the [obsidian-latex-suite](https://github.com/artisticat1/obsidian-latex-suite) plugin to make them easily typeable. Simply typing `> thm` expands to a `Theorem` environment. Then by typing the name of the environment name, and pressing tab, it autopopulates the name.

## Drawbacks & Alternatives

I think [callouts](https://help.obsidian.md/Editing+and+formatting/Callouts) in Obsidian can be modified easily to look like theorem environment using CSS. It also looks minimal and better in plain text, exactly like the spirit of Markdown. But so far I don't know [their CSS](https://help.obsidian.md/Editing+and+formatting/Callouts#Customize+callouts) or just CSS enough to make it work.

```markdown
> [!thm] square-root-two
The square root of two is $\sqrt{2}$
```

> [!thm] square-root-two
The square root of two is $\sqrt{2}$

Callouts also have an advantage that it can be folded by default. So if I ever have some technical lemma that I'm not really interested in, then I can just fold it by default and let the reader check them if needed.

Instead of using the Unicode square, we might use the letters `QED` or `Q.E.D.`.

Right now, modifying theorem names requires you to manually locate every usage of the theorem and modify.

## File Structure

- Any directory/file that is meant to be in the draft should start with `[0-9A][0-9]. ` (including whitespace). A directory is a section, and 

## Ideas

To add an interactive javascript app, use `<iframe>`:

<iframe height="600" width="100%" src="https://bitcraftlab.github.io/p5.gui/examples/slider-range-2/index.html"></iframe>
