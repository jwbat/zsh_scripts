install
```zsh
brew install age
```
___


generate key pair
```zsh
age-keygen -o age-key.txt
```
___


encrypt `file.txt`
```zsh
age -r $AGE_PUBLIC_KEY -o file.txt.age file.txt
```
___


decrypt `file.txt.age` using private key
```zsh
age -d -i ~/.age/age-key.txt -o decrypted.txt file.txt.age
