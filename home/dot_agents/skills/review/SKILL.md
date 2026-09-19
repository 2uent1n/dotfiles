---
name: review
description: Review a completed change before handoff. Use when I ask for a review, or after implementing a feature.
---

# Review a change

Work over the diff sequentially.

- For each file, look at, in order:
  - Correctness: does it do what was asked, including the edge cases that can actually happen?
  - Naming: do names say what the thing is or does?
  - Smells:
    - Mysterious Name: a function, variable, or type whose name doesn't reveal what it does or holds. → rename it; if no honest name comes, the design's murky.
    - Duplicated Code: the same logic shape appears in more than one hunk or file in the change. → extract the shared shape, call it from both.
    - Feature Envy: a method that reaches into another object's data more than its own. → move the method onto the data it envies.
    - Data Clumps: the same few fields or params keep travelling together (a type wanting to be born). → bundle them into one type, pass that.
    - Primitive Obsession: a primitive or string standing in for a domain concept that deserves its own type. → give the concept its own small type.
    - Repeated Switches: the same switch/if-cascade on the same type recurs across the change. → replace with polymorphism, or one map both sites share.
    - Shotgun Surgery: one logical change forces scattered edits across many files in the diff. → gather what changes together into one module.
    - Divergent Change: one file or module is edited for several unrelated reasons. → split so each module changes for one reason.
    - Speculative Generality: abstraction, parameters, or hooks added for needs the spec doesn't have. → delete it; inline back until a real need shows.
    - Message Chains: long a.b().c().d() navigation the caller shouldn't depend on. → hide the walk behind one method on the first object.
    - Middle Man: a class or function that mostly just delegates onward. → cut it, call the real target direct.
    - Refused Bequest: a subclass or implementer that ignores or overrides most of what it inherits. → drop the inheritance, use composition.
  - Tests: do they exercise real behaviour, and fail when it breaks?
  - Scope: anything beyond what was asked?
- Report findings by file, each with a severity (blocker / worth fixing / nit). No reranking, no praise.
- Ask before fixing anything. Then hand the result to `handoff-for-review`.

Done: I know what is wrong, where, and how bad, without the code having been touched.
