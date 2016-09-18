///scr_Validate_Ship_Placement();

var ary_ship_region_coords = scr_Get_Ship_Region_Coords(self.int_direction, self.int_ship_size, self.ary_grid_coords);

if(scr_Is_Ship_Inbounds(ary_ship_region_coords)){
    if(scr_Is_Ship_Collision_Free()){
        self.image_index = 0;
    }
    else{
        self.image_index = 1;
    }
}
else{
    self.image_index = 1;
}
