# Pair Organiser
For finding all possible combinations of pairs amongst a group

You can use the system from irb like so (to include your set of individuals for pairing) and run like so:

```
→ irb
2.2.3 :001 > p = Pairer.new %w{Pablo Dan Andrew Tom Rob Jay Norm Yev}
 => #<Pairer:0x007fee1b11b280 @list=["Pablo", "Dan", "Andrew", "Tom", "Rob", "Jay", "Norm", "Yev"], @combos=[["Pablo", "Dan"], ["Pablo", "Andrew"], ["Pablo", "Tom"], ["Pablo", "Rob"], ["Pablo", "Jay"], ["Pablo", "Norm"], ["Pablo", "Yev"], ["Dan", "Andrew"], ["Dan", "Tom"], ["Dan", "Rob"], ["Dan", "Jay"], ["Dan", "Norm"], ["Dan", "Yev"], ["Andrew", "Tom"], ["Andrew", "Rob"], ["Andrew", "Jay"], ["Andrew", "Norm"], ["Andrew", "Yev"], ["Tom", "Rob"], ["Tom", "Jay"], ["Tom", "Norm"], ["Tom", "Yev"], ["Rob", "Jay"], ["Rob", "Norm"], ["Rob", "Yev"], ["Jay", "Norm"], ["Jay", "Yev"], ["Norm", "Yev"]], @number_pairs=4> 
2.2.3 :006 > require 'pp'
 => true 
2.2.3 :007 > pp p.run
[[["Pablo", "Dan"], ["Yev", "Andrew"], ["Norm", "Tom"], ["Jay", "Rob"]],
 [["Pablo", "Andrew"], ["Dan", "Tom"], ["Yev", "Rob"], ["Norm", "Jay"]],
 [["Pablo", "Tom"], ["Andrew", "Rob"], ["Dan", "Jay"], ["Yev", "Norm"]],
 [["Pablo", "Rob"], ["Tom", "Jay"], ["Andrew", "Norm"], ["Dan", "Yev"]],
 [["Pablo", "Jay"], ["Rob", "Norm"], ["Tom", "Yev"], ["Andrew", "Dan"]],
 [["Pablo", "Norm"], ["Jay", "Yev"], ["Rob", "Dan"], ["Tom", "Andrew"]],
 [["Pablo", "Yev"], ["Norm", "Dan"], ["Jay", "Andrew"], ["Rob", "Tom"]]]
 ```

The running time of this operation should be O(n²), where n is the length of the array.

Question on math StackExchange related to the above issue:

* http://math.stackexchange.com/questions/1477767/efficiently-partition-a-set-into-all-possible-unique-pair-combinations


Some other related bits of code:

* https://gist.github.com/tansaku/1c9a6537ee9487b23a68
* https://github.com/chn-challenger/random_pairs
