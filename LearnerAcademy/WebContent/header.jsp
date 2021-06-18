<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

body{
    /*background-image: url('images/pic4.jpg');
    background-repeat: no-repeat;*/
    background-size: cover;
    height:100%;
    
    text-align: left;
}

.topnav{
    margin: 0;
    margin-left: 0%;
    background-color: #1e212d;
}

.home{
    color:#fff;
    font-size: 15px;
    background-color:#BECA5C;
    border: black;
    border-radius: 10%;
    size: 200%;
    padding:10px 15px;
    text-align: center;
    box-shadow: 3px 9px black;
    outline: none;
    cursor: pointer;
    margin: 20px 30px;
} 
.home:hover{
    background-color:     #c84b31;
}

.home:active{
    background-color: #556052;
    box-shadow: 5px 5px #ff8e71;
    transform: translateY(3px);
}

.admin{
    color:#fff;
    font-size: 15px;
    background-color:#29bb89;
    border: black;
    border-radius: 4%;
    size: 200%;
    padding:10px 15px;
    text-align: center;
    box-shadow: 3px 9px black;
    outline: none;
    cursor: pointer;
    margin: 20px 30px;
} 
.admin:hover{
    background-color:     #BECA5C;
}

.admin:active{
    background-color: #e6dd3b;
    box-shadow: 5px 5px #666;
    transform: translateY(3px);
}


.class{
    color:#fff;
    font-size: 15px;
    background-color:#907fa4;
    border: black;
    border-radius: 4%;
    size: 200%;
    padding:10px 15px;
    text-align: center;
    box-shadow: 3px 9px black;
    outline: none;
    cursor: pointer;
    margin: 20px 30px;
} 
.class:hover{
    background-color:     #a58faa;
}

.class:active{
    background-color: #a6d6d6;
    box-shadow: 5px 5px #666;
    transform: translateY(3px);
}



.subj{
    color:#fff;
    font-size: 15px;
    background-color:#FF616D;
    border: black;
    border-radius: 10%;
    size: 200%;
    padding:10px 15px;
    text-align: center;
    box-shadow: 3px 9px black;
    outline: none;
    cursor: pointer;
    margin: 20px 30px;
} 
.subj:hover{
    background-color:     #F14668;
}

.subj:active{
    background-color: #556052;
    box-shadow: 5px 5px #ff8e71;
    transform: translateY(3px);
}




.teacher{
    color:#fff;
    font-size: 15px;
    background-color:#5F939A;
    border: black;
    border-radius: 10%;
    size: 200%;
    padding:10px 15px;
    text-align: center;
    box-shadow: 3px 9px black;
    outline: none;
    cursor: pointer;
    margin: 20px 30px;
} 
.teacher:hover{
    background-color:     #8AC4D0;
}

.teacher:active{
    background-color: #556052;
    box-shadow: 5px 5px #ff8e71;
    transform: translateY(3px);
}



.stud{
    color:#fff;
    font-size: 15px;
    background-color:#F5A962;
    border: black;
    border-radius: 10%;
    size: 200%;
    padding:10px 15px;
    text-align: center;
    box-shadow: 3px 9px black;
    outline: none;
    cursor: pointer;
    margin: 20px 30px;
} 
.stud:hover{
    background-color:     #FFD880;
}

.stud:active{
    background-color: #556052;
    box-shadow: 5px 5px #ff8e71;
    transform: translateY(3px);
}


.assign{
    color:#fff;
    font-size: 15px;
    background-color: #822659;
    border: black;
    border-radius: 10%;
    size: 200%;
    padding:10px 15px;
    text-align: center;
    box-shadow: 3px 9px black;
    outline: none;
    cursor: pointer;
    margin: 20px 30px;
} 
.assign:hover{
    background-color:     #E36BAE;
}

.assign:active{
    background-color: #556052;
    box-shadow: 5px 5px #ff8e71;
    transform: translateY(3px);
}




.rep{
    color:#fff;
    font-size: 15px;
    background-color:#A1CAE2;
    border: black;
    border-radius: 10%;
    size: 200%;
    padding:10px 15px;
    text-align: center;
    box-shadow: 3px 9px black;
    outline: none;
    cursor: pointer;
    margin: 20px 30px;
} 
.rep:hover{
    background-color:     #99BBAD;
}

.rep:active{
    background-color: #556052;
    box-shadow: 5px 5px #ff8e71;
    transform: translateY(3px);
}


.logoff{
    color:#fff;
    font-size: 15px;
    background-color:#e40017;
    border: black;
    border-radius: 10%;
    size: 200%;
    padding:10px 15px;
    text-align: center;
    box-shadow: 3px 9px black;
    outline: none;
    cursor: pointer;
    margin: 20px 30px;
} 
.logoff:hover{
    background-color:     #FF7171;
}

.logoff:active{
    background-color: #556052;
    box-shadow: 5px 5px #ff8e71;
    transform: translateY(3px);
}

</style>
</head>
<body>


<div class="topnav">
    <button class="home"><a href="dashboard.html"> Home </a></button>
    <button class="class">Show Classes</button>
    <button class="subj"> <a href=""> Show Subjects </a> </button>
    <button class="teacher">Show Teachers</button>
 	<button class="stud">Show Students</button><br>
 	<button class="assign">Assign Class/Subjects/Teachers</button>
    <button class="rep"> <a href=""> View ReportCard </a> </button>
    
    
    <button class="admin"> <a href="AdminServlet"> Admin List </a> </button>
    <button class="logoff"><a href = "LogoutServlet" >Logout </a></button>
    
    </div>

</body>
</html>