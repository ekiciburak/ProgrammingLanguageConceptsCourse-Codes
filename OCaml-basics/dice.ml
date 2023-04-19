open Printf


class dice = object 
  val max = 6
  val mutable faceValue = 0

  method get_faceValue = faceValue
  method set_faceValue v = faceValue <- v
  
  method roll =
    Random.self_init();
    faceValue <- (Random.full_int max) + 1
end

let main: unit =
  let d = new dice in
  d#roll;
  let v = d#get_faceValue in
  printf "%d\n" v;
  