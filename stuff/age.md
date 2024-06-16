`brew install age`

`age -r $AGE_PUBLIC_KEY -o file.txt.age file.txt`

`age -d -i ~/.age/age-key.txt -o decrypted.txt file.txt.age`
