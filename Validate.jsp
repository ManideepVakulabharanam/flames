<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<%
String name1 = request.getParameter("names1");
String name2 = request.getParameter("names2");
String flame = "flames";
String names1 = name1;
String names2 = name2;
for(int i = 0 ;i<name1.length();i++){
String s = ""+name1.charAt(i);
//System.out.println(s);
if(name2.contains(s)){
name2 =  name2.replaceFirst(s,"");
name1 =  name1.replace(s,"");
i--;
}
}
//System.out.println(name1+" "+name2);
int totalsize = name2.length()+name1.length();
//System.out.println(totalsize);
int temp = 0;
while(flame.length()!=1){
int count =0;
// System.out.println(temp);
while(count != totalsize){
String sr = null;
for(int i = temp;i<flame.length();i++){
sr = ""+flame.charAt(i);
count++;
if(count == totalsize){
    flame = flame.replace(sr,"");
    temp = i;
    break;
}
if(i == (flame.length()-1)){
    temp = 0;
}
}
}
if(temp > flame.length()-1){
temp = 0;
}
// System.out.println(flame);
//temp = 0;
}
String s = null;
if(flame.equals("f")){
	    s = names1+" "+names2+ " have a mutual affection and stands up for eachother. you are honest with your friend and Shares you happiness and sarrows.";
}
if(flame.equals("l")){
	    s = names1+" "+names2+ " This love is unconditional affection with no limits or conditions.";
}
if(flame.equals("a")){
	    s = names1+" "+names2+ " show love, liking, or compassion for eachother.";
}
if(flame.equals("m")){
	    s =  names1+" "+names2+ " may marry eachother.";
}
if(flame.equals("e")){
	    s = names1+" "+names2+ " be Careful eachother.";
	    }
if(flame.equals("s")){
	    s = names1+" "+names2+ " are in brotherhood or sister";
}

request.setAttribute("result", s);
RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
rd.include(request, response);
%>
<!--  <p id="result"><%= flame %></p> -->
 
</body>
<script>
  var res = document.getElementById("result").innerHTML;
  
</script>

</html>