#!/bin/bash

mygroup() {
 	echo "${2}  style-icons/mm_${1}.png"
 	cp ../png/mdpi/${2} ../../rendering_styles/style-icons/drawable-mdpi/mm_${1}.png
 	cp ../png/hdpi/${2} ../../rendering_styles/style-icons/drawable-hdpi/mm_${1}.png
 	cp ../png/xhdpi/${2} ../../rendering_styles/style-icons/drawable-xhdpi/mm_${1}.png
 	cp ../png/xxhdpi/${2} ../../rendering_styles/style-icons/drawable-xxhdpi/mm_${1}.png
 	cp ../png/big-mdpi/${2} ../../rendering_styles/style-icons/drawable-mdpi/mx_${1}.png
 	cp ../png/big-hdpi/${2} ../../rendering_styles/style-icons/drawable-hdpi/mx_${1}.png
 	cp ../png/big-xhdpi/${2} ../../rendering_styles/style-icons/drawable-xhdpi/mx_${1}.png
 	cp ../png/big-xxhdpi/${2} ../../rendering_styles/style-icons/drawable-xxhdpi/mx_${1}.png
}


mycp() {
	mygroup ${1}_${2} $3
}



## Shaders ! # copy all shaders untouched
cp ../png/mdpi/h_* ../../rendering_styles/style-icons/drawable-mdpi/
cp ../png/hdpi/h_* ../../rendering_styles/style-icons/drawable-hdpi/
cp ../png/xhdpi/h_* ../../rendering_styles/style-icons/drawable-xhdpi/
cp ../png/xxhdpi/h_* ../../rendering_styles/style-icons/drawable-xxhdpi/

mygroup landuse landuse_coniferous.png
mycp landuse grass landuse_grass.png
mycp landuse forest landuse_coniferous.png               # Keep shaders with background color, cannot be replaced by icons!
mycp natural beach tourist_beach2.png                     # Keep shaders with background color, cannot be replaced by icons!
mycp landuse cemetery place_of_worship_christian3.png    # Keep shaders with background color, cannot be replaced by icons!
mycp amenity grave_yard place_of_worship_christian3.png  # Keep shaders with background color, cannot be replaced by icons!
mycp natural scrub landuse_scrub.png                     # Keep shaders with background color, cannot be replaced by icons!
mycp natural swamp landuse_swamp.png                     # Keep shaders with background color, cannot be replaced by icons!
mycp tourism zoo tourist_zoo.png                         # Keep shaders with background color, cannot be replaced by icons!
mycp military danger_area poi_mine.png                   # Keep shaders with background color, cannot be replaced by icons!
mycp military nuclear_explosion_site poi_nuclear_explosion_site.png
mycp natural glacier poi_peak2.png                       # Keep shaders with background color, cannot be replaced by icons!


## Natural
mygroup natural poi_peak2.png
mycp natural peak functional-icons_peak.png  #needs black icon!  #scale 0.5
mycp natural peak_big functional-icons_peak_big.png  #needs black icon!  #scale 0.5
mycp natural peak_night functional-icons_peak_night.png  #For night orienteering use orange similar to contour lines (=day version with color #CC6600)  #scale 0.5
mycp natural peak_night_big functional-icons_peak_night_big.png  #For night orienteering use orange similar to contour lines (=day version with color #CC6600)  #scale 0.5
mycp natural saddle functional-icons_saddle.png
mycp natural volcano functional-icons_volcano.png  #Is poi_peak.png with color #D40000  #scale 0.5
mycp natural volcano_big functional-icons_volcano_big.png
mycp natural volcano_active functional-icons_volcano_active.png
mycp natural volcano_active_big functional-icons_volcano_active_big.png
mycp natural cave_entrance poi_cave.png
mycp natural spring water_spring.png  #scale 0.375
mycp natural hot_spring water_hot_spring.png  #scale 0.375
mycp natural geyser water_geyser.png  #scale 0.375
mycp natural tree functional-icons_tree.png  #scale 0.25
mycp natural tree_broadleaved functional-icons_tree_broadleaved.png
mycp natural tree_needleleaved functional-icons_tree_needleleaved.png
mycp natural tree_leafless functional-icons_tree_leafless.png
mycp natural tree_palm functional-icons_tree_palm.png
mycp natural tree_cypress functional-icons_tree_cypress.png
mycp waterway waterfall water_waterfall.png  #scale 0.375
mycp natural stone functional-icons_stone.png  #scale 0.375
mycp waterway rapids barrier_rapids.png  #scale 0.375


## Location dots
mygroup administrative poi_boundary_administrative.png
mycp place city_night functional-icons_city_night.png  #scale 0.375
mycp place city_small_night functional-icons_city_small_night.png  #scale 0.375
mycp place city functional-icons_city.png  #scale 0.375
mycp place city_small functional-icons_city_small.png  #scale 0.375
mycp place capital_night functional-icons_capital_night.png  #scale 0.375
mycp place capital_small_night functional-icons_capital_small_night.png  #scale 0.375
mycp place capital functional-icons_capital.png  #scale 0.375
mycp place capital_small functional-icons_capital_small.png  #scale 0.375
mycp place town_night functional-icons_town_night.png  #scale 0.25
mycp place town functional-icons_town.png  #scale .25

## Barrier dots
mycp barrier small_black_1 functional-icons_point_black_1.png  #scale 0.25
mycp barrier small_black_2 functional-icons_point_black_2.png  #scale 0.25
mycp barrier small_black_3 functional-icons_point_black_3.png  #scale 0.25
mycp barrier small_black_4 functional-icons_point_black_4.png  #scale 0.25
mycp barrier small_white_1 functional-icons_point_white_1.png  #scale 0.25
mycp barrier small_white_2 functional-icons_point_white_2.png  #scale 0.25
mycp barrier small_white_3 functional-icons_point_white_3.png  #scale 0.25
mycp barrier small_white_4 functional-icons_point_white_4.png  #scale 0.25
mycp barrier small_red_1 functional-icons_point_red_1.png  #scale 0.25
mycp barrier small_red_2 functional-icons_point_red_2.png  #scale 0.25
mycp barrier small_red_3 functional-icons_point_red_3.png  #scale 0.25
mycp barrier small_red_4 functional-icons_point_red_4.png  #scale 0.25

