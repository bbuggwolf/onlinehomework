  <%
    HttpSession session2 = request.getSession();
    if(session2.getAttribute("uid") == null){
    	out.print("<script>document.location = 'login.html';</script>");
    }else if(Integer.parseInt(String.valueOf(session2.getAttribute("role"))) == 2){
    	out.print("<script>document.location = 'studentHome.jsp';</script>");
    }
    %>