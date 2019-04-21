<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- Bootstrap -->
   <!-- <link href="css/bootstrap.min.css" rel="stylesheet" media="screen"> -->
<title>Electronic Health Record</title>
<style>
body{
   text-align: center;
   }
   div{
   margin: 100px auto;
   padding:25px;
    height:60vh;
    width: 40vw;
    box-shadow:1px 1px 8px rgba(0,0,0,0.2) ;
}
   h1{
   margin-top: 40px;
   font-size: 50px;
   font-weight: lighter;
   color:#19a0cc;
   }
   h4{
   font-size: 20px;
   font-weight: lighter;
   color:#19a0cc;
   }
   
   button{
   border:none;
   width: 25%;
   padding: 25px;
   color: white;
   background-color: #19a0cc;
   margin: 60px 40px;
   border-radius: 10px;
   font-weight: bold;
   
   }
   button:hover{
  box-shadow: 0 3px 10px 1px rgba(0,0,0,0.2);
  cursor:pointer;
   }
</style>
</head>
<body>


<div>
        <h1>WELCOME</h1>
        <h4>To Electronic Health Record Application!</h4>
        <button onclick="location.href='patient/add'">Add Patient</button>
        <button onclick="location.href='patient/add'">View Patients</button>  
</div>
</body>
</html>