## Emergency + Health
mygroup emergency emergency_emergency_phone.png
mycp emergency phone emergency_emergency_phone.png
mycp emergency fire_hydrant emergency_fire_hydrant.png
mycp amenity police emergency_police3.png
mycp amenity fire_station emergency_firestation4.png

mygroup healthcare health_pharmacy.png
mycp amenity pharmacy health_pharmacy2.png
mycp amenity hospital health_hospital2.png
mycp amenity veterinary health_veterinary.png
mycp amenity doctors health_doctors.png
mycp amenity dentist health_dentist.png
mycp amenity nursing_home health_nursing_home.png


## Traffic + Transportation
mygroup transportation transport_taxi_rank.png
mycp highway traffic_signals transport_traffic_lights.png
mycp highway mini_roundabout transport_miniroundabout_anticlockwise.png
mycp highway noexit functional-icons_noexit.png
mycp highway ford transport_ford.png
mycp highway crossing transport_zebra_crossing2.png
mycp highway steps transport_highway_steps.png
mycp traffic_calming bump transport_speedbump.png
mycp highway speed_camera transport_speedcamera.png
mycp highway milestone functional-icons_milestone.png
mycp oneway blue functional-icons_oneway_blue.png
mycp oneway reverse_blue functional-icons_oneway_reverse_blue.png
mycp harbour yes poi_harbour.png

mygroup fuel transport_fuel.png
mycp amenity fuel transport_fuel.png
mycp amenity fuel_lpg transport_fuel_lpg.png
mycp amenity ev_charging transport_ev_charging.png

mygroup parking transport_parking.png
mycp amenity parking transport_parking.png
mycp amenity parking_private transport_parking_private2.png
mycp amenity parking_paid transport_parking_car_paid.png
mycp amenity parking_multi_storey transport_parking_multi-storey.png
mycp amenity parking_multi_storey_paid transport_parking_multi-storey_paid.png
mycp amenity parking_underground transport_parking_underground.png
mycp amenity parking_underground_paid transport_parking_underground_paid.png
mycp amenity bicycle_parking transport_parking_bicycle.png
mycp bicycle_parking stands transport_parking_bicycle_stands.png
mycp bicycle_parking wall_loops transport_parking_bicycle_wall_loops.png
mycp bicycle_parking rack transport_parking_bicycle_rack.png
mycp bicycle_parking anchors transport_parking_bicycle_anchors.png
mycp bicycle_parking building transport_parking_bicycle_building.png
mycp bicycle_parking bollard transport_parking_bicycle_bollard.png
mycp bicycle_parking informal transport_parking_bicycle_informal.png
mycp amenity motorcycle_parking transport_parking_motorcycle.png
mycp amenity motorcycle_parking_paid transport_parking_motorcycle_paid.png

mygroup public_transport transport_bus_stop.png
mycp amenity bus_station transport_bus_station2.png
mycp highway bus_stop transport_bus_stop.png
mycp highway bus_stop_small functional-icons_bus_stop_small.png
mycp highway bus_stop_round_small functional-icons_bus_stop_round_small.png
mycp highway bus_stop_round_big functional-icons_bus_stop_round_big.png
mycp highway bus_stop_round_small_night functional-icons_bus_stop_round_small_night.png
mycp highway bus_stop_round_big_night functional-icons_bus_stop_round_big_night.png
mycp public_transport platform transport_bus_stop.png
mycp amenity ferry_terminal transport_ferry_terminal.png
mycp amenity taxi transport_taxi_rank.png
mycp highway services transport_services.png
mycp mountain pass poi_mountain_pass.png

mycp amenity bicycle_rental transport_rental_bicycle.png
mycp amenity car_rental transport_rental_car.png
mycp amenity car_sharing transport_car_share.png
mycp amenity boat_sharing amenity_boat_sharing.png

mycp leisure marina transport_marina.png
mycp leisure marina_private transport_marina_private.png
mycp leisure slipway transport_slipway.png
mycp man_made lighthouse transport_lighthouse.png
mycp waterway lock_gate functional-icons_lock_gate.png  #scale 0.5
mycp waterway dock transport_dock.png

mycp railway station transport_train_station.png
mycp railway station_subway transport_station_subway.png
mycp railway station_small functional-icons_station_small.png  #scale 0.375
mycp railway platform transport_train_station2.png
mycp railway halt functional-icons_halt.png  #scale 0.25
mycp railway tram_stop transport_tram_stop.png
mycp railway tram_stop_round_small functional-icons_blue_stop_round_small.png
mycp railway tram_stop_round_big functional-icons_blue_stop_round_big.png
mycp railway tram_stop_round_small_night functional-icons_blue_stop_round_small_night.png
mycp railway tram_stop_round_big_night functional-icons_blue_stop_round_big_night.png
mycp railway level_crossing functional-icons_level_crossing.png  #scale 0.5

mycp railway subway_entrance functional-icons_subway_entrance.png
mycp railway subway_entrance_red functional-icons_subway_entrance_red.png
mycp railway subway_entrance_brown functional-icons_subway_entrance_brown.png
mycp railway subway_entrance_orange functional-icons_subway_entrance_orange.png
mycp railway subway_entrance_darkyellow functional-icons_subway_entrance_darkyellow.png
mycp railway subway_entrance_yellow functional-icons_subway_entrance_yellow.png
mycp railway subway_entrance_lightgreen functional-icons_subway_entrance_lightgreen.png
mycp railway subway_entrance_green functional-icons_subway_entrance_green.png
mycp railway subway_entrance_lightblue functional-icons_subway_entrance_lightblue.png
mycp railway subway_entrance_blue functional-icons_subway_entrance_blue.png
mycp railway subway_entrance_purple functional-icons_subway_entrance_purple.png
mycp railway subway_entrance_gray functional-icons_subway_entrance_gray.png
mycp railway subway_entrance_black functional-icons_subway_entrance_black.png

