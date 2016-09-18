///scr_Get_Random_Coords(player);

var player = argument0;

var ary_coords;

//get random coords and repeat until the coords arent called already
do
{  
  //get random coords
  for (var i=0; i<2; i+=1)
  {
      ary_coords[i] = irandom_range(0, 9);
  };    
}//end the loop when the coords havent been called yet
until (!scr_Are_Coords_Called(player, ary_coords));

return ary_coords;
