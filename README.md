# KeyChainDemo
A demo about how to use Keychain to save username and password
将用户名和密码保存在keychain中主要使用了工程中的KeyChain这个类。
在使用这个类时，首先要把Security.framework引入工程中。由于钥匙串操作需要在mrc模式下运行，所以如果工程是arc的话，按照如下步骤操作：
选中工程->TARGETS->相应的target然后选中右侧的“Build Phases”，向下就找到“CompileSources”。然后在相应的文件后面添加:-fno-objc-arc参数

KeyChain提供了三个类方法
// save username and password to keychain
+ (void)save:(NSString *)service data:(id)data;

// take out username and passwore from keychain
+ (id)load:(NSString *)service;

// delete username and password from keychain
+ (void)delete:(NSString *)service;

在对keychain操作时，分别选用对应的方法
具体操作请参见demo
