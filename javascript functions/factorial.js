function FirstFactorial(num) { 

  
  var factorial=1;
  for(i=1;i<=num;i++){
      factorial=factorial*i;
  }
  document.write(factorial); 
         
}
FirstFactorial(5);  