const makeBigger = () => {
   // const currFont = document.querySelector(div.content).style.fontSize;
   document.querySelector("h1").style.fontSize = "larger";
   document.querySelector("div.content").style.fontSize = "larger";
};

const makeSmaller = () => {
   // alert('make smaller!');
   document.querySelector("h1").style.fontSize = "smaller";
   document.querySelector("div.content").style.fontSize = "smaller";
};


document.querySelector("#a1").addEventListener('click', makeBigger);
document.querySelector("#a2").addEventListener('click', makeSmaller);

