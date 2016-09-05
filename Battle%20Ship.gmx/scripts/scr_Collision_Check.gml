//change the subimage of the sprite if a collision is detected with a solid object
if(place_free(x, y)){
    image_index = 0;
}
else{
    image_index = 1;
}
