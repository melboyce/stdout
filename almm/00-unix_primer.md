# ALMM - Unix primer
**WIP**

```
What we wanted to preserve was not just a good environment in which to do
programming, but a system around which a fellowship could form. We knew
from experience that the essence of communal computing, as supplied by
remote-access, time-shared machines, is not just to type programs into a
terminal instead of a keypunch, but to encourage close communication.

-- Dennis Ritchie
```


# 


## Unix Timeline

* 1961 - CTSS (Compatible Time-Sharing System), MIT
* 1969 - Multics (Multiplexed Information and Computing Service), MIT
  * Introduction of protection rings (8 in hardware)
* 1971 - Unix, Bell Labs
  * Ken Thompson
  * Dennis Ritchie
  * Brian Kernighan
  * Douglas McIlroy
  * Joe Ossanna
  * Steve Bourne
* 1977 - BSD, Berkeley
  * Bill Joy
* 1983 - UNIX System V, AT&T
* 1983 - GNU Project founded
  * Richard Stallman
* Unix Wars !! mid-eighties until late ninties. bloody.
* 1985 - System V Interface Definition, AT&T
* 1989 - NeXTSTEP, NeXT - BSD based
  * Bud Tribble
  * George Crow
  * Rich Page
* 1991 - proper work on Linux starts
* 1993 - FreeBSD, NetBSD
* 1994 - Single UNIX Specification
* 1995 - OpenBSD
* 1997 - Single UNIX Specification v2 (UNIX 98)
* 1997 - NeXTSTEP renamed Darwin
* 2001 - Single UNIX Specification v3 / POSIX:2001 (UNIX 03)
* 2008 - Single UNIX Specification v4 / POSIX:2008 (UNIX V7)


## Philosophy

### Doug McIlroy, 1978

* Make each program do one thing well. To do a new job, build afresh rather than complicate old programs by adding new "features".
* Expect the output of every program to become the input to another, as yet unknown, program. Don't clutter output with extraneous information. Avoid stringently columnar or binary input formats. Don't insist on interactive input.
* Design and build software, even operating systems, to be tried early, ideally within weeks. Don't hesitate to throw away the clumsy parts and rebuild them.
* Use tools in preference to unskilled help to lighten a programming task, even if you have to detour to build the tools and expect to throw some of them out after you've finished using them.


### Rob Pike, Brian Kernighan, 1984

Even though the UNIX system introduces a number of innovative programs and
techniques, no single program or idea makes it work well. Instead, what
makes it effective is the approach to programming, a philosophy of using
the computer. Although that philosophy can't be written down in a single
sentence, at its heart is the idea that the power of a system comes more
from the relationships among programs than from the programs themselves. Many
UNIX programs do quite trivial things in isolation, but, combined with other
programs, become general and useful tools.


### Peter H Salus, 1994

* Write programs that do one thing and do it well.
* Write programs to work together.
* Write programs to handle text streams, because that is a universal interface.


### Mike Gancarz, 1994


```
Small is beautiful.
Make each program do one thing well.
Build a prototype as soon as possible.
Choose portability over efficiency.
Store data in flat text files.
Use software leverage to your advantage.
Use shell scripts to increase leverage and portability.
Avoid captive user interfaces.
Make every program a filter.
```


### Richard P Gabriel, Worse is Better

#### Simplicity
The design must be simple, both in implementation and interface. It is more important for the implementation to be simple than the interface. Simplicity is the most important consideration in a design.

#### Correctness
The design should be correct in all observable aspects, but It is slightly better to be simple than correct.

#### Consistency
The design must not be overly inconsistent. Consistency can be sacrificed for simplicity in some cases, but it is better to drop those parts of the design that deal with less common circumstances than to introduce either complexity or inconsistency in the implementation.

#### Completeness
The design must cover as many important situations as is practical. All reasonably expected cases should be covered. Completeness can be sacrificed in favor of any other quality. In fact, completeness must be sacrificed whenever implementation simplicity is jeopardized. Consistency can be sacrificed to achieve completeness if simplicity is retained; especially worthless is consistency of interface.


## Well Behaved (Modern) Unix Processes

* Write a man-page.
* Use FDs 0, 1, and 2 correctly.
* Log to syslog; provide a log rotate script.
* Respond to signals appropriately.
* Communicate via exit code.
* Stream input from stdin and files.
* Respect kernel resources.


## Plan 9 From Bell Labs

AKA: Where Unix was going before getting side-tracked by capitalism.

```
[t]he foundations of the system are built on two ideas: a per-process name
space and a simple message-oriented file system protocol.

-- Pike, et al
```


## Modern Unix or Unix-like Systems

* Linux
* BSD
* Darwin
* AIX
* z/OS
* Solaris
* HP-UX
