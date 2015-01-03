<%@ Page Title="Welcome" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FilmFiles._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="myCarousel" class="carousel slide">
      <div class="carousel-inner">
        <div class="item active">
          <img src="Images/slide-01.jpg" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h1>Film Files.</h1>
              <p class="lead">Best online database for films.</p>
              <a class="btn btn-large btn-primary" href="#">Sign up today</a>
            </div>
          </div>
        </div>
        <div class="item">
          <img src="Images/slide-02.jpg" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h1>Film Files.</h1>
              <p class="lead">Best online database for films.</p>
              <a class="btn btn-large btn-primary" href="#">Learn more</a>
            </div>
          </div>
        </div>
        <div class="item">
          <img src="Images/slide-03.jpg" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h1>Film Files.</h1>
              <p class="lead">Best online database for films.</p>
              <a class="btn btn-large btn-primary" href="#">Browse gallery</a>
            </div>
          </div>
        </div>
        <div class="item">
          <img src="Images/slide-04.jpg" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h1>Film Files.</h1>
              <p class="lead">Best online database for films.</p>
              <a class="btn btn-large btn-primary" href="#">Learn more</a>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
    </div>

    <div class="row">
        <div class="col-md-8">
            <h2>Latest Theatrical Releases</h2>
            <ul class="img-list">
                  <li>
                      <a href="https://www.youtube.com/watch?v=uJfLoE6hanc">                    
                      <img src="Images/BirdM.jpg" width="770px" height="250px" />
                      <h1><span class="text-content"><span>BiRDMAN</span></span></h1>
                      </a>
                  </li>
                </ul>
            <p>
                <a class="btn btn-default" href="http://localhost:16073/FilmDetails?filmID=11">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Coming Soon</h2>
            <ul class="CSTrailers">
                <li><a href="https://www.youtube.com/watch?v=62E4FJTwSuc">Terminator Genisys</a></li>
                <li><a href="https://www.youtube.com/watch?v=OMOVFvcNfvE">Star Wars: The Force Awakens</a></li>
                <li><a href="https://www.youtube.com/watch?v=WtjbsNHT1tY">Entourage</a></li>
                <li><a href="https://www.youtube.com/watch?v=tmeOjFno6Do">Avengers: Age of Ultron</a></li>
                <li><a href="https://www.youtube.com/watch?v=JuU0M2xBasc">Taken 3</a></li>
                <li><a href="https://www.youtube.com/watch?v=6vY9UPiI4eQ">Focus</a></li>
                <li><a href="https://www.youtube.com/watch?v=Q_hSt6KIHhk">Get Hard</a></li>
                <li><a href="https://www.youtube.com/watch?v=5bP1f_1o-zo">American Sniper</a></li>
                <li><a href="https://www.youtube.com/watch?v=eisKxhjBnZ0">Minions</a></li>
                <li><a href="https://www.youtube.com/watch?v=4W2ikNhkpIE">Pan</a></li>
            </ul>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
