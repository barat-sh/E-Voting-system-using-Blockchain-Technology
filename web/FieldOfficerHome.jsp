<%-- 
    Document   : FieldOfficerHome
    Created on : Sep 30, 2019, 2:53:43 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <title>E-Voting</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link rel="stylesheet" href="images/Techmania.css" type="text/css" />
    </head>
    <body>
        <div id="wrap">
            <div id="header">
                <h1 id="logo-text">E-Voting<span class="gray">&nbsp;using Block Chain</span></h1>
                <h2 id="slogan">E-Voting</h2>
                <div id="header-tabs">
                    <ul>
                        <li><a href="ViewFOInfo.jsp"><span>View My Nominee Info</span></a></li>
                        <li><a href="VoterInfo.jsp"><span>View Voter Info</span></a></li>
                        <li><a href="ViewSelectedVoters.jsp"><span>View Selected Voters</span></a></li>
                        <li><a href="logout.jsp"><span>Logout</span></a></li>
                    </ul>
                </div>
            </div>
            <div id="content-wrap">
                <div id="main"> <a name="TemplateInfo"></a>
                    <h1>E-Voting</h1>
                    <div style="text-indent: 100px;text-align: justify; line-height: 25px;">
                    Building an electronic voting system that satisfies the legal requirements of legislators has been a challenge for a long time. Distributed ledger technologies are an exciting technological advancement in the information technology world. Blockchain technologies offer an infinite range of applications benefiting from sharing economies. We will show how blockchain can be used to transfer votes between two peers. In our case, one peer is the voter and the other is the candidate who receives the vote. We will explain how blockchain can be employed in mass electoral voting procedures in a more secure way without needing a central authority body. 
                    
                    </div>
                    <div style="text-indent: 100px;text-align: justify; line-height: 25px;">
                        We will explain a voting system using blockchain that is more robust, tamperproof (immutable to voting changes either by the voter or by any other third parties) and cost effective. We have reviewed various blockchain technologies available today to use in our voting system. Also, we will elaborate on the architecture, design and design constraints and implementation implications of such a voting mechanism in our society. We aim to evaluate the application of blockchain as service to implement distributed electronic voting systems. Here we highlight some of the popular blockchain frameworks that offer blockchain as a service and associated electronic E-voting system which is based on blockchain that addresses all limitations  respectively, it also preserve participant’s anonymity while still being open to public.
                    </div>
                    <br><br><br>
                </div>
                <div id="sidebar" style="line-height: 35px">
                    <h1>Field Officer Links</h1>
                    <ul class="sidemenu">
                        <li><a href="ViewFOInfo.jsp">View FO Info</a></li>
                        <li><a href="VoterInfo.jsp">View Voter Info</a></li>
                        <li><a href="ViewSelectedVoters.jsp">View Selected Voters</a></li>
                        <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </div>
            </div>
            <div id="footer"> <span id="footer-left"> &copy; 2019 <strong>SR InfoTech</strong> | Design by: <strong><a href="http://www.styleshout.com/">AMS</a></strong> | Valid: <a href="http://validator.w3.org/check?uri=referer">XHTML</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> </span> <span id="footer-right"> <a href="#">Home</a> | <a href="#">About Us</a> | <a href="#">Contact Us</a> </span> </div>
        </div>
    </body>
</html>