mycp railway subway_station_small_default functional-icons_subway_station_small_default.png
mycp railway subway_station_small_red functional-icons_subway_station_small_red.png
mycp railway subway_station_small_brown functional-icons_subway_station_small_brown.png
mycp railway subway_station_small_orange functional-icons_subway_station_small_orange.png
mycp railway subway_station_small_orange2 functional-icons_subway_station_small_orange2.png
mycp railway subway_station_small_darkyellow functional-icons_subway_station_small_darkyellow.png
mycp railway subway_station_small_darkyellow2 functional-icons_subway_station_small_darkyellow2.png
mycp railway subway_station_small_yellow functional-icons_subway_station_small_yellow.png
mycp railway subway_station_small_yellow2 functional-icons_subway_station_small_yellow2.png
mycp railway subway_station_small_lightgreen functional-icons_subway_station_small_lightgreen.png
mycp railway subway_station_small_lightgreen2 functional-icons_subway_station_small_lightgreen2.png
mycp railway subway_station_small_green functional-icons_subway_station_small_green.png
mycp railway subway_station_small_green2 functional-icons_subway_station_small_green2.png
mycp railway subway_station_small_lightblue functional-icons_subway_station_small_lightblue.png
mycp railway subway_station_small_lightblue2 functional-icons_subway_station_small_lightblue2.png
mycp railway subway_station_small_blue functional-icons_subway_station_small_blue.png
mycp railway subway_station_small_blue2 functional-icons_subway_station_small_blue2.png
mycp railway subway_station_small_purple functional-icons_subway_station_small_purple.png
mycp railway subway_station_small_purple2 functional-icons_subway_station_small_purple2.png
mycp railway subway_station_small_gray functional-icons_subway_station_small_gray.png
mycp railway subway_station_small_gray2 functional-icons_subway_station_small_gray2.png
mycp railway subway_station_small_black functional-icons_subway_station_small_black.png
mycp railway subway_station_small_black2 functional-icons_subway_station_small_black2.png

mycp aerialway station_small functional-icons_halt.png  #scale 0.25
mycp aerialway station transport_aerialway_station.png  #scale 0.375

mycp aeroway helipad transport_helicopter_pad.png
mycp aeroway aerodrome transport_aerodrome.png
mycp aeroway airport transport_airport.png
mycp aeroway gate transport_airport_gate.png


## Barrier
mygroup barrier barrier_bollard.png
mycp barrier gate barrier_gate.png
mycp barrier cycle_barrier barrier_cycle_barrier2.png
mycp barrier motorcycle_barrier barrier_cycle_barrier.png
mycp barrier lift_gate barrier_lift_gate.png
mycp barrier swing_gate barrier_swing_gate.png
mycp barrier bump_gate barrier_bump_gate.png
mycp barrier chain barrier_chain.png
mycp barrier sally_port barrier_sally_port.png
mycp barrier bollard barrier_bollard.png
mycp barrier block barrier_blocks.png
mycp barrier kissing_gate barrier_kissing_gate.png
mycp barrier toll_booth barrier_toll_booth.png
mycp barrier turnstile barrier_turnstile.png
mycp barrier stile barrier_stile.png
mycp barrier border_control barrier_border_control.png
mycp barrier entrance barrier_entrance.png
mycp entrance yes barrier_entrance2.png
mycp entrance exit functional-icons_entrance_exit.png
mycp entrance main functional-icons_entrance3.png
mycp amenity parking_entrance functional-icons_parking_entrance.png
mycp building entrance barrier_entrance.png


## Accommodation
mygroup accomodation accommodation_hotel.png
mycp tourism camp_site accommodation_camping.png
mycp tourism caravan_site accommodation_caravan_park.png
mycp tourism alpine_hut accommodation_alpinehut.png
mycp tourism chalet accommodation_chalet.png
mycp tourism guest_house accommodation_bed_and_breakfast.png
mycp tourism hostel accommodation_hostel.png
mycp tourism hotel accommodation_hotel.png
mycp tourism motel accommodation_motel.png
mycp amenity shelter accommodation_shelter2.png


## Tourism
mygroup sightseeing tourist_castle2.png
mygroup tourism tourist_museum.png
mygroup for_tourists tourist_view_point.png
mycp tourism artwork tourist_artwork.png
mycp tourism attraction tourist_attraction.png
mycp tourism picnic_site tourist_picnic.png
mycp tourism museum tourist_museum.png
mycp tourism information tourist_information.png
mycp tourism viewpoint tourist_view_point.png
mycp tourism theme_park tourist_theme_park.png
mycp tourism zoo tourist_zoo.png
mycp attraction amusement_ride tourist_amusement_ride.png
mycp attraction animal tourist_animal.png
mycp attraction big_wheel tourist_big_wheel.png
mycp attraction carousel tourist_carousel.png
mycp attraction maze tourist_maze.png
mycp attraction roller_coaster tourist_roller_coaster.png
mycp attraction slide tourist_slide.png
mycp attraction summer_toboggan tourist_summer_toboggan.png
mycp attraction swing_carousel tourist_swing_carousel.png
mycp attraction train tourist_train.png
mycp attraction water_slide tourist_water_slide.png

## Entertainment
mygroup entertainment tourist_cinema.png
mycp amenity arts_centre tourist_art_gallery2.png
mycp amenity casino tourist_casino.png
mycp amenity cinema tourist_cinema.png
mycp amenity theatre tourist_theatre.png
mycp amenity nightclub tourist_night_club.png
mycp amenity stripclub tourist_night_club.png


## Historic
mygroup historic tourist_archaeological2.png
mycp historic archaeological_site tourist_archaeological2.png
mycp historic battlefield tourist_battlefield.png
mycp historic boundary_stone poi_boundary_administrative.png
mycp historic castle tourist_castle2.png
mycp historic cannon tourist_cannon.png
mycp historic monument tourist_monument.png
mycp historic memorial tourist_memorial.png
mycp historic mine poi_mine_abandoned.png
mycp historic fort tourist_castle2.png
mycp historic ruins tourist_ruin.png
mycp historic rune_stone functional-icons_rune_stone.png
mycp historic ship tourist_ship.png
mycp historic wreck tourist_wreck.png
mycp historic wayside_cross tourist_wayside_cross.png
mycp historic wayside_shrine tourist_wayside_shrine.png
mycp geologic palaeontological_site tourist_palaeontological_site.png
mycp building pyramid tourist_pyramid.png


