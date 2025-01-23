## merge latest from A into B 

Say we have branch B which branched from branch A.  
A has since made commits, and we want to merge those changes on A back into B.  

```sh
A: ---A1---A2---A3
         \
B:        B1---B2


A: ---A1---A2---A3
         \         \
B:        B1---B2---M
```

```sh
git checkout B
git fetch
git merge A
<resolve conflicts>
git add .
git commit -m 'msg'
```
