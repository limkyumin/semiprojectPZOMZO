<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
    
    



<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>로그인</title>
    
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
    
    
    <style>
        a {
            color: #333;
            text-decoration: none;
        }
        input {
            -webkit-writing-mode: horizontal-tb !important;
            text-rendering: auto;
            color: initial;
            display:none;
            
            
            
            
            
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    -webkit-appearance: textfield;
    background-color: white;
    -webkit-rtl-ordering: logical;
    cursor: text;
    margin: 0em;
    font: 400 13.3333px Arial;
    padding: 1px 0px;
    border-width: 2px;
    border-style: inset;
    border-color: initial;
    border-image: initial;
}
.inner_login {
    position: absolute;
    left: 50%;
    top: 50%;
    margin: -145px 0 0 -160px;
}
.login_tistory{
    position: relative;
    width: 320px;
    margin: 0 auto;
}
.screen_out {
    position: absolute;
    width: 0;
    height: 0;
    overflow: hidden;
    line-height: 0;
    text-indent: -9999px;    
}
body, button, input, select, td, textarea, th {
    font-size: 13px;
    line-height: 1.5;
    -webkit-font-smoothing: antialiased;
}    
fieldset, img {
    border: 0;
}
.login_tistory .box_login {
    margin: 35px 0 0;
    border: 1px solid #ddd;
    border-radius: 3px;
    background-color: #fff;
    box-sizing: border-box;
}
.login_tistory .inp_text {
    position: relative;
    width: 100%;
    margin: 0;
    padding: 18px 19px 19px;
    box-sizing: border-box;
}
.login_tistory .inp_text+.inp_text {
    border-top: 1px solid #ddd;
}
.inp_text input {
    display: block;
    width: 100%;
    height: 100%;
    font-size: 13px;
    color: #000;
    border: none;
    outline: 0;
    -webkit-appearance: none;
    background-color: transparent;
}
.btn_login {
    margin: 20px 0 0;
    width: 100%;
    height: 48px;
    border-radius: 3px;
    font-size: 16px;
    color: #fff;
    background-color: brown;
    border: none;
}
.btn_login:hover{background-color: rgb(222, 102, 102);}
.login_append {
    overflow: hidden;
    padding: 15px 0 0;
}
.inp_chk {
    display: inline-block;
    position: relative;
    margin-bottom: -1px;
}
.login_append .inp_chk {
    float: left;
}
.inp_chk .inp_radio {
    position: absolute;
    z-index: -1;
    top: 0;
    left: 0;
    width: 18px;
    height: 18px;
    border: 0;
}
.inp_chk .lab_g {
    display: inline-block;
    margin-right: 19px;
    color: #909090;
    font-size: 13px;
    line-height: 19px;
    vertical-align: top;
}
.inp_chk .ico_check {
    display: inline-block;
    width: 18px;
    height: 18px;
    margin: 1px 4px 0 0;
    background-position: -60px 0;
    color: #333;
}
.inp_chk .txt_lab {
    vertical-align: top;
}
.login_append .txt_find {
    float: right;
    color: #777;
}



.join{
    text-align: right;
}
.join>a{
    color: brown;
}

.link_find{ 
	font-display: none;
	color:black;
	font-size:13px;
	text-decoration:none;
}

</style>
</head>
<body>


	<!-- header.jsp include -->
    <%@ include file="../common/header.jsp" %>


<div class="inner_login">
    <div class="login_tistory">
     <%if(loginMember==null){ %>
        
        <form method="post" id="authForm" action="<%=contextPath%>/login.mem">
            <input type="hidden" name="redirectUrl" value="https://blogpack.tistory.com/manage">
            <fieldset>
                <legend class="screen_out">로그인</legend>
                <div class="box_login">
                    <div class="inp_text">
                        <label for="loginId" class="screen_out">아이디</label>
                        <input type="text" id="userId" name="userId" placeholder="ID" required>
                    </div>
                    <div class="inp_text">
                        <label for="loginPw" class="screen_out">비밀번호</label>
                        <input type="password" id="userPw" name="userPw" placeholder="Password" required>
                    </div>
                </div>
                <button type="submit" class="btn_login" >로그인</button>
                <div class="login_append">
                
                <!-- 
                <div class="inp_chk"> 
                    <input type="checkbox" id="keepLogin" class="inp_radio"  name="keepLogin">
                <label for="keepLogin" class="lab_g">
                    <span class="img_top ico_check"></span>
                    <span class="txt_lab">로그인 상태 유지</span>
                </label>
                </div>
                 -->
                 
                <span class="txt_find">
                    <a href="<%=contextPath %>/views/member/findId.jsp" class="link_find">아이디</a>
                    / 
                    <a href="<%=contextPath %>/views/member/findPw.jsp" class="link_find">비밀번호 찾기</a>
                </span>

                <br>
                <div class="join">
                    <a href="<%=contextPath %>/views/member/beJoin.jsp" class="link_find">회원가입</a>
                </div>

            </div>
        </fieldset>
        </form>
        
    </div>

        <%} %>


    <br><br><br><br><br>
    <!-- footer.jsp include -->
    <%@ include file="../common/footer.jsp" %>



</div>



	
	
	



</body>
</html>