## Sport
mygroup sport sport_swimming_outdoor.png
mycp leisure stadium sport_stadium.png
mycp sport cricket sport_cricket.png
mycp sport climbing sport_hillclimbing.png
mycp sport horse_racing sport_horse_racing.png
mycp sport soccer sport_soccer.png
mycp sport skating sport_iceskating.png
mycp sport archery sport_archery.png
mycp sport baseball sport_baseball2.png
mycp sport stadium sport_stadium.png
mycp sport canoe sport_canoe.png
mycp sport tennis sport_tennis.png
mycp sport shooting sport_shooting.png
mycp sport golf sport_golf.png
mycp sport skiing sport_skiing_downhill.png
mycp sport swimming sport_swimming_outdoor.png
mycp sport diving sport_diving.png
mycp sport scuba_diving sport_scuba_diving.png  #derived from NPS public library
mycp sport billiard sport_snooker.png
mycp sport gymnastics sport_gymnasium.png
mycp sport motor sport_motorracing.png
mycp sport sailing sport_sailing.png
mycp sport paragliding sport_paragliding.png
mycp sport bmx sport_bmx.png
mycp sport skateboard sport_skateboard.png
mycp sport hockey sport_hockey.png
mycp sport 9pin sport_bowling.png
mycp sport 10pin sport_bowling.png
mycp sport cycling sport_cycling.png
mycp sport rugby_union sport_rugby_union.png
mycp sport rugby_league sport_rugby_league.png
mycp sport table_tennis sport_table_tennis.png
mycp sport base sport_basejumping.png
mycp sport athletics sport_athletics.png
mycp sport surfing sport_surfing.png
mycp sport handball sport_handball.png
mycp sport volleyball sport_volleyball.png
mycp sport basketball sport_basketball.png


## Leisure
mygroup leisure sport_playground.png
mycp leisure playground sport_playground.png
mycp leisure water_park sport_swimming_outdoor.png
mycp leisure sports_centre sport_leisure_centre2.png
mycp leisure ice_rink sport_iceskating.png
mycp leisure fishing sport_fishing.png  #used shop=fish turned by 45 degrees for now
mycp leisure bird_hide poi_tower_lookout.png
mycp leisure miniature_golf sport_miniature_golf.png
mycp leisure beach_resort tourist_beach_resort.png
mycp amenity sauna sport_sauna.png

mygroup geocache poi_point_of_interest.png
mycp geocache not_found poi_point_of_interest.png
mycp geocache found poi_point_of_interest.png


## Other amenities
mygroup other amenity_post_office.png
mycp amenity car_wash amenity_car_wash.png
mycp amenity car_wash_self_service amenity_car_wash_self_service.png
mycp service tyres amenity_service_tyres.png
mycp amenity bench functional-icons_bench.png
mycp amenity post_box amenity_post_box.png
mycp amenity post_office amenity_post_office2.png
mycp amenity prison amenity_prison.png
mycp amenity recycling amenity_recycling.png
mycp amenity telephone amenity_telephone.png
mycp amenity toilets amenity_toilets.png
mycp amenity fountain amenity_fountain2.png
mycp amenity fountain_night functional-icons_fountain2_night.png
mycp amenity monastery place_of_worship_monastery.png
mycp amenity place_of_worship place_of_worship_unknown.png
mycp religion christian place_of_worship_christian3.png
mycp religion jewish place_of_worship_jewish3.png
mycp religion muslim place_of_worship_islamic3.png
mycp religion sikh place_of_worship_sikh3.png
mycp religion buddhist place_of_worship_buddhist3.png
mycp religion hindu place_of_worship_hindu3.png
mycp religion shinto place_of_worship_shinto3.png
mycp religion taoist place_of_worship_taoist.png
mycp amenity smoking_area amenity_smoking_area.png
mycp amenity studio amenity_studio.png
mycp amenity brothel amenity_brothel.png
#! mycp amenity grave_yard place_of_worship_christian3.png  #already defined as icon in the shader section

mygroup finance money_bank2.png
mycp amenity atm money_atm.png
mycp amenity bank money_bank2.png
mycp amenity bureau_de_change money_currency_exchange.png
mycp bitcoin yes money_bitcoin.png

mygroup office amenity_public_building2.png
mycp amenity embassy amenity_embassy.png
mycp amenity townhall amenity_town_hall2.png
mycp amenity courthouse amenity_court.png
mycp office government amenity_public_building.png
mycp amenity public_building amenity_public_building.png
mycp amenity community_centre amenity_public_building.png
mycp amenity social_centre amenity_public_building.png
mycp amenity library amenity_library.png


## Education
mygroup education education_university.png
mycp amenity kindergarten education_nursery2.png
mycp amenity school education_school.png
mycp amenity college education_college.png
mycp amenity university education_university.png


## Man made
mygroup man_made power_station_wind2.png
mycp power tower functional-icons_power_tower.png
mycp power tower_small functional-icons_power_tower_small.png
mycp power tower_big functional-icons_power_tower_big.png
mycp power station power_station.png
mycp power substation power_transformer2.png
mycp power station_coal power_station_coal.png
mycp power station_gas power_station_gas.png
mycp power station_nuclear power_station_nuclear.png
mycp power station_solar power_station_solar.png
mycp power station_wind power_station_wind.png
mycp power station_water power_station_water2.png
mycp power station_geothermal power_station_geothermal.png
mycp power station_oil power_station_oil.png
mycp man_made chimney poi_chimney.png
mycp tower_type communication functional-icons_tower_communications2.png
mycp tower_type communication_night functional-icons_tower_communications2_night.png
mycp man_made water_tower poi_water_tower.png
mycp man_made mineshaft poi_mine.png
mycp man_made windmill poi_windmill.png
mycp man_made petroleum_well poi_petroleum_well.png
mycp man_made crane poi_crane.png
mycp man_made adit poi_adit.png
mycp man_made observatory poi_observatory.png
mycp man_made observatory_astronomical poi_observatory_astronomical.png
mycp amenity hunting_stand poi_hunting_stand.png
mycp railway buffer_stop poi_buffer_stop.png
mygroup military poi_military_bunker.png


