///scr_Is_Ship_Inbounds(ary_region_coords);

//iterates through each number in the array(argument0) and checks if the number is less
//than 0 or more than 10. if so then false is returned

var ary_region_coords = argument0;

for (var i = 0; i < array_length_1d(ary_region_coords); i += 1)
{
  if(ary_region_coords[i] < 0 || ary_region_coords[i] > 9){
      return false;
  };
};

return true;
