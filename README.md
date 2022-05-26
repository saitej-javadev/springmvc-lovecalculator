# springmvc-lovecalculator
@Model attribute,spring form tags

# For Bean Validation

1.add validation api and hibernate validator in pom.xml
2. and &lt;%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %&gt;
3add @Not blank on fields of dto class and add Binding result in controller method where the data passes 
4. add modelattribute= 'dto object' in jsp page 
5. add form errors tag to display errors right beside the text box
6. Make sure controller method has @ModelAttribute and dto object name and in jsp , in form modelAttribute object are same
