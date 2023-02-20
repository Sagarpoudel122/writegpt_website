import 'dart:html' as html;

class AppConstant {
  static double minimumWidth = 1100;
  static double maxAppWidth = 1920;
  static double maxBodyWith = 1200;
  static const String productHuntEmbedElement =
      """<a href="https://www.producthunt.com/posts/writegpt?utm_source=badge-featured&utm_medium=badge&utm_souce=badge-writegpt" target="_blank"><img src="https://api.producthunt.com/widgets/embed-image/v1/featured.svg?post_id=378697&theme=light" alt="writeGPT - Become&#0032;Superhuman&#0032;with&#0032;everyday&#0032;tasks&#0032;by&#0032;harnessing&#0032;ChatGPT | Product Hunt" style="width: 180px;"/></a>""";

  static String getOS() {
    String modifierKeyPrefix = "^"; // control key
    if (html.window.navigator.platform!.indexOf("Mac") == 0 ||
        html.window.navigator.platform == "iPhone") {
      modifierKeyPrefix = "⌘"; // command key
    }
    return modifierKeyPrefix;
  }
}
