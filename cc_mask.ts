export function maskify(cc: string): string {
    let solution = ""
    let stringArr = [...cc]
    
    stringArr.forEach((char, i) => {
      if (i < stringArr.length - 4) {
        solution = solution + "#";
      } else {
        solution = solution + char;
      }
    });
    
    return solution;
  }