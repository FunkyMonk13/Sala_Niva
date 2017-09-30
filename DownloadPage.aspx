<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DownloadPage.aspx.cs" Inherits="DownloadPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Download</title>
    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

    <!-- Theme CSS -->
    <link href="css/grayscale.min.css" rel="stylesheet">
    <link rel="icon" href="../img/faicon.jpg">
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <!-- Navigation -->
            <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                            Menu <i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand page-scroll" href="index.html">
                            <span class="light">Αρχικη</span>
                        </a>
                    </div>

                  
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container -->
            </nav>

            <section id="about" class="container content-section text-center">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <h2>Το ωραιοτερο ταξιδι</h2>

                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        Εισάγετε το email σας για να έρθει το Download Link
                    </div>
                    <div style="padding-top: 30px">
                        <asp:TextBox ID="MailTextBox" runat="server" CssClass="form-control mailtxt" Width="250px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="MailTextBox" Text="Παρακαλώ συμπληρώστε το e-mail σας"></asp:RequiredFieldValidator>
                    </div>
                    <div style="padding-top: 15px">
                        <asp:Button ID="SendButton" runat="server" Text="Αποστολη" CssClass="btn btn-default mailtxt" OnClick="SendButton_Click" />
                    </div>
                </div><div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <asp:Label ID="Label1" runat="server" Text="Το Link έχει αποσταλλεί στο email σας" Visible="false"></asp:Label>
                    </div>
                   
                </div>
            </section>






        </div>
    </form>
</body>
</html>
