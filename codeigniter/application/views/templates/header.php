<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
				<title>Welcome</title>
				<style>
					html, body {height: 100%;}
					*{margin: 0px;padding: 0;}
					
					.container{
					    width: 1000px;
					    margin-left: auto;
					    margin-right: auto;
					    clear: both;
					    }
					
					#header{
					    height: 40px;
					    background: #658CBF;
					    }
					
					#content{
					  padding: 10px;min-height:80%;
					  } 
					
					.logo{padding: 3px 0px;font-size: 25px;color: #ffffff;}
					  a{text-decoration: none;}
					
					input{
					padding:3px;
					color:#333333;
					border:1px solid #96A6C5;
					margin-top:2px;
					width:180px;
					font-size:11px;
					}
					
					input[type='radio']{
					    width:30px;
					    }
					
					#register_form input[type='submit']
					{
					    margin-left: 108px;
					}
					
					#register_form{
					    width: 400px;
					    float: left;
					}
					
					#register_form label{
					font-weight: bold;
					float: left;
					width: 108px; 
					}
					
					#login_form
					{   float: right;
					    position: relative;
					    margin-top: 8px !important;
					    }
					
					.error{
					    float:left;
					    border: 1px solid #FF607D;
					    padding: 10px;
					}
				</style>
        </head>
        <body>

                <h1><?php echo $title; ?></h1>