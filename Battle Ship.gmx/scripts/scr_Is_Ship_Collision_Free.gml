///scr_Is_Ship_Collision_Free();

//change the subimage of the sprite if a collision is detected with a solid object
if(place_free(self.x, self.y)){
    return true;
}
else{
    return false;
}
