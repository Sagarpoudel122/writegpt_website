
function triggerHotkey(){
//document.documentElement.dispatchEvent(e);
//alert("Hello there!");
document.documentElement.dispatchEvent(new KeyboardEvent("keypress", { keyCode: 69, metaKey: true }));
}



function triggerHotkeyOld() {
  var chr = "e";
  var ctrlKey = true;
  var altKey = false;
  var lowerChr = chr.toLowerCase();
  var upperChr = chr.toUpperCase();
  var keydownCode = upperChr.charCodeAt(0);
  var e = new KeyboardEvent("keydown", {
    key: lowerChr,
    code: "Key" + upperChr,
    ctrlKey,
    altKey,
    keyCode: keydownCode,
    which: keydownCode
  });
  var keypressCode = lowerChr.charCodeAt(0);
  document.documentElement.dispatchEvent(e);
  var e = new KeyboardEvent("keypress", {
    key: lowerChr,
    ctrlKey,
    altKey,
    charCode: keypressCode,
    keyCode: keypressCode,
    which: keypressCode
  });
  document.documentElement.dispatchEvent(e);
}