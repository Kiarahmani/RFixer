
Given the regular expression:

   ([\w])*\.([a-z]){2,}

That that should match the strings:

  ✓ (0:17)   stackoverflow.com

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■([\w])*)\.)([a-z]){2,}get a solution: ((s([\w])*)\.)([a-z]){2,}
add positive: 0-.aa
add negative: s.aa
  2      |  1     (( (■)*)\.)([a-z]){2,}  fail dotstar or empty
  3      |  1     (( ([\w]){■})\.)([a-z]){2,}fail dotstar or empty
  4      |  1     (( ([\w])*)■)([a-z]){2,}fail dotstar or empty
  5      |  1     (( ([\w])*)\.)(■){2,}   fail dotstar or empty
  6      |  1     (( ([\w])*)\.)([a-z]){■}fail dotstar or empty
  7      |  2     ((■(■)*)\.)([a-z]){2,}    unsatisfiable SAT formula       
  8      |  2     ((■([\w]){■})\.)([a-z]){2,}fail dot
  9      |  2     ((■([\w])*)■)([a-z]){2,}fail dot
  10     |  2     ((■([\w])*)\.)(■){2,}   fail dot
  11     |  2     ((■([\w])*)\.)([a-z]){■}fail dot
  12     |  2     (((■■)([\w])*)\.)([a-z]){2,}get a solution: ((([s0][\-t])([\w])*)\.)([a-z]){2,}
