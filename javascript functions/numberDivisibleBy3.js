function myFunction() {
var num=[];
for(i=1;i<=100;i=i+1){

  if ( i % 3 == 0){
  num.push(i);
    //document.writeln(i);
  }  

}
//document.write("Length of the string is"+ num.length);
for(i=0;i<num.length;i++){
document.writeln(num[i]);
}
}
  myFunction();
