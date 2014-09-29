### Swift Info ###

To setup CheckMate

1. Drop framework into project
2. Create new objective-c file
3. Delete the new m file - not necessary but file is not needed
4. In h file that was created import CheckMate:
```
#import <CheckMate/CheckMate.h>
```
5. Add framework call in didFinishLaunchingWithOptions
```
CheckMate.initializeFramework("YOUR API KEY")
```    
6. Swifted up and ready to code!