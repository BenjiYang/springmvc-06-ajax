# AJAX
## 项目配置
* Step 1: New project as maven project
* Step 2: Right click project - Add framework support, check "Java EE - Web Application"
* Step 3: Config web.xml (dispatch servlet)
* Step 4: Config applicationContext.xml
* Step 5: Create controller folder
* Step 6: Create AjaxController.java to simple restful service code
* Step 7: Edit Configuration (tomcat runner) -- Deployment(deployed at server startup with selected current project)
* Step 8: Select project and [config Tomcat lib with dependencies](https://blog.csdn.net/qq_41132565/article/details/111415274)
* Step 9: Run tomcat server.
* Step 10: Visit test page: http://localhost:8080/springmvc_06_ajax_war_exploded/t1 and returns "hello"

### index.jsp
* Step 11: Import jquery library in statics/js folder, add statics resource filter config
* Step 12: index.jsp - 使用jquery到库，编写a()方法，调用AJAX到post方法，指向controller的方法，若方法不存在则返回404。
（UI -> jquery -> ajax -> controller -> ajax回调函数callback(此时控制权在前端UI，而不在于后端了)： 前后端分离条件）

### test2.jsp
* Step 13: 使用UI到html壳子，然后用javascript读取JSON内容给html做内容填充拼接（引入jackson）
* Step 14: 部署后访问测试：http://localhost:8080/springmvc_06_ajax_war_exploded/test2.jsp

### login.jsp
* Step 15: 写login UI和AJAX对应的controller，
* Step 16: 直接传参数测试API，访问：http://localhost:8080/springmvc_06_ajax_war_exploded/login?username=admin&password=123
* Step 17: UI 测试：http://localhost:8080/springmvc_06_ajax_war_exploded/login.jsp USR/PWD: admin/123456




## 总结: ！！！AJAX 把主动权交给前端！！！

### 作为后端人员，前端知识学习基本
HTML + CSS(略懂) + javascript(超级熟练)

### javascript
- 函数：闭包()()
- DOM
    - id, name, tag
    - create, remove
- BOM
    - window
    - document
    
### ES6（javascript升级更新）
- import/ require