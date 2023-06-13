<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" method="post">
        <div class="container">
            <div class="title">Registration</div>
            <div class="content">
                <div class="user-details">
                    <div class="input-box">
                        <span class="details">Full Name</span>
                        <asp:TextBox ID="txtfullname" name="fname" runat="server" placeholder=" your name...." required=""></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <span class="details">Username</span>
                        <asp:TextBox ID="txtusername"  name="uname" runat="server" placeholder="your username....." required=""></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <span class="details">Email</span>
                        <asp:TextBox ID="txtemail"  name="email" runat="server" placeholder="your emailid..." required=""></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <span class="details">Phone Number</span>
                        <asp:TextBox ID="txtphonenumber" name="phonenumber" runat="server" placeholder="your phone number.." required=""></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <span class="details">Address</span>
                        <asp:TextBox ID="txtaddress"  name="address" runat="server" placeholder="your address..." required=""></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <span class="details">Password</span>
                        <asp:TextBox ID="txtpassword"  name="password" runat="server" placeholder="your password..." required="" TextMode="Password"></asp:TextBox>
                    </div>

                    <div class="input-box">
                        <span class="details">Confirm Password</span>
                        <asp:TextBox ID="txtpasswordconfirm"  name="confirmpassword" runat="server" placeholder="Please re-enter your password" required="" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="gender-details">
                    <asp:RadioButton ID="rbtnmale" runat="server" GroupName="gender" Checked="true"/>
                    <asp:RadioButton ID="rbtnfemale" runat="server" GroupName="gender" />
                    <asp:RadioButton ID="rbtnnotprefer" runat="server" GroupName="gender" />

                    <span class="gender-title">Gender</span>
                    <div class="category">
                        <label for="rbtnmale">
                            <span class="dot one"></span>
                            <span class="gender">Male</span>
                        </label>
                        <label for="rbtnfemale">
                            <span class="dot two"></span>
                            <span class="gender">Female</span>
                        </label>
                        <label for="rbtnnotprefer">
                            <span class="dot three"></span>
                            <span class="gender">Prefer not to say</span>
                        </label>
                    </div>
                </div>
                <div class="button">
                    <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" OnClick="btnsubmit_Click" />
                </div>
                <div class="msg">
                    <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
        </div>
    </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js" integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="Js/UserValidate.js" rel="text/javascript"></script>
</body>
</html>


