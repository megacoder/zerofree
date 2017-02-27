ZEROFREE
========

What
----

Linux supports "sparse" files, which means runs of all-zero data can be omitted from a disk file.  This saves space.  Zerofree searches files for all-zero blocks and tries to release these blocks to save disk space.

How
---

$ zerofree <big-file-that-is-mostly-blocks-of-zeros>

Why
---

Caveat: not all filesystems support sparse files.  Your mileage may vary.
