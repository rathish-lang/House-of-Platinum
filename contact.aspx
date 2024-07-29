<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="PlatinumShop.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">  
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>House of Platinum</title>

  
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

  
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  
  <link href="https://fonts.googleapis.com/css?family=Baloo+Chettan|Poppins:400,600,700&display=swap" rel="stylesheet">
  
  <link href="css/style.css" rel="stylesheet" />
  
  <link href="css/responsive.css" rel="stylesheet" />
</head>

<body class="sub_page">

  <div class="hero_area">
    <!-- header section starts -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.html">
            <img src="images/logo.png" alt="">
            <span>
              House of Platinum
            </span>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
              <ul class="navbar-nav  ">
                <li class="nav-item active">
                  <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="about.html"> About</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="jewellery.html">Jewellery </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="contact.html">Contact us</a>
                </li>
              </ul>

            </div>
            <div class="quote_btn-container ">
              <a href="">
                <img src="images/cart.png" alt="">
                <div class="cart_number">
                  0
                </div>
              </a>
              <form class="form-inline">
                <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
              </form>
            </div>
          </div>
        </nav>
      </div>
    </header>
  </div>

  <!-- contact section -->

  <section class="contact_section layout_padding">
    <div class="design-box">
      <img src="images/design-2.png" alt="">
    </div>
    <div class="container ">
      <div class="">
        <h2 class="">
          Contact Us
        </h2>
      </div>

    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <form method="post" runat="server" >
            <div>
                <asp:TextBox ID="txt_name" runat="server" placeholder="Name" ></asp:TextBox>         
            </div>
            <div>
              <asp:TextBox ID="txt_email" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfv_email" runat="server" ControlToValidate="txt_email" ErrorMessage="Email is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="rev_email" runat="server" ControlToValidate="txt_email" ErrorMessage="Invalid email address." ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>

            </div>
            <div>
             <asp:TextBox ID="txt_phone" runat="server" placeholder="Phone" ></asp:TextBox>
            </div>
            <div>
             <asp:TextBox ID="txt_message" runat="server" placeholder="Message" ></asp:TextBox>
            </div>
            <div class="d-flex ">
                <asp:Button ID="btn_send" runat="server" Text="SEND" OnClick="btn_send_Click" />
            </div>
          </form>
        </div>
        <div class="col-md-6">
          <div class="map_container">
            <div class="map-responsive">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d248756.07885882704!2d80.20901174999999!3d13.04752545!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a5265ea4f7d3361%3A0x6e61a70b6863d433!2sChennai%2C%20Tamil%20Nadu!5e0!3m2!1sen!2sin!4v1721971795723!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end contact section -->

  <!-- info section -->
  <section class="info_section ">
    <div class="container">
      <div class="info_container">
        <div class="row">
          <div class="col-md-3">
            <div class="info_logo">
              <a href="">
                <img src="images/logo.png" alt="">
                <span>
                  House of Platinum
                </span>
              </a>
            </div>
          </div>
          <div class="col-md-3">
            <div class="info_contact">
              <a href="">
                <img src="images/location.png" alt="">
                <span>
                  Chennai
                </span>
              </a>
            </div>
          </div>
          <div class="col-md-3">
            <div class="info_contact">
              <a href="">
                <img src="images/phone.png" alt="">
                <span>
                  +91 1234567890
                </span>
              </a>
            </div>
          </div>
          <div class="col-md-3">
            <div class="info_contact">
              <a href="">
                <img src="images/mail.png" alt="">
                <span>
                  houseofplatinum@gmail.com
                </span>
              </a>
            </div>
          </div>
        </div>
        <div class="info_form">
          <div class="d-flex justify-content-center">
            <h5 class="info_heading">
              Newsletter
            </h5>
          </div>
          <form action="">
            <div class="email_box">
              <label for="email2">Enter Your Email</label>
              <input type="text" id="email2">
            </div>
            <div>
              <button>
                subscribe
              </button>
            </div>
          </form>
        </div>
        <div class="info_social">
          <div class="d-flex justify-content-center">
            <h5 class="info_heading">
              Follow Us
            </h5>
          </div>
          <div class="social_box">
            <a href="">
              <img src="images/fb.png" alt="">
            </a>
            <a href="">
              <img src="images/twitter.png" alt="">
            </a>
            <a href="">
              <img src="images/linkedin.png" alt="">
            </a>
            <a href="">
              <img src="images/insta.png" alt="">
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end info_section -->

  <!-- footer section -->
  <section class="container-fluid footer_section">
    <p>
      &copy; <span id="displayYear"></span> All Rights Reserved By
             <a href="https://html.houseofplatinum/">Rathish</a>
    </p>
  </section>
  <!-- footer section -->
    
    
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/custom.js"></script>
</body>
</html>
