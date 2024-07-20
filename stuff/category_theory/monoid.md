#### example of a `monoid`
```
( + { ..., -1, 0, 1, ... })
```

#### `isomorphism`

a special kind of arrow, **f**, that can be in a Category:  
can send one object onto another, 1-to-1,  
which has the property of having an inverse, g.  
f • g is the *identity function*.  

An arrow `f: A -> B` is an isomorphism if there exists `g: B -> A` s.t.   
`g • f = idA` and `f • g = idB`  

An isomorphism on a directed graph preserves its structure and is called a `graph isomorphism`.

A `terminal object` has only 1 incoming arrow from every other object. 

---

1. In the category of sets, there are infinitely many sets that can serve as terminal objects -  
any singleton set {x} where x can be any element. Each of these singleton sets is a valid terminal object.

2. However, in category theory, we consider all of these terminal objects to be essentially the same,    
because all terminal objects are isomorphic to each other.  
In the category of sets, this means there's a bijection between any two singleton sets.

3. So while there are infinitely many singleton sets in the natural numbers (like {0}, {1}, {2}, etc.),  
from a categorical perspective, there is just one terminal object, up to isomorphism.

4. The notation {•} is used to represent the abstract notion of the terminal object,  
without specifying which particular singleton set we're using.

In the category of sets (including the natural numbers as objects):

- There are infinitely many sets that can serve as terminal objects.
- However, categorically speaking, there is just one terminal object, up to isomorphism.
- {•} represents this abstract, unique-up-to-isomorphism terminal object.

This illustrates an important principle in category theory:   
we care more about the relationships between objects (morphisms) than the specific details of the objects themselves.  
All terminal objects behave the same way with respect to other objects in the category,
so we treat them as essentially the same thing.

---