## Food and Drink
mygroup restaurants food_restaurant.png
mygroup sustenance food_fastfood.png
mycp amenity restaurant food_restaurant.png
mycp amenity cafe food_cafe.png
mycp amenity fast_food food_fastfood.png
mycp amenity food_court food_fastfood.png
mycp amenity pub food_pub.png
mycp amenity bar food_bar.png
mycp amenity biergarten food_biergarten.png
mycp amenity ice_cream food_ice_cream.png
mycp amenity drinking_water food_drinkingtap.png
mycp man_made water_well food_water_well.png

## Seamarks
mygroup seamark icons8_sail_boat.png
mycp seamark buoy_blackredblack_conical seamark_buoy_blackredblack_conical.png
mycp seamark buoy_blackredblack_pillar seamark_buoy_blackredblack_pillar.png
mycp seamark buoy_blackredblack_spar seamark_buoy_blackredblack_spar.png
mycp seamark buoy_blackredblack_spherical seamark_buoy_blackredblack_spherical.png

mycp seamark buoy_red_conical seamark_buoy_red_conical.png
mycp seamark buoy_red_barrel seamark_buoy_red_barrel.png
mycp seamark buoy_red_can seamark_buoy_red_can.png
mycp seamark buoy_red_pillar seamark_buoy_red_pillar.png
mycp seamark buoy_red_spar seamark_buoy_red_spar.png
mycp seamark buoy_red_spherical seamark_buoy_red_spherical.png
mycp seamark buoy_green_conical seamark_buoy_green_conical.png
mycp seamark buoy_green_barrel seamark_buoy_green_barrel.png
mycp seamark buoy_green_can seamark_buoy_green_can.png
mycp seamark buoy_green_pillar seamark_buoy_green_pillar.png
mycp seamark buoy_green_spar seamark_buoy_green_spar.png
mycp seamark buoy_green_spherical seamark_buoy_green_spherical.png
mycp seamark buoy_yellow_conical seamark_buoy_yellow_conical.png
mycp seamark buoy_yellow_barrel seamark_buoy_yellow_barrel.png
mycp seamark buoy_yellow_can seamark_buoy_yellow_can.png
mycp seamark buoy_yellow_pillar seamark_buoy_yellow_pillar.png
mycp seamark buoy_yellow_spar seamark_buoy_yellow_spar.png
mycp seamark buoy_yellow_spherical seamark_buoy_yellow_spherical.png
mycp seamark buoy_yellow_super_buoy seamark_buoy_yellow_super_buoy.png
mycp seamark buoy_white_conical seamark_buoy_white_conical.png
mycp seamark buoy_white_barrel seamark_buoy_white_barrel.png
mycp seamark buoy_white_can seamark_buoy_white_can.png
mycp seamark buoy_white_pillar seamark_buoy_white_pillar.png
mycp seamark buoy_white_spar seamark_buoy_white_spar.png
mycp seamark buoy_white_spherical seamark_buoy_white_spherical.png
mycp seamark buoy_white_super_buoy seamark_buoy_white_super_buoy.png

mycp seamark buoy_whiteyellow_spherical_cross seamark_buoy_whiteyellow_spherical_cross.png

mycp seamark buoy_yellow_installation seamark_buoy_yellow_installation.png

mycp seamark buoy_redwhite_pillar_vertical seamark_buoy_redwhite_pillar_vertical.png
mycp seamark buoy_redwhite_spherical_vertical seamark_buoy_redwhite_spherical_vertical.png
mycp seamark buoy_redwhite_spar_vertical seamark_buoy_redwhite_spar_vertical.png
mycp seamark buoy_redwhite_spar_horizontal seamark_buoy_redwhite_spar_horizontal.png

mycp seamark buoy_blackyellowblack_can seamark_buoy_blackyellowblack_can.png
mycp seamark buoy_blackyellowblack_conical seamark_buoy_blackyellowblack_conical.png
mycp seamark buoy_blackyellowblack_pillar seamark_buoy_blackyellowblack_pillar.png
mycp seamark buoy_blackyellowblack_spar seamark_buoy_blackyellowblack_spar.png
mycp seamark buoy_blackyellow_can seamark_buoy_blackyellow_can.png
mycp seamark buoy_blackyellow_conical seamark_buoy_blackyellow_conical.png
mycp seamark buoy_blackyellow_pillar seamark_buoy_blackyellow_pillar.png
mycp seamark buoy_blackyellow_spar seamark_buoy_blackyellow_spar.png
mycp seamark buoy_yellowblack_can seamark_buoy_yellowblack_can.png
mycp seamark buoy_yellowblack_conical seamark_buoy_yellowblack_conical.png
mycp seamark buoy_yellowblack_pillar seamark_buoy_yellowblack_pillar.png
mycp seamark buoy_yellowblack_spar seamark_buoy_yellowblack_spar.png
mycp seamark buoy_yellowblackyellow_can seamark_buoy_yellowblackyellow_can.png
mycp seamark buoy_yellowblackyellow_conical seamark_buoy_yellowblackyellow_conical.png
mycp seamark buoy_yellowblackyellow_pillar seamark_buoy_yellowblackyellow_pillar.png
mycp seamark buoy_yellowblackyellow_spar seamark_buoy_yellowblackyellow_spar.png

mycp seamark buoy_redgreenred_pillar_horizontal seamark_buoy_redgreenred_pillar_horizontal.png
mycp seamark buoy_redgreenred_can_horizontal seamark_buoy_redgreenred_can_horizontal.png
mycp seamark buoy_redgreenred_spar_horizontal seamark_buoy_redgreenred_spar_horizontal.png
mycp seamark buoy_redgreenred_spherical_horizontal seamark_buoy_redgreenred_spherical_horizontal.png

