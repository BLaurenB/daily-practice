function whoIsNext(names, r){

  while (names.length < r) {
    names.map(function (name) {
      names.push(name, name);
      return names;
    }
  )}
  return names[r-1]
}


function whoIsNext(names, r){

 if (names.length < r) {
   names.map(function (name) {
      names.push(name, name);
      return names;
   }
 )} else {
   return names
  }
  return names[r-1]
}


function whoIsNext(names, r){

  iter: while (names.length < r) {
    names.map(function (name) {
      return names.push(name, name);
      if (names.length >= r) {
        break iter;
      }
    }
  )}
  return names[r-1]
}