add positive: 00.aa
get a solution: ((([s0][\-t0])([\w])*)\.)([a-z]){2,}
add positive: 01.aa
get a solution: ((([s0][1\-t0])([\w])*)\.)([a-z]){2,}
add positive: 1-.aa
get a solution: ((([1s0][1\-t0])([\w])*)\.)([a-z]){2,}
add positive: 2-.aa
get a solution: ((([12s0][1\-t0])([\w])*)\.)([a-z]){2,}
add positive: 3-.aa
get a solution: ((([123s0][1\-t0])([\w])*)\.)([a-z]){2,}
add positive: 02.aa
get a solution: ((([123s0][1\-2t0])([\w])*)\.)([a-z]){2,}
add positive: 4-.aa
get a solution: ((([123s40][1\-2t0])([\w])*)\.)([a-z]){2,}
add positive: 5-.aa
get a solution: ((([123s450][1\-2t0])([\w])*)\.)([a-z]){2,}
add positive: 6-.aa
get a solution: ((([123s4560][1\-2t0])([\w])*)\.)([a-z]){2,}
add positive: 7-.aa
get a solution: ((([123s45670][1\-2t0])([\w])*)\.)([a-z]){2,}
add positive: 8-.aa
get a solution: ((([123s456780][1\-2t0])([\w])*)\.)([a-z]){2,}
add positive: 9-.aa
get a solution: ((([123s4567890][1\-2t0])([\w])*)\.)([a-z]){2,}
add positive: 03.aa
get a solution: ((([123s4567890][1\-23t0])([\w])*)\.)([a-z]){2,}
add positive: 04.aa
get a solution: ((([123s4567890][1\-234t0])([\w])*)\.)([a-z]){2,}
add positive: A-.aa
get a solution: ((([A0123s456789][1\-234t0])([\w])*)\.)([a-z]){2,}
add positive: B-.aa
get a solution: ((([AB0123s456789][1\-234t0])([\w])*)\.)([a-z]){2,}
add positive: 05.aa
get a solution: ((([AB0123s456789][1\-234t50])([\w])*)\.)([a-z]){2,}
add positive: C-.aa
get a solution: ((([ABC0123s456789][1\-234t50])([\w])*)\.)([a-z]){2,}
add positive: D-.aa
get a solution: ((([ABCD0123s456789][1\-234t50])([\w])*)\.)([a-z]){2,}
add positive: E-.aa
get a solution: ((([ABCDE0123s456789][1\-234t50])([\w])*)\.)([a-z]){2,}
add positive: F-.aa
get a solution: ((([ABCDEF0123s456789][1\-234t50])([\w])*)\.)([a-z]){2,}
add positive: G-.aa
get a solution: ((([ABCDEFG0123s456789][1\-234t50])([\w])*)\.)([a-z]){2,}
add positive: 06.aa
get a solution: ((([ABCDEFG0123s456789][1\-234t560])([\w])*)\.)([a-z]){2,}
add positive: H-.aa
get a solution: ((([ABCDEFGH0123s456789][1\-234t560])([\w])*)\.)([a-z]){2,}
add positive: 07.aa
get a solution: ((([ABCDEFGH0123s456789][1\-234t5670])([\w])*)\.)([a-z]){2,}
add positive: I-.aa
get a solution: ((([ABCDEFGHI0123s456789][1\-234t5670])([\w])*)\.)([a-z]){2,}
add positive: J-.aa
get a solution: ((([ABCDEFGHIJ0123s456789][1\-234t5670])([\w])*)\.)([a-z]){2,}
add positive: 08.aa
get a solution: ((([ABCDEFGHIJ0123s456789][1\-234t56780])([\w])*)\.)([a-z]){2,}
add positive: K-.aa
get a solution: ((([ABCDEFGHIJK0123s456789][1\-234t56780])([\w])*)\.)([a-z]){2,}
add positive: L-.aa
get a solution: ((([ABCDEFGHIJKL0123s456789][1\-234t56780])([\w])*)\.)([a-z]){2,}
add positive: 09.aa
get a solution: ((([ABCDEFGHIJKL0123s456789][01\-234t56789])([\w])*)\.)([a-z]){2,}
add positive: 0A.aa
get a solution: ((([ABCDEFGHIJKL0123s456789][A0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: M-.aa
get a solution: ((([0123s456789ABCDEFGHIJKLM][A0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: N-.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMN][A0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: O-.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNO][A0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: P-.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOP][A0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: 0B.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOP][AB0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: 0C.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOP][ABC0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: 0D.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOP][ABCD0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: 0E.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOP][ABCDE0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: Q-.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQ][ABCDE0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: 0F.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQ][ABCDEF0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: R-.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQR][ABCDEF0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: S-.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQRS][ABCDEF0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: 0G.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQRS][ABCDEFG0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: T-.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQRST][ABCDEFG0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: U-.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQRSTU][ABCDEFG0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: V-.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQRSTUV][ABCDEFG0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: 0H.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQRSTUV][ABCDEFGH0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: W-.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQRSTUVW][ABCDEFGH0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: X-.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQRSTUVWX][ABCDEFGH0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: 0I.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQRSTUVWX][ABCDEFGHI0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: Y-.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQRSTUVWXY][ABCDEFGHI0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: 0J.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQRSTUVWXY][ABCDEFGHIJ0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: 0K.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQRSTUVWXY][ABCDEFGHIJK0\-1234t56789])([\w])*)\.)([a-z]){2,}
add positive: 0L.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQRSTUVWXY][01234t56789ABCDEFGHIJKL\-])([\w])*)\.)([a-z]){2,}
add positive: Z-.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQRSTUVWXYZ][01234t56789ABCDEFGHIJKL\-])([\w])*)\.)([a-z]){2,}
add positive: 0M.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQRSTUVWXYZ][01234t56789ABCDEFGHIJKLM\-])([\w])*)\.)([a-z]){2,}
add positive: _-.aa
get a solution: ((([0123s456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLM\-])([\w])*)\.)([a-z]){2,}
add positive: a-.aa
get a solution: ((([a0123s456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLM\-])([\w])*)\.)([a-z]){2,}
add positive: b-.aa
get a solution: ((([ab0123s456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLM\-])([\w])*)\.)([a-z]){2,}
add positive: 0N.aa
get a solution: ((([ab0123s456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMN\-])([\w])*)\.)([a-z]){2,}
add positive: c-.aa
get a solution: ((([abc0123s456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMN\-])([\w])*)\.)([a-z]){2,}
add positive: d-.aa
get a solution: ((([abcd0123s456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMN\-])([\w])*)\.)([a-z]){2,}
add positive: 0O.aa
get a solution: ((([abcd0123s456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNO\-])([\w])*)\.)([a-z]){2,}
add positive: e-.aa
get a solution: ((([abcde0123s456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNO\-])([\w])*)\.)([a-z]){2,}
add positive: 0P.aa
get a solution: ((([abcde0123s456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-])([\w])*)\.)([a-z]){2,}
add positive: f-.aa
get a solution: ((([abcdef0123s456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-])([\w])*)\.)([a-z]){2,}
add positive: 0Q.aa
get a solution: ((([abcdef0123s456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-Q])([\w])*)\.)([a-z]){2,}
add positive: g-.aa
get a solution: ((([abcdefg0123s456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-Q])([\w])*)\.)([a-z]){2,}
add positive: h-.aa
get a solution: ((([abcdefgh0123s456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-Q])([\w])*)\.)([a-z]){2,}
add positive: 0R.aa
get a solution: ((([abcdefgh0123s456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QR])([\w])*)\.)([a-z]){2,}
add positive: i-.aa
get a solution: ((([abcdefghi0123s456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QR])([\w])*)\.)([a-z]){2,}
add positive: j-.aa
get a solution: ((([abcdefghijs0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QR])([\w])*)\.)([a-z]){2,}
add positive: 0S.aa
get a solution: ((([abcdefghijs0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QRS])([\w])*)\.)([a-z]){2,}
add positive: k-.aa
get a solution: ((([abcdefghijks0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QRS])([\w])*)\.)([a-z]){2,}
add positive: 0T.aa
get a solution: ((([abcdefghijks0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QRST])([\w])*)\.)([a-z]){2,}
add positive: l-.aa
get a solution: ((([abcdefghijkls0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QRST])([\w])*)\.)([a-z]){2,}
add positive: 0U.aa
get a solution: ((([abcdefghijkls0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QRSTU])([\w])*)\.)([a-z]){2,}
add positive: m-.aa
get a solution: ((([abcdefghijklms0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QRSTU])([\w])*)\.)([a-z]){2,}
add positive: n-.aa
get a solution: ((([abcdefghijklmns0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QRSTU])([\w])*)\.)([a-z]){2,}
add positive: 0V.aa
get a solution: ((([abcdefghijklmns0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QRSTUV])([\w])*)\.)([a-z]){2,}
add positive: 0W.aa
get a solution: ((([abcdefghijklmns0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QRSTUVW])([\w])*)\.)([a-z]){2,}
add positive: 0X.aa
get a solution: ((([abcdefghijklmns0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWX])([\w])*)\.)([a-z]){2,}
add positive: o-.aa
get a solution: ((([abcdefghijklmnos0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWX])([\w])*)\.)([a-z]){2,}
add positive: 0Y.aa
get a solution: ((([abcdefghijklmnos0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXY])([\w])*)\.)([a-z]){2,}
add positive: p-.aa
get a solution: ((([abcdefghijklmnops0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXY])([\w])*)\.)([a-z]){2,}
add positive: q-.aa
get a solution: ((([abcdefghijklmnopqs0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXY])([\w])*)\.)([a-z]){2,}
add positive: 0Z.aa
get a solution: ((([abcdefghijklmnopqs0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ])([\w])*)\.)([a-z]){2,}
add positive: r-.aa
get a solution: ((([abcdefghijklmnopqrs0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ])([\w])*)\.)([a-z]){2,}
add positive: 0_.aa
get a solution: ((([abcdefghijklmnopqrs0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0a.aa
get a solution: ((([abcdefghijklmnopqrs0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][a01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0b.aa
get a solution: ((([abcdefghijklmnopqrs0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][ab01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: t-.aa
get a solution: ((([abcdefghijklmnopqrst0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][ab01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0c.aa
get a solution: ((([abcdefghijklmnopqrst0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abc01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: u-.aa
get a solution: ((([abcdefghijklmnopqrstu0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abc01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: v-.aa
get a solution: ((([abcdefghijklmnopqrstuv0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abc01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: w-.aa
get a solution: ((([abcdefghijklmnopqrstuvw0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abc01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: x-.aa
get a solution: ((([abcdefghijklmnopqrstuvwx0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abc01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0d.aa
get a solution: ((([abcdefghijklmnopqrstuvwx0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcd01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: y-.aa
get a solution: ((([abcdefghijklmnopqrstuvwxy0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcd01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0e.aa
get a solution: ((([abcdefghijklmnopqrstuvwxy0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcde01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0f.aa
get a solution: ((([abcdefghijklmnopqrstuvwxy0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdef01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0g.aa
get a solution: ((([abcdefghijklmnopqrstuvwxy0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefg01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: z-.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefg01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0h.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefgh01234t56789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0i.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefghit0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0j.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefghijt0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0k.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefghijkt0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0l.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefghijklt0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0m.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefghijklmt0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0n.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefghijklmnt0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0o.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefghijklmnot0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0p.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefghijklmnopt0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0q.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefghijklmnopqt0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0r.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefghijklmnopqrt0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0s.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefghijklmnopqrst0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0u.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefghijklmnopqrstu0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0v.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefghijklmnopqrstuv0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0w.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefghijklmnopqrstuvw0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0x.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefghijklmnopqrstuvwx0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0y.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefghijklmnopqrstuvwxy0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0z.aa
get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([\w])*)\.)([a-z]){2,}
add positive: 0--.aa
  13     |  2     (((■|■)([\w])*)\.)([a-z]){2,}fail solve
  14     |  2     (((■){■}([\w])*)\.)([a-z]){2,}get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_]){2,13}([\w])*)\.)([a-z]){2,}
add positive: 0-.aa.aa
add negative: --.aa
  unsatisfiable SAT formula       
  15     |  2     (( (■){■})\.)([a-z]){2,}fail dotstar or empty
  16     |  2     (( (■)*)■)([a-z]){2,}   fail dotstar or empty
  17     |  2     (( (■)*)\.)(■){2,}      fail dotstar or empty
  18     |  2     (( (■)*)\.)([a-z]){■}   fail dotstar or empty
  19     |  2     (( ([\w]){■})■)([a-z]){2,}fail dotstar or empty
  20     |  2     (( ([\w]){■})\.)(■){2,} fail dotstar or empty
  21     |  2     (( ([\w]){■})\.)([a-z]){■}fail dotstar or empty
  22     |  2     (( ■)\.)([a-z]){2,}     fail dotstar or empty
  23     |  2     (( ([\w])*)■)(■){2,}    fail dotstar or empty
  24     |  2     (( ([\w])*)■)([a-z]){■} fail dotstar or empty
  25     |  2     (( ([\w])*)\.)(■){■}    fail dotstar or empty
  26     |  2     (( ([\w])*)\.)■         fail dotstar or empty
  27     |  3     ((■(■)*)■)([a-z]){2,}     unsatisfiable SAT formula       
  28     |  3     ((■(■)*)\.)(■){2,}        unsatisfiable SAT formula       
  29     |  3     ((■(■)*)\.)([a-z]){■}     unsatisfiable SAT formula       
  30     |  3     (((■■)(■)*)\.)([a-z]){2,}get a solution: ((([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_][abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOP\-QRSTUVWXYZ_])([acefklo\-r\.vw])*)\.)([a-z]){2,}
add positive: 0-0.aa
add negative: 0-..aa
  unsatisfiable SAT formula       
  31     |  3     (((■|■)(■)*)\.)([a-z]){2,}fail solve
  32     |  3     (((■){■}(■)*)\.)([a-z]){2,}  unsatisfiable SAT formula       
  33     |  3     ((■(■■)*)\.)([a-z]){2,} fail dot
  34     |  3     ((■((■|■))*)\.)([a-z]){2,}fail solve
  35     |  3     ((■((■){■})*)\.)([a-z]){2,}  unsatisfiable SAT formula       
  36     |  3     ((■([\w]){■})■)([a-z]){2,}fail dot
  37     |  3     ((■([\w]){■})\.)(■){2,} fail dot
  38     |  3     ((■([\w]){■})\.)([a-z]){■}fail dot
  39     |  3     ((■■)\.)([a-z]){2,}     fail dot
  40     |  3     (((■■)([\w]){■})\.)([a-z]){2,}fail dot
  41     |  3     (((■|■)([\w]){■})\.)([a-z]){2,}fail dot
  42     |  3     (((■){■}([\w]){■})\.)([a-z]){2,}  unsatisfiable SAT formula       
  43     |  3     ((■([\w])*)■)(■){2,}      unsatisfiable SAT formula       
  44     |  3     ((■([\w])*)■)([a-z]){■} fail dot
  45     |  3     (((■■)([\w])*)■)([a-z]){2,}fail dot
  46     |  3     (((■|■)([\w])*)■)([a-z]){2,}fail dot
  47     |  3     (((■){■}([\w])*)■)([a-z]){2,}  unsatisfiable SAT formula       
  48     |  3     ((■([\w])*)(■■))([a-z]){2,}fail dot
  49     |  3     ((■([\w])*)(■|■))([a-z]){2,}fail dot
  50     |  3     ((■([\w])*)(■){■})([a-z]){2,}  unsatisfiable SAT formula       
  51     |  3     ((■([\w])*)\.)(■){■}    fail dot
  52     |  3     ((■([\w])*)\.)■         fail dot
  53     |  3     (((■■)([\w])*)\.)(■){2,}fail dot
  54     |  3     (((■|■)([\w])*)\.)(■){2,}fail dot
  55     |  3     (((■){■}([\w])*)\.)(■){2,}  unsatisfiable SAT formula       
  56     |  3     ((■([\w])*)\.)(■■){2,}  fail dot
  57     |  3     ((■([\w])*)\.)((■|■)){2,}fail dot
  58     |  3     ((■([\w])*)\.)((■){■}){2,}fail dot
  59     |  3     (((■■)([\w])*)\.)([a-z]){■}fail dot
  60     |  3     (((■|■)([\w])*)\.)([a-z]){■}fail dot
  61     |  3     (((■){■}([\w])*)\.)([a-z]){■}  unsatisfiable SAT formula       
  62     |  3     (((■)([\w])*)\.)([a-z]){2,}fail dot
  63     |  3     ((((■■)■)([\w])*)\.)([a-z]){2,}fail dot
  64     |  3     ((((■|■)■)([\w])*)\.)([a-z]){2,}fail solve
  65     |  3     ((((■){■}■)([\w])*)\.)([a-z]){2,}  unsatisfiable SAT formula       
  66     |  3     (((■■|■)([\w])*)\.)([a-z]){2,}fail dot
  67     |  3     ((((■|■)|■)([\w])*)\.)([a-z]){2,}fail solve
  68     |  3     ((((■){■}|■)([\w])*)\.)([a-z]){2,}  unsatisfiable SAT formula       
  69     |  3     (((■■){■}([\w])*)\.)([a-z]){2,}fail dot
  70     |  3     ((((■|■)){■}([\w])*)\.)([a-z]){2,}fail solve
  71     |  3     ((((■){■}){■}([\w])*)\.)([a-z]){2,}
10.04491901397705
timeout