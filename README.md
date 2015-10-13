# Pair Organiser
For finding all possible combinations of pairs amongst a group

To use please edit the pair_organiser.rb file on the root (to include your set of individuals for pairing) and run like so:

```
$ ruby pair_organiser.rb 
[[["Pablo", "Dan"], ["Andrew", "Tom"], ["Rob", "Jay"], ["Norm", "Yev"]],
 [["Pablo", "Andrew"], ["Dan", "Tom"], ["Rob", "Norm"], ["Jay", "Yev"]],
 [["Pablo", "Tom"], ["Dan", "Andrew"], ["Rob", "Yev"], ["Jay", "Norm"]],
 [["Pablo", "Rob"], ["Dan", "Jay"], ["Andrew", "Norm"], ["Tom", "Yev"]],
 [["Pablo", "Jay"], ["Dan", "Rob"], ["Andrew", "Yev"], ["Tom", "Norm"]],
 [["Pablo", "Norm"], ["Dan", "Yev"], ["Andrew", "Rob"], ["Tom", "Jay"]],
 [["Pablo", "Yev"], ["Dan", "Norm"], ["Andrew", "Jay"], ["Tom", "Rob"]]]
 ```

 NOTE:  This algorithm employed uses a pseudo-random search and is not guaranteed to terminate.  I have successfully run the algorithm for up to 34 individuals, but it took six non-terminating runs before the correct solution could be generated.  If the algorithm gets stuck on a large pairing set do ctrl-C and restart a few times to see if another pseudo-random path will generate a solution.



Some other related bits of code:

* https://gist.github.com/tansaku/1c9a6537ee9487b23a68
* https://github.com/chn-challenger/random_pairs
