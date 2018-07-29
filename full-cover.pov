#include "colors.inc"    // The include files contain
#include "stones.inc"    // pre-defined scene elements

#include "textures.inc"    // pre-defined scene elements
#include "shapes.inc"
#include "glass.inc"
#include "metals.inc"
#include "woods.inc"

global_settings {
    //ambient_light rgb<0.3, 0.3, 0.3>
}


camera {
    location <5.3 + clock, 5.6, 5.5>
    //location <-10, -8, -10>
    look_at  <9 + clock, 8.3, 9>
    //focal_point <7, 7, 6>
    //aperture 0.2
    //blur_samples 4
    right x * 1920./1080.
}

//light_source {
//    <0.5, 1.5, 0.5> color Red
//    spotlight
//    radius 100
//    tightness 10
//    falloff 20
//    point_at <5, 5, 5>
//}
//
//light_source {
//    <1.5, 0.5, 0.5> color Green
//    spotlight
//    radius 100
//    tightness 10
//    falloff 20
//    point_at <5, 5, 5>
//}
//
//light_source {
//    <0.5, 0.5, 1.5> color Blue
//    spotlight
//    radius 100
//    tightness 10
//    falloff 20
//    point_at <5, 5, 5>
//}

//light_source {
//    <-1, 0, 0>
//    color rgb <0.3, 0.3, 0.3>
//    area_light <0, 10, 0> <0, 0, 10> 3 3
//    //jitter
//    fade_distance 20
//    fade_power 10
//}

//light_source {
//    <10, 0, 0>
//    color Green
//    area_light <0, 10, 0> <0, 0, 10> 3 3
//    fade_distance 5
//    fade_power 2
//}

light_source {
    <10 + clock, 0, 0>
    color White
    area_light <0, 10, 0> <0, 0, 10> 5 5
    //fade_distance 5
    //fade_power 2
}
//
//plane {
//    x, 25
//    pigment {color White}
//}

//light_source { <0.5, 0.5, 10.5> color Green}
//light_source { <10.5, 0.5, 0.5> color Blue}
//
//light_source { <10.5, 5.5, 5.5> color White}

#declare rad = 0.02;
#declare rad2 = 0.10;
#declare depth = 15;

#declare v1 = <0, 0, 0>;
#declare v2 = <0, 0, depth>;

#for(i, 0, depth, 1)
#for(j, 0, depth, 1)
    cylinder {
        v1 v2 rad
        pigment { color White }
        translate <i, j, 0>
        finish {phong 1}
        no_shadow
    }
    cylinder {
        v1 v2 rad
        pigment { color White }
        rotate <-90, 0, 0>
        translate <i, 0, j>
        finish {phong 1}
        no_shadow
    }
    cylinder {
        v1 v2 rad
        pigment { color White }
        rotate <0, 90, 0>
        translate <0, i, j>
        finish {phong 1}
        no_shadow
    }
#for(k, 0, depth, 1)
    //box {
    //    <-rad2, -rad2, -rad2>
    //    <rad2, rad2, rad2>
    //    pigment {color White}
    //    translate <i, j, k>
    //}
    sphere {
        <i, j, k> rad2
        //pigment {color rgb <mod(i, 2), mod(j, 2), mod(k, 2)>}
        pigment {color Gray50}
        //finish {phong 1}
        //finish { ambient
        finish {
            phong 1
            //ambient rgb <mod(i, 2)*2, mod(j, 2)*2, mod(k, 2)*2>
            //ambient White
        }
        //no_shadow
    }

//    sphere {
//        <6, 6, 6> rad2
//        //pigment {color rgb <mod(i, 2), mod(j, 2), mod(k, 2)>}
//        pigment {color Red}
//        //finish {phong 1}
//        //finish { ambient
//        finish {
//            phong 1
//            //ambient rgb <mod(i, 2)*2, mod(j, 2)*2, mod(k, 2)*2>
//            //ambient White
//        }
//        //no_shadow
//    }


#end
#end
#end

fog {
    distance 3
    color rgb White
}

