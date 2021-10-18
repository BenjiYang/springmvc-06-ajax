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