mycp seamark buoy_redwhiteredwhite_spar_horizontal seamark_buoy_redwhiteredwhite_spar_horizontal.png
mycp seamark buoy_redwhiteredwhite_can_horizontal seamark_buoy_redwhiteredwhite_can_horizontal.png

mycp seamark buoy_whiteredwhitered_spar_horizontal seamark_buoy_whiteredwhitered_spar_horizontal.png
mycp seamark buoy_whitegreenwhitegreen_spar_horizontal seamark_buoy_whitegreenwhitegreen_spar_horizontal.png
mycp seamark buoy_greenwhite_spar_horizontal seamark_buoy_greenwhite_spar_horizontal.png

mycp seamark buoy_greenwhitegreenwhite_conical_horizontal seamark_buoy_greenwhitegreenwhite_conical_horizontal.png
mycp seamark buoy_greenwhitegreenwhite_spar_horizontal seamark_buoy_greenwhitegreenwhite_spar_horizontal.png

mycp seamark buoy_greenredgreen_conical_horizontal seamark_buoy_greenredgreen_conical_horizontal.png
mycp seamark buoy_greenredgreen_can_horizontal seamark_buoy_greenredgreen_can_horizontal.png
mycp seamark buoy_greenredgreen_pillar_horizontal seamark_buoy_greenredgreen_pillar_horizontal.png
mycp seamark buoy_greenredgreen_spar_horizontal seamark_buoy_greenredgreen_spar_horizontal.png
mycp seamark buoy_greenredgreen_spherical_horizontal seamark_buoy_greenredgreen_spherical_horizontal.png

mycp seamark beacon_pile seamark_beacon_pile.png
mycp seamark beacon_stake seamark_beacon_stake.png
mycp seamark beacon_tower seamark_beacon_tower.png
mycp seamark beacon_cairn seamark_beacon_cairn.png
mycp seamark beacon_pillar seamark_beacon_pillar.png
mycp seamark beacon_perch_port seamark_beacon_perch_port.png
mycp seamark beacon_perch_starboard seamark_beacon_perch_starboard.png

mycp seamark beacon_red_perch_port seamark_beacon_red_perch_port.png
mycp seamark beacon_green_perch_port seamark_beacon_green_perch_port.png
mycp seamark beacon_red_perch_starboard seamark_beacon_red_perch_starboard.png
mycp seamark beacon_green_perch_starboard seamark_beacon_green_perch_starboard.png

mycp seamark beacon_black_pillar seamark_beacon_black_pillar.png
mycp seamark beacon_green_pillar seamark_beacon_green_pillar.png
mycp seamark beacon_green_stake seamark_beacon_green_stake.png
mycp seamark beacon_green_tower seamark_beacon_green_tower.png
mycp seamark beacon_greenwhitegreenwhite_stake seamark_beacon_greenwhitegreenwhite_stake.png
mycp seamark beacon_greenwhitegreenwhite_tower seamark_beacon_greenwhitegreenwhite_tower.png
mycp seamark beacon_greenwhite_stake seamark_beacon_greenwhite_stake.png
mycp seamark beacon_greenwhite_tower seamark_beacon_greenwhite_tower.png
mycp seamark beacon_red_pillar seamark_beacon_red_pillar.png
mycp seamark beacon_red_stake seamark_beacon_red_stake.png
mycp seamark beacon_red_tower seamark_beacon_red_tower.png
mycp seamark beacon_redwhite_stake seamark_beacon_redwhite_stake.png
mycp seamark beacon_redwhite_tower seamark_beacon_redwhite_tower.png
mycp seamark beacon_whitegreen_stake seamark_beacon_whitegreen_stake.png
mycp seamark beacon_whitegreen_tower seamark_beacon_whitegreen_tower.png
mycp seamark beacon_whitegreenwhitegreen_tower seamark_beacon_whitegreenwhitegreen_tower.png
mycp seamark beacon_whitered_stake seamark_beacon_whitered_stake.png
mycp seamark beacon_whitered_tower seamark_beacon_whitered_tower.png

mycp seamark beacon_blackyellowblack_tower seamark_beacon_blackyellowblack_tower.png
mycp seamark beacon_yellowblackyellow_tower seamark_beacon_yellowblackyellow_tower.png
mycp seamark beacon_blackyellow_tower seamark_beacon_blackyellow_tower.png
mycp seamark beacon_yellowblack_tower seamark_beacon_yellowblack_tower.png
mycp seamark beacon_blackyellowblack_stake seamark_beacon_blackyellowblack_stake.png
mycp seamark beacon_yellowblackyellow_stake seamark_beacon_yellowblackyellow_stake.png
mycp seamark beacon_blackyellow_stake seamark_beacon_blackyellow_stake.png
mycp seamark beacon_yellowblack_stake seamark_beacon_yellowblack_stake.png

mycp seamark beacon_blackredblack_tower seamark_beacon_blackredblack_tower.png
mycp seamark beacon_blackredblack_stake seamark_beacon_blackredblack_stake.png
mycp seamark beacon_blackredblack_pile seamark_beacon_blackredblack_pile.png

mycp seamark beacon_yellow_tower seamark_beacon_yellow_tower.png
mycp seamark beacon_yellow_stake seamark_beacon_yellow_stake.png
mycp seamark beacon_yellow_pile seamark_beacon_yellow_pile.png

mycp seamark beacon_white_tower seamark_beacon_white_tower.png
mycp seamark beacon_white_stake seamark_beacon_white_stake.png
mycp seamark beacon_white_pile seamark_beacon_white_pile.png

mycp seamark beacon_black_tower seamark_beacon_black_tower.png

mycp seamark beacon_whiteredwhiteorange_pile seamark_beacon_whiteredwhiteorange_pile.png

mycp seamark beacon_redwhite_tower_vertical seamark_beacon_redwhite_tower_vertical.png
mycp seamark beacon_redwhite_pole_vertical seamark_beacon_redwhite_pole_vertical.png

