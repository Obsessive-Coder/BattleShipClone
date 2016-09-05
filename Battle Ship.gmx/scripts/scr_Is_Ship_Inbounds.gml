//iterates through each number in the array(argument0) and checks if the number is less
//than 0 or more than 10. if so then false is returned

//argument0[] = the array that holds the region coords for the ship


for (var i = 0; i < array_length_1d(argument0); i += 1)
{
    if(argument0[i] < 0 || argument0[i] > 9){
        return false;
    };
};


return true;
