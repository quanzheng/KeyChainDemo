# KeyChainDemo
A demo about how to use Keychain to save username and password
将用户名和密码保存在keychain中主要使用了工程中的KeyChain这个类。在使用这个类时，首先要把Security.framework引入工程中。�由于钥匙串操作
需要在mrc模式下运行，所以如果工程是arc的话，按照如下步骤操作：
         *选中工程->TARGETS->相应的target然后选中右侧的“Build Phases”，向下就找到“Compile Sources”了。然后在相应的文件后面添加:-fno-objc-arc参数
