function  openChromeExtension(){
  window.open("https://chrome.google.com/webstore/detail/writegpt-openais-gpt-prom/dflcdbibjghipieemcligeelbmackgco", "_blank");
  }


  function openNav() {
    document.getElementById("myNav").style.width = "100%";
  }

  /* Close when someone clicks on the "x" symbol inside the overlay */
  function closeNav() {
    document.getElementById("myNav").style.width = "0%";
  }
  document.addEventListener("DOMContentLoaded", function (event) {
    var scrollpos = localStorage.getItem('scrollpos');
    if (scrollpos) window.scrollTo(0, scrollpos);
  });

  window.onbeforeunload = function (e) {
    localStorage.setItem('scrollpos', window.scrollY);
  };