mycp seamark light_float_red seamark_light_float_red.png
mycp seamark light_float_green seamark_light_float_green.png
mycp seamark light_float_redwhite_vertical seamark_light_float_redwhite_vertical.png

mycp seamark light_vessel seamark_light_vessel.png

mycp seamark topmark_oblique_red_board seamark_topmark_oblique_red_board.png
mycp seamark topmark_oblique_red_conepointdown seamark_topmark_oblique_red_conepointdown.png
mycp seamark topmark_oblique_red_conepointup seamark_topmark_oblique_red_conepointup.png
mycp seamark topmark_oblique_red_cylinder seamark_topmark_oblique_red_cylinder.png
mycp seamark topmark_oblique_red_rhombus seamark_topmark_oblique_red_rhombus.png
mycp seamark topmark_oblique_red_sphere seamark_topmark_oblique_red_sphere.png
mycp seamark topmark_oblique_red_xshape seamark_topmark_oblique_red_xshape.png

mycp seamark topmark_oblique_green_board seamark_topmark_oblique_green_board.png
mycp seamark topmark_oblique_green_conepointdown seamark_topmark_oblique_green_conepointdown.png
mycp seamark topmark_oblique_green_conepointup seamark_topmark_oblique_green_conepointup.png
mycp seamark topmark_oblique_green_cylinder seamark_topmark_oblique_green_cylinder.png
mycp seamark topmark_oblique_green_sphere seamark_topmark_oblique_green_sphere.png
mycp seamark topmark_oblique_green_xshape seamark_topmark_oblique_green_xshape.png

mycp seamark topmark_oblique_black_conepointdown seamark_topmark_oblique_black_conepointdown.png
mycp seamark topmark_oblique_black_conepointup seamark_topmark_oblique_black_conepointup.png
mycp seamark topmark_oblique_black_cylinder seamark_topmark_oblique_black_cylinder.png
mycp seamark topmark_oblique_black_rhombus seamark_topmark_oblique_black_rhombus.png
mycp seamark topmark_oblique_black_sphere seamark_topmark_oblique_black_sphere.png
mycp seamark topmark_oblique_black_xshape seamark_topmark_oblique_black_xshape.png

mycp seamark topmark_oblique_yellow_conepointdown seamark_topmark_oblique_yellow_conepointdown.png
mycp seamark topmark_oblique_yellow_conepointup seamark_topmark_oblique_yellow_conepointup.png
mycp seamark topmark_oblique_yellow_cylinder seamark_topmark_oblique_yellow_cylinder.png
mycp seamark topmark_oblique_yellow_rhombus seamark_topmark_oblique_yellow_rhombus.png
mycp seamark topmark_oblique_yellow_sphere seamark_topmark_oblique_yellow_sphere.png
mycp seamark topmark_oblique_yellow_xshape seamark_topmark_oblique_yellow_xshape.png

mycp seamark topmark_oblique_redwhitered_board seamark_topmark_oblique_redwhitered_board.png
mycp seamark topmark_oblique_redwhitered_conepointdown seamark_topmark_oblique_redwhitered_conepointdown.png
mycp seamark topmark_oblique_redwhitered_cylinder seamark_topmark_oblique_redwhitered_cylinder.png

mycp seamark topmark_oblique_whitered_board_border seamark_topmark_oblique_whitered_board_border.png

mycp seamark topmark_oblique_black_2conesbasetogether seamark_topmark_oblique_black_2conesbasetogether.png
mycp seamark topmark_oblique_black_2conesdown seamark_topmark_oblique_black_2conesdown.png
mycp seamark topmark_oblique_black_2conespointtogether seamark_topmark_oblique_black_2conespointtogether.png
mycp seamark topmark_oblique_black_2conesup seamark_topmark_oblique_black_2conesup.png
mycp seamark topmark_oblique_black_2spheres seamark_topmark_oblique_black_2spheres.png
mycp seamark topmark_oblique_yellow_2conespointtogether seamark_topmark_oblique_yellow_2conespointtogether.png

mycp seamark topmark_vertical_black_2conesbasetogether seamark_topmark_vertical_black_2conesbasetogether.png
mycp seamark topmark_vertical_black_2conesdown seamark_topmark_vertical_black_2conesdown.png
mycp seamark topmark_vertical_black_2conespointtogether seamark_topmark_vertical_black_2conespointtogether.png
mycp seamark topmark_vertical_black_2conesup seamark_topmark_vertical_black_2conesup.png

mycp seamark topmark_vertical_black_2spheres seamark_topmark_vertical_black_2spheres.png
mycp seamark topmark_vertical_black_conepointdown seamark_topmark_vertical_black_conepointdown.png
mycp seamark topmark_vertical_black_conepointup seamark_topmark_vertical_black_conepointup.png
mycp seamark topmark_vertical_black_cylinder seamark_topmark_vertical_black_cylinder.png
mycp seamark topmark_vertical_black_rhombus seamark_topmark_vertical_black_rhombus.png
mycp seamark topmark_vertical_black_sphere seamark_topmark_vertical_black_sphere.png
mycp seamark topmark_vertical_black_xshape seamark_topmark_vertical_black_xshape.png

mycp seamark topmark_vertical_green_board seamark_topmark_vertical_green_board.png
mycp seamark topmark_vertical_green_conepointdown seamark_topmark_vertical_green_conepointdown.png
mycp seamark topmark_vertical_green_conepointup seamark_topmark_vertical_green_conepointup.png
mycp seamark topmark_vertical_green_cylinder seamark_topmark_vertical_green_cylinder.png
mycp seamark topmark_vertical_green_sphere seamark_topmark_vertical_green_sphere.png
mycp seamark topmark_vertical_green_xshape seamark_topmark_vertical_green_xshape.png

mycp seamark topmark_vertical_greenwhite_rhombus_vertical seamark_topmark_vertical_greenwhite_rhombus_vertical.png

