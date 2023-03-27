function openChromeExtension() {
  window.open(
    "https://chrome.google.com/webstore/detail/writegpt-openais-gpt-prom/dflcdbibjghipieemcligeelbmackgco",
    "_blank"
  );
}

function openTryOut() {
  window.open("https://app.writegpt.ai/", "_blank");
}

(function () {
  var current = location.pathname.split('/')[1];
  if (current === "") return;
  var menuItems = document.querySelectorAll('ul.navbar li a');
  for (var i = 0, len = menuItems.length; i < len; i++) {
      if (menuItems[i].getAttribute("href").indexOf(current) !== -1) {
          menuItems[i].className += "active";
      }
  }
})();

function openWatchOnYoutube() {
  window.open("https://www.youtube.com/@writegpt-becomesuperhumanwithc", "_blank");
}
function openNav() {
  document.getElementById("myNav").style.width = "100%";
}

/* Close when someone clicks on the "x" symbol inside the overlay */
function closeNav() {
  document.getElementById("myNav").style.width = "0%";
}

document.addEventListener("DOMContentLoaded", function (event) {
  var scrollpos = localStorage.getItem("scrollpos");
  if (scrollpos) window.scrollTo(0, scrollpos);
});

window.onbeforeunload = function (e) {
  localStorage.setItem("scrollpos", window.scrollY);
};

var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function () {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    var icon = this.children[0];
    icon.className = "";

    if (content.style.display === "block") {
      content.style.display = "none";
      icon.className = "fas fa-chevron-down";
    } else {
      content.style.display = "block";
      icon.className = "fas fa-chevron-up";
    }
  });
}
