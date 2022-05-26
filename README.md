# springmvc-lovecalculator
@Model attribute,spring form tags

# For Bean Validation

**1.Add validation api and hibernate validator in pom.xml**
`	<dependency>
			<groupId>javax.validation</groupId>
			<artifactId>validation-api</artifactId>
			<version>2.0.1.Final</version>
		</dependency>
		<dependency>
			<groupId>org.hibernate</groupId>
			<artifactId>hibernate-validator</artifactId>
			<version>6.1.0.Final</version>
		</dependency>`
		
		
2. **Add** <code> &lt;%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %&gt;</code> **in jsp page**
**to work with spring forms**



**3 Add @NotBlank on fields of dto class and add Binding result in controller method where the data passes** 


**Dto class:**
<code>
    @NotBlank(message = "* your name cannot be blank")
    @Size(min=3, max = 10,message = "* Your name should be in between 3 and 15 characters")
    private String yourName ;
    private String crushName ;
    @AssertTrue(message = "* Agree to move ahead!!")
    private boolean termAndCondition; </code>
    
    
 **Controller method:**   
 <code>
  @RequestMapping("/registration-success")
     public String registrationSuccessPage(@ModelAttribute @Valid UserRegistrationDto userRegistrationDto , BindingResult result){
         if(result.hasErrors()){
             System.out.println("In errors block");
             return "user-registration-page";
         }
         return "user-registration-success";
     }
 </code>
 
 
**4. if binding result has errors redirect to your desired page as above.**


**5. add modelattribute= 'dto object' in jsp page** 
`  <form:form action="registration-success" class="form-horizontal" role="form" modelAttribute="userRegistrationDto">


`
**6. add form errors tag to display errors right beside the text box**
  `<label for="termAndCondition">Am agreeing for the terms and conditions</label>
            <form:errors path="termAndCondition" cssStyle="color: red"/>`
	    
	    
**7. Make sure controller method has @ModelAttribute and dto object name and in jsp , in form modelAttribute object are same**
  ` @RequestMapping("/registration-success")
       public String registrationSuccessPage(@ModelAttribute @Valid UserRegistrationDto userRegistrationDto , BindingResult result){
           if(result.hasErrors()){`
  
`  <form:form action="registration-success" class="form-horizontal" role="form" modelAttribute="userRegistrationDto">
`
 
