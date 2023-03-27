import React from "react";
import Layout from "../../components/Layout";

export default function ProductScreen() {
  return (
    <Layout>
      <React.Fragment>
        
        <div id="header-color"></div>

        <div id="header-spacing"></div>

        <section id="content">
          <div id="header-man-with-pc" class="d-none d-md-block"></div>
          <div id="header-middle-color" class="d-block"></div>
          <div style={{ maxWidth: 1200,margin:'auto' }}>
            <div class="header-text-wrapper-onboarding">
              <h2>Your chatGPT Prompt Assistant on all websites</h2>
              <p>
                The multi-function web extension harnessing Chat GPT on any
                website while facilitating effective prompt engineering for
                content creation & consumption.
              </p>
              <button class="btn-lg" onclick="openChromeExtension()">
                Add to Chrome
              </button>
            </div>
          </div>

          <div class="container" style={{ zIndex: 1, position: "relative" }}>
            <div class="yt_link" style={{ margin: "50 auto", maxWidth: 700 }}>
              <iframe
                width="100%"
                height="365"
                style={{
                  boxShadow: "3px 3px 20px -3px rgba(0, 0, 0, 0.75)",
                  borderRadius: 20,
                }}
                src="https://www.youtube.com/embed/zJyVKY4jY88?controls=0"
                title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                allowfullscreen
              ></iframe>
            </div>
          </div>

          <section class="container" id="aboutus-video-section">
            <div class="row">
              <div class="col-12 col-md-6 aboutus-video-description">
                <h3 class="video-description-title">
                  Harness GPT for vast use-cases on any website
                </h3>
                <ul>
                  <li>ReWrite & reposition any content</li>
                  <li>Write / Reply to emails automatically</li>
                  <li>Summarise any article or content source</li>
                  <li>Research flawlessly</li>
                  <li>Fix & Review Code</li>
                  <li>Translate on the spot</li>
                </ul>
              </div>
              <div class="col-12 col-md-6">
                <div class="video-play">
                  <img src="./assets/images/gif/gif-1.gif" />
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-12 col-md-6">
                <div class="video-play">
                  <img src="./assets/images/gif/gif-2.gif" />
                </div>
              </div>
              <div class="col-12 col-md-6 aboutus-video-description">
                <h3 class="video-description-title">Assisted prompt writing</h3>
                <p>
                  Bridge your needs, context, goals, product, audience, style
                  (and many more) with the power of writeGPT.
                </p>
                <p>
                  Our facilitated prompt engineering includes multi-layers of
                  customization along with lots of suggestions to enable the
                  best-tailored outputs for you.
                </p>
              </div>
            </div>
            <div class="row">
              <div class="col-12 col-md-6 aboutus-video-description">
                <h3 class="video-description-title">
                  Break unproductive
                  <br />
                  browsing habits
                </h3>

                <p>
                  Internet browsing is grounded with bad design where users have
                  to constantly interchange tabs or check multiple websites to
                  find a simple answer.
                </p>
                <p>
                  We're here to streamline the whole browsing experience with no
                  strings attached.
                </p>
              </div>

              <div class="col-12 col-md-6">
                <div class="video-play">
                  <img src="./assets/images/gif/gif-3.gif" />
                </div>
              </div>
            </div>
          </section>

          {/* About Us Video End */}
          <div id="mobile-conatiner-bg">
            <div class="container">
              <div class="row align-items-center">
                <div class="col-12 col-md-6">
                  <img src="./assets/images/mobile_only.png" alt="" srcset="" />
                </div>
                <div class="col-12 col-md-6">
                  <h3 class="video-description-title">
                    Available on mobile, too.
                  </h3>

                  <p>
                    Now you can use the mobile version of writeGPT accessible
                    from any browser.
                  </p>
                  <p>
                    All you have to do is just to access the website from mobile
                    and the rest will happen like magic.
                  </p>
                </div>
              </div>
            </div>
          </div>

          <div class="buttons-container d-flex flex-md-row flex-column justify-content-md-between justify-content-center align-items-center">
            <button class="btn-lg" onclick="openChromeExtension()">
              Add to Chrome
            </button>
          </div>

          <div class="container">
            <center>
              <h1 class="video-description-title">FAQS</h1>
            </center>
            <div class="border-linear-gradient faq-wrapper">
              <div type="button" class="collapsible">
                1. How do you plan to expand the prompt engineering stuff? 
                <i class="fas fa-chevron-down"></i>
              </div>
              <div class="content">
                <p>
                  We’re on a mission to facilitate effective prompt engineering
                  by enabling multiple layers of personalization that we tested
                  and validated to be worth adding to the extension. 
                </p>
              </div>
              <div type="button" class="collapsible">
                2. What use cases are writeGPT supporting?
                <i class="fas fa-chevron-down"></i>
              </div>
              <div class="content">
                <p>
                  writeGPT supports a vast set of use cases to help
                  professionals become more productive. Some examples include:
                  summarizing any content source, replying to emails,
                  researching faster, rewriting content from competitors or
                  creators you admire, and reviewing code. 
                </p>
              </div>
              <div type="button" class="collapsible">
                3. What are the differences between writeGPT & ChatGPT?
                <i class="fas fa-chevron-down"></i>
              </div>
              <div class="content">
                <p>
                  They use the same OpenAI’s GPT technology. The main
                  differences between the two are regarding the user experience,
                  pricing, and accessibility. writeGPT facilitates effective
                  prompt engineering & writing so that users can customize
                  audiences, personas, styles, nuances, or formats to get the
                  best-fitting output for their needs. Moreover, users can
                  access writeGPT on any website without inter-switching tabs or
                  constantly copy-pasting from one site to another.
                </p>
              </div>
              <div type="button" class="collapsible">
                4. How do you open the extension?
                <i class="fas fa-chevron-down"></i>
              </div>
              <div class="content">
                <p>
                  The extension is available on any website from the browser.
                  Depending on your operating system, you can activate the
                  extension by selecting any content & pressing:
                  <br />
                  Command + E on MacOS or CTRL + Y on Windows
                </p>
              </div>
              <div type="button" class="collapsible">
                5. How does writeGPT ensure data privacy?
                <i class="fas fa-chevron-down"></i>
              </div>
              <div class="content">
                <p>
                  writeGPT uses the same security measures as OpenAI which takes
                  privacy and data security very seriously.  To comply with
                  privacy laws and regulations, the company has implemented
                  various measures to protect the privacy of users and their
                  data.  Here are a few key steps that OpenAI takes to comply
                  with privacy laws and regulations: Data minimization: OpenAI
                  only collects the minimum amount of data necessary to provide
                  its services and improve its models. User control: OpenAI
                  allows users to control their data by giving them access to
                  their information and the ability to delete it if they choose.
                  Data security: OpenAI uses industry-standard security
                  measures, such as encryption and secure data storage, to
                  protect user data from unauthorized access, misuse, and loss.
                  Privacy by design: OpenAI incorporates privacy considerations
                  into the design and development of its services, ensuring that
                  privacy is built into the core of its products. Compliance
                  with privacy laws: OpenAI regularly reviews its privacy
                  practices and makes changes as necessary to comply with
                  relevant privacy laws, such as the European Union's General
                  Data Protection Regulation (GDPR). These measures help ensure
                  that user data is protected and privacy is respected, allowing
                  OpenAI to provide its services in a responsible and
                  trustworthy manner.
                </p>
              </div>
              <div type="button" class="collapsible">
                6. Which model/technology does writeGPT uses?
                <i class="fas fa-chevron-down"></i>
              </div>

              <div class="content">
                <p>
                  writeGPT uses ChatGPT API. GPT (Generative Pre-trained
                  Transformer) is a language model developed by OpenAI. The GPT
                  model is a state-of-the-art language model that uses deep
                  learning techniques to generate human-like text based on a
                  given prompt.
                </p>
              </div>
            </div>
          </div>
          <footer class="d-flex flex-column flex-md-row justify-content-between">
            <div>
              <a href="./index.html">
                <img
                  src="./assets/images/logo_full.png"
                  height="100px"
                  alt="Logo"
                  class="logo"
                />
              </a>
            </div>

            <div class="d-flex flex-column flex-md-row">
              <a
                target="_blank"
                href="https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=writegpt@gmail.com"
                class="linkText text-white"
              >
                Contact
              </a>
              <a
                target="_blank"
                href="https://writegpt.canny.io/feature-ideas"
                class="linkText text-white"
              >
                Ask for a feature
              </a>
              <a
                target="_blank"
                href="https://docs.google.com/forms/d/e/1FAIpQLSfX6l6tKglcHCcsxGT-WJ8sS-DgwejoQBVyJPbA4cvfRogLbA/viewform"
                class="linkText text-white"
              >
                Report a Bug
              </a>
            </div>
            <div class="social-icon-wrapper">
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
          </footer>
          <div class="d-block d-md-none floating-banner border-linear-gradient">
            <a href="https://app.writegpt.ai/">
              <div class="flex align-items-center justify-content-between">
                <div>
                  <p>Try our mobile version of writeGPT</p>
                </div>
                <i class="fas fa-arrow-right"></i>
              </div>
            </a>
          </div>
        </section>
      </React.Fragment>
    </Layout>
  );
}
