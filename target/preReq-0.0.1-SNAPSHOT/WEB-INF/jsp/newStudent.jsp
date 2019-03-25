
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<c:import url="/WEB-INF/jsp/common/header.jsp" />


   
    
<section id="login-content"  class="centeredPanel">
<c:url value="/newStudent" var="newStudentUrl" />
<form:form action="${newStudentUrl}" method="POST" modelAttribute="Student">
        <div>
        	<label for="firstName">First Name</label>
        	<form:input path="firstName"  class="form-control"/>	<!-- name = identify variable in model backing form -->
        	<form:errors path="firstName"  cssClass="error"/>		<!-- put any error message here -->
        </div>
          <div>
        	<label for="lastName">Last Name</label>
        	<form:input  path="lastName"  class="form-control"/>	<!-- name = identify variable in model backing form -->
        	<form:errors path="lastName"  cssClass="error"/>		<!-- put any error message here -->
        		
        </div>
          <div>
        	<label for="email">Email</label>
        	<form:input  path="email"  class="form-control"/>	<!-- name = identify variable in model backing form -->
        	<form:errors path="email"  cssClass="error"/>		<!-- put any error message here -->
        </div>
        
         <div>
       		<label for="gender">Gender</label>
    		  <form:select path="gender" class= "form-control">
    			<option value= "M">Male</option>
				<option value= "F">Female</option>
				<option value= "O">Prefer not to specify</option>
		</form:select>
		</div>
         <div>
            <label for="desiredDegree">Desired Degree </label>
            <form:input  path="desiredDegree" />
            <form:errors path="desiredDegree" cssClass="error"/>            
        </div>
         <div>
        	<label for="greMath">GRE Math Score</label>
        	<form:input  path="greMath"  class="form-control"/>	<!-- name = identify variable in model backing form -->
        	<form:errors path="greMath"  cssClass="error"/>		<!-- put any error message here -->
        </div>
         <div>
        	<label for="greVerbal">GRE Verbal Score</label>
        	<form:input  path="greVerbal"  class="form-control"/>	<!-- name = identify variable in model backing form -->
        	<form:errors path="greVerbal"  cssClass="error"/>		<!-- put any error message here -->
        </div>
         <div>
        	<label for="greWriting">GRE Writing Score</label>
        	<form:input  path="greWriting"  class="form-control"/>	<!-- name = identify variable in model backing form -->
        	<form:errors path="greWriting"  cssClass="error"/>		<!-- put any error message here -->
        </div>
       
         <div>
            <input type="submit" value="Make a new Account"/>	
        </div>
</form:form>
</section>


<c:import url="/WEB-INF/jsp/common/footer.jsp" />
 
