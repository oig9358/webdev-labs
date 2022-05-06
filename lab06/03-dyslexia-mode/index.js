/* 
  See Smashing Magazine Tutorial:
  https://www.smashingmagazine.com/2021/11/dyslexia-friendly-mode-website/
*/

const DyslexiaMode = () => {
  if (document.querySelector("body").className === "dyslexia-mode") {
    document.querySelector("body").className = "none";
  }
  else {
    document.querySelector("body").className = "dyslexia-mode";
  }
};


document.querySelector("#dyslexia-toggle").addEventListener('click', DyslexiaMode);