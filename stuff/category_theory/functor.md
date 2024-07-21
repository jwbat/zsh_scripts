As a function can be used to compare 2 sets,  
a `functor` can be used to compare 2 categories.  

A `Category` consists of objects & arrows.  
A `Functor` consists of two functions:  
1.  one that sends the objects from one category to another.   
2.  one that sends the arrows from one category to another. 

A `Functor`, `F`, from Category C to D is s.t. for each object  
A of C, we have

```
    F(A) is in D.
```

For each arrow `f: A -> B` in C, we have

```
    F(f): F(A) -> F(B)
```

preserving composability, so that, the composition of the image of arrows  
is the image of the composition of arrows.  A Functor preserves identity arrows.
