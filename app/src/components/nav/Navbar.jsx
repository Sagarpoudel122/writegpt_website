import React from "react";
import './nav.css';
export default function Navbar() {
  return (
    <React.Fragment>
      <nav class="header-nav">
        <div>
          <a
            href="javascript:void(0)"
            class="d-block d-md-none"
            onclick="openNav()"
          >
            <div class="hambuger open">
              <span></span>
              <span></span>
              <span></span>
            </div>
          </a>
          <a href="./index.html" class="d-none d-md-block">
            <img src="" alt="Logo" class="logo" />
          </a>
        </div>

        <div class="nav-wrapper d-none d-md-block">
          <ul class="navbar">
            <li>
              <a href="./index.html">Product</a>
            </li>
            <li>
              <a href="./onboarding.html">OnBoarding</a>
            </li>
            {/* <li><a href="">Blog</a></li>  */}
          </ul>
        </div>
        <a href="https://www.producthunt.com/posts/writegpt" target="_blank">
          <img
            src="https://api.producthunt.com/widgets/embed-image/v1/featured.svg?post_id=378697&theme=light"
            alt="writeGPT - Become Superhuman with everyday tasks by harnessing ChatGPT | Product Hunt"
            style={{width: 210, height: 54}}
          />
        </a>
      </nav>
      <div id="myNav" class="overlay">
        <div class="hambuger closebtn">
          <a href="javascript:void(0)" onclick="closeNav()">
            {" "}
            &times;
          </a>
        </div>

        <div class="overlay-content flex justify-content-between flex-column">
          <ul class="navbar-nav">
            <li>
              <a href="./index.html">Product</a>
            </li>
            <li>
              <a href="./onboarding.html">OnBoarding</a>
            </li>
            {/* <li><a href="">Blog</a></li>  */}
          </ul>
          <div class="social-icon-wrapper flex">
            <a target="_blank" href="https://www.instagram.com/writegpt.ai/">
              <img src="./assets/images/instagram.png" />
            </a>
            <a target="_blank" href="https://twitter.com/write_GPT">
              <img src="./assets/images/twitter.png" />
            </a>
            <a
              target="_blank"
              href="https://www.linkedin.com/company/writegptai/"
            >
              <img src="./assets/images/linkedIn.png" />
            </a>
          </div>
        </div>
      </div>
    </React.Fragment>
  );
}
