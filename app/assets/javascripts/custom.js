let list = document.querySelectorAll(".list");
let list_title = document.querySelectorAll(".list-title");
let form = document.getElementById("background-color");

function unrounded(){
    let list_title = document.querySelector("#title" + this.id);
    list_title.style.borderRadius = "50px 50px 0 0";
}


function rounded(){
    let list_title = document.querySelector("#title" + this.id);
    list_title.style.borderRadius = "50px";
}

function unrounded2(){
    this.style.borderRadius = "50px 50px 0 0";
}

function rounded2(){
    this.style.borderRadius = "50px";
}


function colorchange(){
    //evt.preventDefault();

    var value = document.getElementById("bg-input").value;

    document.querySelector("body").style.backgroundColor = value;
    //document.querySelector(".navbar-brand").style.color = value;
    document.querySelectorAll(".bg").forEach(item => {
        item.style.backgroundColor = value;
    });
}






list.forEach(item => {
    item.addEventListener('mouseover', unrounded)
});


list.forEach(item => {
    item.addEventListener('mouseout', rounded)
});

list_title.forEach(item => {
    item.addEventListener('mouseover', unrounded2)
});

list_title.forEach(item => {
    item.addEventListener('mouseout', rounded2)
});


// form.addEventListener("submit",colorchange);
window.addEventListener("DOMContentLoaded", colorchange);




// checkbox submit

let checkbox = document.querySelectorAll(".accept_tos");

checkbox.forEach(box => {
    box.addEventListener("click", function (){
             // $(".form-class").submit();
             n = this.id;
             let form = document.getElementById("form"+n);
             form.submit();
          })
});

checkbox.forEach(box => {
    if (box.checked == true) {
        let content = document.getElementById("c"+box.id);
        content.style.textDecoration = "line-through";
    }
});


let tab_color = [["#18191f","#335C81", "#6BD425", "#EA2B1F", "#F9DF74", "#00f3ff"],
                    ["#141B41","#306BAC", "#6F9CEB", "#98B9F2", "#918EF4", "#FED766"],
                    ["#660000","#990033", "#6F9CEB", "#FFC4EB", "#F9DF74", "#FF9000"],
                    ["#D4CDC3","#D5D0CD", "#A2A392", "#B98389", "#9A998C", "#F8F4E3"],
                    ["#4E878C","#93E5AB", "#65B891", "#00241B", "#B5FFE1", "#F8F4E3"],
                    ["#6A0DC4","#8D18FF", "#B850FF", "#A240FC", "#8D18FF", "#D168FF"]
];


function changecolor() {
    let x = Math.floor(Math.random() * (6 - 0)) + 0;

    let body = document.querySelector("body");
    let edit = document.querySelector(".edit");
    let signout = document.querySelector(".sign-out");
    let signin = document.querySelector(".sign-in");
    let signup = document.querySelector(".sign-up");
    let todo = document.querySelector(".btn-todo");
    let reminder = document.querySelector(".btn-reminder");
    let nav = document.querySelector("nav");
    let li = document.querySelector(".navbar-nav").querySelectorAll("li");

    body.style.backgroundColor = tab_color[x][0];

    nav.style.backgroundColor = tab_color[x][0];
    li.forEach(item => {
        item.style.backgroundColor = tab_color[x][0];
    });

    document.querySelectorAll(".bg").forEach(item => {
        item.style.backgroundColor = tab_color[x][0];
    });

    reminder.style.backgroundColor = tab_color[x][0];
    reminder.querySelector("a").style.color = ""+tab_color[x][5];
    reminder.querySelector("a").style.textShadow = "0 0 15px "+tab_color[x][5];

    todo.style.backgroundColor = tab_color[x][0];
    todo.querySelector("a").style.color = tab_color[x][5];
    todo.querySelector("a").style.textShadow = "0 0 15px "+tab_color[x][5];

    edit.querySelector("a").style.color = tab_color[x][1];
    edit.querySelector("a").style.textShadow = "0 0 15px "+tab_color[x][1];

    signout.querySelector("a").style.color = tab_color[x][2];
    signout.querySelector("a").style.textShadow = "0 0 15px "+tab_color[x][2];

    signin.querySelector("a").style.color = tab_color[x][3];
    signin.querySelector("a").style.textShadow = "0 0 15px "+tab_color[x][3];

    signup.querySelector("a").style.color = tab_color[x][4];
    signup.querySelector("a").style.textShadow = "0 0 15px "+tab_color[x][4];
}


let pref = document.querySelector(".pref");

pref.addEventListener('click', changecolor);


let signin = document.querySelector(".edit");

console.log(signin);

let a = signin.querySelector("a").textContent;

console.log(a);
