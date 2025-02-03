Add a git tag to mark a release

### **Create an Annotated Tag** (Recommended)

```sh
# annotated tags include metadata such as the tagger's name, email, and a message.
git tag -a v1.0.0 -m "Release version 1.0.0"
git push origin v1.0.0
```

### **Create a Lightweight Tag** (Optional)

```sh
git tag v1.0.0                      # a simple tag without metadata
git push origin v1.0.0              # gpo v1.0.0    (aliased)
```

### **Tag a Specific Commit**

```sh
git tag v1.2.0 eeecfc2              # (lightweight)
git tag -a v1.2.0 <commit-hash>     # (annotated)
git push origin v1.2.0
```

```sh
git tag                             # list tags
git show v1.0.0                     # see detailed information about a specific tag
```

### **Delete a Tag (if needed)**

```sh
git tag -d v1.0.0                   # delete a local tag
git push --delete origin v1.0.0     # delete a remote tag
```
