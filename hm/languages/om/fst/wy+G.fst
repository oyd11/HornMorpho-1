# Handle cases where stem-final w or y is followed by different segments

-> start

# Ignore consonants; delete boundaries
start -> start       [!;L;:+]

# Worry about vowels in case they precede w
# Change vowel to o(o) before w>f+
start -> v>o         [o:a;o:e;o:i;o;o:u;oo:aa;oo:ee;oo:ii;oo;oo:uu]
# w changes to f
v>o -> v>o.w>f       [f:w]
# Delete the +
v>o.w>f -> v>o.w>f+  [:+]
# This happens only before t, n, and s suffixes
v>o.w>f+ -> start    [n;t;s]

# Now the vowel before y
start -> v>e         [ee:a;ee:e;ee:i;ee:o;ee:u;ee:aa;ee;ee:ii;oo;uu]
# y goes away
v>e -> v>e.y         [:y]
# Delete the +
v>e.y -> v>e.y+      [:+]
# t -> ss, n -> ny
v>e.y+ -> v>e.y+t    [s:t;s]
v>e.y+t -> start     [s:]
v>e.y+ -> start      [ny:n]

# Vowels in other situations
start -> v           [$]
# Any other following consonant
v -> start           [!-w,y;L]
# Followed by w or y, which can also be changed to ',h
# !! for generation: always use -' for both -w and -y
v -> vw|y            [':w;':y]
# Delete following +
vw|y -> vw|y+        [:+]
# ... and then a vowel
vw|y+ -> start       [$]
# vw|y not before +
vw|y -> start        [$]
# w or y after vowel in other cases
v -> wy              [w;y]
wy -> start          [$;!]

start ->
v ->