mycp seamark topmark_vertical_red_board seamark_topmark_vertical_red_board.png
mycp seamark topmark_vertical_red_conepointdown seamark_topmark_vertical_red_conepointdown.png
mycp seamark topmark_vertical_red_conepointup seamark_topmark_vertical_red_conepointup.png
mycp seamark topmark_vertical_red_cylinder seamark_topmark_vertical_red_cylinder.png
mycp seamark topmark_vertical_red_rhombus seamark_topmark_vertical_red_rhombus.png
mycp seamark topmark_vertical_red_sphere seamark_topmark_vertical_red_sphere.png
mycp seamark topmark_vertical_red_xshape seamark_topmark_vertical_red_xshape.png

mycp seamark topmark_vertical_redwhitered_board seamark_topmark_vertical_redwhitered_board.png
mycp seamark topmark_vertical_redwhitered_conepointdown seamark_topmark_vertical_redwhitered_conepointdown.png
mycp seamark topmark_vertical_redwhitered_cylinder seamark_topmark_vertical_redwhitered_cylinder.png

mycp seamark topmark_vertical_whitered_board_border seamark_topmark_vertical_whitered_board_border.png
mycp seamark topmark_vertical_whitered_conepointdown_border seamark_topmark_vertical_whitered_conepointdown_border.png

mycp seamark topmark_vertical_whitegreen_rhombus_border seamark_topmark_vertical_whitegreen_rhombus_border.png

mycp seamark topmark_vertical_whiteblack_board_border seamark_topmark_vertical_whiteblack_board_border.png

mycp seamark topmark_vertical_whiteblackwhite_rhombus_vertical seamark_topmark_vertical_whiteblackwhite_rhombus_vertical.png

mycp seamark topmark_vertical_yellow_2conespointtogether seamark_topmark_vertical_yellow_2conespointtogether.png
mycp seamark topmark_vertical_yellow_conepointdown seamark_topmark_vertical_yellow_conepointdown.png
mycp seamark topmark_vertical_yellow_conepointup seamark_topmark_vertical_yellow_conepointup.png
mycp seamark topmark_vertical_yellow_cylinder seamark_topmark_vertical_yellow_cylinder.png
mycp seamark topmark_vertical_yellow_rhombus seamark_topmark_vertical_yellow_rhombus.png
mycp seamark topmark_vertical_yellow_sphere seamark_topmark_vertical_yellow_sphere.png
mycp seamark topmark_vertical_yellow_xshape seamark_topmark_vertical_yellow_xshape.png
mycp seamark topmark_vertical_yellow_cross seamark_topmark_vertical_yellow_cross.png

mycp seamark fog_signal_additional seamark_fog_signal_additional.png
mycp seamark fog_signal_additional_night seamark_fog_signal_additional_night.png

mycp seamark light_white seamark_shields_light_white.png
mycp seamark light_red seamark_shields_light_red.png
mycp seamark light_green seamark_shields_light_green.png
mycp seamark light_yellow seamark_shields_light_yellow.png
mycp seamark light_blue seamark_shields_light_blue.png
mycp seamark light_orange seamark_shields_light_orange.png
mycp seamark light_whitegreen seamark_shields_light_whitegreen.png
mycp seamark light_redgreen seamark_shields_light_redgreen.png
mycp seamark light_whitered seamark_shields_light_whitered.png
mycp seamark light_violet seamark_shields_light_violet.png

mycp seamark radar_reflector_additional seamark_radar_reflector_additional.png
mycp seamark radar_reflector_additional_night seamark_radar_reflector_additional_night.png

## Shops
mygroup car_aid shopping_car.png
mygroup food_shop shopping_convenience.png
mygroup shop shopping_department_store.png
mycp shop alcohol shopping_alcohol.png
mycp shop bakery shopping_bakery.png
mycp shop baby_goods shopping_baby.png
mycp shop bicycle shopping_bicycle.png
mycp shop books shopping_book2.png
mycp shop boutique shopping_clothes.png
mycp shop butcher shopping_butcher2.png
mycp shop car shopping_car.png
mycp shop car_repair shopping_car_repair.png
mycp shop car_parts shopping_car_parts.png
mycp shop clothes shopping_clothes.png
mycp clothes children shopping_clothes_children.png
mycp shop shoes shopping_shoes.png
mycp shop computer shopping_computer.png
mycp shop confectionery shopping_confectionery.png
mycp shop convenience shopping_convenience.png
mycp shop copyshop shopping_copyshop.png
mycp shop dairy shopping_dairy.png
mycp shop department_store shopping_department_store.png
mycp shop doityourself shopping_diy.png
mycp shop electronics shopping_hifi.png
mycp shop fashion shopping_clothes.png
mycp shop fishing shopping_tackle.png
mycp shop florist shopping_florist.png
mycp shop garden_centre shopping_garden_centre.png
mycp shop general shopping_convenience.png
mycp shop gift shopping_gift.png
mycp shop greengrocer shopping_greengrocer.png
mycp shop hairdresser shopping_hairdresser.png
mycp shop hardware shopping_diy.png
mycp shop hearing_aids shopping_hearing_aids.png
mycp shop jewelry shopping_jewelry2.png
mycp shop kiosk shopping_kiosk.png
mycp shop laundry shopping_laundrette.png
mycp shop mall shopping_department_store.png
mycp amenity marketplace shopping_marketplace.png
mycp shop mobile_phone shopping_mobile_phone.png
mycp shop motorcycle shopping_motorcycle.png
mycp shop musical_instrument shopping_music.png
mycp shop optician shopping_opticians.png
mycp shop outdoor shopping_tackle.png
mycp shop pet shopping_pet2.png
mycp shop seafood shopping_fish.png
mycp shop supermarket shopping_supermarket.png
mycp shop tobacco shopping_tobacco.png
mycp shop toys shopping_toys.png
mycp amenity vending_machine shopping_vending_machine.png
mycp shop video shopping_video_rental.png


# mygroup custom_id icons8 #TODO
mygroup user_defined icons8_user.png
mygroup osmwiki icons8_wikipedia.png
mygroup name_finder icons8_web_search.png
mycp osmand waypoint functional-icons_waypoint.png
mygroup null icons8_worldwide_location.png