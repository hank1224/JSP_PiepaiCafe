/*數量*/
function Add() {
  var num = parseInt(document.getElementById('itemcount').innerText);
  num++;
  document.getElementById('itemcount').innerText = num.toString();
  ProductNumberChange();
}

function Less() {
  var num = parseInt(document.getElementById('itemcount').innerText);
  if (num > 1) {
    num--;
    document.getElementById('itemcount').innerText = num.toString();
    ProductNumberChange();
  }
  else {
    Delete();
  }
}
function Add1() {
  var num = parseInt(document.getElementById('itemcount1').innerText);
  num++;
  document.getElementById('itemcount1').innerText = num.toString();
  ProductNumberChange();
}

function Less1() {
  var num = parseInt(document.getElementById('itemcount1').innerText);
  if (num > 1) {
    num--;
    document.getElementById('itemcount1').innerText = num.toString();
    ProductNumberChange();
  }
  else {
    Delete();
  }
}
function Add2() {
  var num = parseInt(document.getElementById('itemcount2').innerText);
  num++;
  document.getElementById('itemcount2').innerText = num.toString();
  ProductNumberChange();
}

function Less2() {
  var num = parseInt(document.getElementById('itemcount2').innerText);
  if (num > 1) {
    num--;
    document.getElementById('itemcount2').innerText = num.toString();
    ProductNumberChange();
  }
  else {
    Delete();
  }
}
