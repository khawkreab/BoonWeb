<% 
 Integer statusCode = (Integer) request
                       .getAttribute("javax.servlet.error.status_code");

 response.sendRedirect(pageContext.getServletContext().getContextPath()
                       +"/error?statusCode="+statusCode ); 
%>
