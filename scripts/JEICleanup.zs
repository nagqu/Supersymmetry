#priority 999

//Removes fluids from other mods from showing up in JEI. This is so that all fluids in JEI will be be GregTech fluids,
//So all fluids will have temperature property, liquid/gas property, etc.

import mods.jei.JEI;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;

val itemRemovals as IItemStack[] = [
    <nuclearcraft:fluid_oxygen>,
    <nuclearcraft:fluid_oxygen_difluoride>,
    <qmd:fluid_liquid_oxygen>,
    <nuclearcraft:fluid_hydrogen>,
    <qmd:fluid_liquid_hydrogen>,
    <nuclearcraft:fluid_helium_3>,
    <nuclearcraft:fluid_helium>,
    <nuclearcraft:fluid_liquid_helium>,
    <nuclearcraft:fluid_tritium>,
    <nuclearcraft:fluid_deuterium>,
    <nuclearcraft:fluid_beryllium>,
    <nuclearcraft:fluid_boron_10>,
    <nuclearcraft:fluid_boron_11>,
    <nuclearcraft:fluid_lithium_6>,
    <nuclearcraft:fluid_lithium_7>,
    <nuclearcraft:fluid_steel>,
    <nuclearcraft:fluid_zirconium>,
    <nuclearcraft:fluid_manganese_dioxide>,
    <nuclearcraft:fluid_sulfur>,
    <nuclearcraft:fluid_ender>,
    <nuclearcraft:fluid_unsweetened_chocolate>,
    <nuclearcraft:fluid_dark_chocolate>,
    <nuclearcraft:fluid_milk_chocolate>,
    <nuclearcraft:fluid_sugar>,
    <nuclearcraft:fluid_gelatin>,
    <nuclearcraft:fluid_enderium>,
    <nuclearcraft:fluid_lead_platinum>,
    <nuclearcraft:fluid_ferroboron>,
    <nuclearcraft:fluid_tough>,
    <nuclearcraft:fluid_lif>,
    <nuclearcraft:fluid_hard_carbon>,
    <nuclearcraft:fluid_bef2>,
    <nuclearcraft:fluid_flibe>,
    <nuclearcraft:fluid_naoh>,
    <nuclearcraft:fluid_koh>,
    <nuclearcraft:fluid_sodium>,
    <nuclearcraft:fluid_potassium>,
    <nuclearcraft:fluid_bas>,
    <nuclearcraft:fluid_alugentum>,
    <nuclearcraft:fluid_alumina>,
    <nuclearcraft:fluid_molybdenum>,
    <nuclearcraft:fluid_ammonia>,
    <nuclearcraft:fluid_liquid_nitrogen>,
    <nuclearcraft:fluid_nitrogen>,
    <nuclearcraft:fluid_heavy_water>,
    <nuclearcraft:fluid_ethanol>,
    <nuclearcraft:fluid_methanol>,
    <nuclearcraft:fluid_fluorine>,
    <nuclearcraft:fluid_carbon_dioxide>,
    <nuclearcraft:fluid_carbon_monoxide>,
    <nuclearcraft:fluid_ethene>,
    <nuclearcraft:fluid_fluoromethane>,
    <nuclearcraft:fluid_diborane>,
    <nuclearcraft:fluid_sulfur_dioxide>,
    <nuclearcraft:fluid_sulfur_trioxide>,
    <nuclearcraft:fluid_hydrofluoric_acid>,
    <nuclearcraft:fluid_boric_acid>,
    <nuclearcraft:fluid_sulfuric_acid>,
    <nuclearcraft:fluid_boron_nitride_solution>,
    <nuclearcraft:fluid_fluorite_water>,
    <nuclearcraft:fluid_calcium_sulfate_solution>,
    <nuclearcraft:fluid_sodium_fluoride_solution>,
    <nuclearcraft:fluid_potassium_fluoride_solution>,
    <nuclearcraft:fluid_sodium_hydroxide_solution>,
    <nuclearcraft:fluid_potassium_hydroxide_solution>,
    <nuclearcraft:fluid_borax_solution>,
    <nuclearcraft:fluid_irradiated_borax_solution>,
    <nuclearcraft:fluid_ice>,
    <nuclearcraft:fluid_slurry_ice>,
    <nuclearcraft:fluid_chocolate_liquor>,
    <nuclearcraft:fluid_cocoa_butter>,
    <nuclearcraft:fluid_hydrated_gelatin>,
    <nuclearcraft:fluid_marshmallow>,
    <nuclearcraft:fluid_milk>,
    <nuclearcraft:fluid_steam>,
    <nuclearcraft:fluid_high_pressure_steam>,
    <nuclearcraft:fluid_exhaust_steam>,
    <nuclearcraft:fluid_low_pressure_steam>,
    <nuclearcraft:fluid_low_quality_steam>,
    <nuclearcraft:fluid_preheated_water>,
    <nuclearcraft:fluid_condensate_water>,
    <nuclearcraft:fluid_emergency_coolant>,
    <nuclearcraft:fluid_emergency_coolant_heated>,
    <nuclearcraft:fluid_arsenic>,
    <nuclearcraft:fluid_alugentum>,
    <industrialrenewal:steam>,
    <qmd:fluid_bismuth>,
    <qmd:fluid_polonium>,
    <qmd:fluid_radium>,
    <qmd:fluid_ytterbium>,
    <qmd:fluid_erbium>,
    <qmd:fluid_terbium>,
    <qmd:fluid_samarium>,
    <qmd:fluid_neodymium>,
    <qmd:fluid_yttrium>,
    <qmd:fluid_strontium>,
    <qmd:fluid_calcium>,
    <qmd:fluid_platinum>,
    <qmd:fluid_iridium>,
    <qmd:fluid_osmium>,
    <qmd:fluid_zinc>,
    <qmd:fluid_hafnium>,
    <qmd:fluid_nickel>,
    <qmd:fluid_cobalt>,
    <qmd:fluid_titanium>,
    <qmd:fluid_chromium>,
    <qmd:fluid_niobium>,
    <qmd:fluid_tungsten>,
    <qmd:fluid_nd_yag>,
    <qmd:fluid_yag>,
    <qmd:fluid_silicon>,
    <qmd:fluid_compressed_air>,
    <qmd:fluid_nitrogen_dioxide>,
    <qmd:fluid_nitric_oxide>,
    <qmd:fluid_chlorine>,
    <qmd:fluid_neon>,
    <qmd:fluid_argon>,
    <qmd:fluid_iodine>,
    <qmd:fluid_hot_mercury>,
    <qmd:fluid_mercury>,
    <qmd:fluid_liquid_argon>,
    <qmd:fluid_liquid_neon>,
    <qmd:fluid_hydrochloric_acid>,
    <qmd:fluid_nitric_acid>,
    <qmd:fluid_sodium_chloride_solution>,
    <qmd:fluid_sodium_nitrate_solution>,
    <qmd:fluid_lead_nitrate_solution>,
    <qmd:fluid_lead_tungstate_solution>,
    <qmd:fluid_sodium_tungstate_solution>,
    <nuclearcraft:fluid_coal>,
    <nuclearcraft:fluid_cryotheum>,
    <nuclearcraft:fluid_plasma>,
    <nuclearcraft:fluid_radaway>,
    <nuclearcraft:fluid_radaway_slow>,
    <nuclearcraft:fluid_redstone_ethanol>,
    <nuclearcraft:fluid_sic_vapor>,
    <nuclearcraft:fluid_nak>,
    <nuclearcraft:fluid_nak_hot>,
    <nuclearcraft:fluid_strontium_90>,
    <nuclearcraft:fluid_ruthenium_106>,
    <nuclearcraft:fluid_caesium_137>,
    <nuclearcraft:fluid_promethium_147>,
    <nuclearcraft:fluid_europium_155>,
    <nuclearcraft:ingot:5>,
    <trinity:fluid_deuterium-tritium_mixture>,
    <nuclearcraft:ingot:6>,
    <nuclearcraft:ingot:7>,
    <nuclearcraft:ingot:8>,
    <nuclearcraft:ingot:10>,
    <nuclearcraft:gem:1>,
    <nuclearcraft:gem:3>,
    <nuclearcraft:gem:2>,
    <nuclearcraft:gem:4>,
    <nuclearcraft:gem:5>,
    <nuclearcraft:gem:6>,
    <nuclearcraft:gem_dust:4>,
    <qmd:ingot:11>,
    <qmd:ingot:12>,
    <qmd:ingot:13>,
    <qmd:ingot2:2>,
    <techguns:basicore:3>,
    <techguns:basicore:4>,
    <libvulpes:productnugget:9>,
    <libvulpes:productingot:9>,
    <libvulpes:productplate:9>,
    <libvulpes:productsheet:9>,
    <libvulpes:ore0:9>,
    <libvulpes:metal0:9>,
    <qmd:chemical_dust>,
    <nuclearcraft:ingot_block:6>,
    <nuclearcraft:ingot_block:5>,
    <nuclearcraft:ingot_block:7>,
    <nuclearcraft:ingot_block:10>,
    <nuclearcraft:ingot_block:14>,
    <nuclearcraft:ingot_block:15>,
    <nuclearcraft:alloy:15>,
    <trinity:gem_witherite>,
    <trinity:fluid_witherite_water>,
    <trinity:fluid_nitric_oxide>,
    <trinity:fluid_nitrogen_dioxide>,
    <trinity:fluid_nitric_acid>,
    <trinity:fluid_barium_nitrate_solution>,
    <libvulpes:productboule:3>
];

for a in itemRemovals {
    JEI.hide(a);
}

val fluidRemovals as ILiquidStack[] = [
    <liquid:boron>,
    <liquid:uranium_238>,
    <liquid:uranium_233>,
    <liquid:plutonium_242>,
    <liquid:plutonium_238>,
    <liquid:neptunium_236>,
    <liquid:plutonium_239>,
    <liquid:neptunium_237>,
    <liquid:californium_249>,
    <liquid:berkelium_247>,
    <liquid:berkelium_248>,
    <liquid:americium_243>,
    <liquid:californium_252>,
    <liquid:californium_251>,
    <liquid:curium_243>,
    <liquid:californium_250>,
    <liquid:curium_247>,
    <liquid:curium_246>,
    <liquid:americium_241>,
    <liquid:curium_245>,
    <liquid:americium_242>,
    <liquid:lapis>,
    <liquid:end_stone>,
    <liquid:diamond>,
    <liquid:emerald>,
    <liquid:aluminum>,
    <liquid:obsidian>,
    <liquid:carobbiite>,
    <liquid:quartz>,
    <liquid:fluorite>,
    <liquid:villiaumite>,
    <liquid:rocketfuel>,
    <liquid:tnt>,
    <liquid:baratol>,
    <liquid:tbu>,
    <liquid:tbu_fluoride>,
    <liquid:tbu_fluoride_flibe>,
    <liquid:depleted_tbu>,
    <liquid:depleted_tbu_fluoride>,
    <liquid:depleted_tbu_fluoride_flibe>,
    <liquid:leu_233>,
    <liquid:leu_233_fluoride>,
    <liquid:leu_233_fluoride_flibe>,
    <liquid:depleted_leu_233>,
    <liquid:depleted_leu_233_fluoride>,
    <liquid:depleted_leu_233_fluoride_flibe>,
    <liquid:leu_235>,
    <liquid:leu_235_fluoride>,
    <liquid:leu_235_fluoride_flibe>,
    <liquid:depleted_leu_235>,
    <liquid:depleted_leu_235_fluoride>,
    <liquid:depleted_leu_235_fluoride_flibe>,
    <liquid:heu_233>,
    <liquid:heu_233_fluoride>,
    <liquid:heu_233_fluoride_flibe>,
    <liquid:depleted_heu_233>,
    <liquid:depleted_heu_233_fluoride>,
    <liquid:depleted_heu_233_fluoride_flibe>,
    <liquid:heu_235>,
    <liquid:heu_235_fluoride>,
    <liquid:heu_235_fluoride_flibe>,
    <liquid:depleted_heu_235>,
    <liquid:depleted_heu_235_fluoride>,
    <liquid:depleted_heu_235_fluoride_flibe>,
    <liquid:len_236>,
    <liquid:len_236_fluoride>,
    <liquid:len_236_fluoride_flibe>,
    <liquid:depleted_len_236>,
    <liquid:depleted_len_236_fluoride>,
    <liquid:depleted_len_236_fluoride_flibe>,
    <liquid:hen_236>,
    <liquid:hen_236_fluoride>,
    <liquid:hen_236_fluoride_flibe>,
    <liquid:depleted_hen_236>,
    <liquid:depleted_hen_236_fluoride>,
    <liquid:depleted_hen_236_fluoride_flibe>,
    <liquid:lep_239>,
    <liquid:lep_239_fluoride>,
    <liquid:lep_239_fluoride_flibe>,
    <liquid:depleted_lep_239>,
    <liquid:depleted_lep_239_fluoride>,
    <liquid:depleted_lep_239_fluoride_flibe>,
    <liquid:hep_239>,
    <liquid:hep_239_fluoride>,
    <liquid:hep_239_fluoride_flibe>,
    <liquid:depleted_hep_239>,
    <liquid:depleted_hep_239_fluoride>,
    <liquid:depleted_hep_239_fluoride_flibe>,
    <liquid:lep_241>,
    <liquid:lep_241_fluoride>,
    <liquid:lep_241_fluoride_flibe>,
    <liquid:depleted_lep_241>,
    <liquid:depleted_lep_241_fluoride>,
    <liquid:depleted_lep_241_fluoride_flibe>,
    <liquid:hep_241>,
    <liquid:hep_241_fluoride>,
    <liquid:hep_241_fluoride_flibe>,
    <liquid:depleted_hep_241>,
    <liquid:depleted_hep_241_fluoride>,
    <liquid:depleted_hep_241_fluoride_flibe>,
    <liquid:lea_242>,
    <liquid:lea_242_fluoride>,
    <liquid:lea_242_fluoride_flibe>,
    <liquid:depleted_lea_242>,
    <liquid:depleted_lea_242_fluoride>,
    <liquid:depleted_lea_242_fluoride_flibe>,
    <liquid:hea_242>,
    <liquid:hea_242_fluoride>,
    <liquid:hea_242_fluoride_flibe>,
    <liquid:depleted_hea_242>,
    <liquid:depleted_hea_242_fluoride>,
    <liquid:depleted_hea_242_fluoride_flibe>,
    <liquid:lecm_243>,
    <liquid:lecm_243_fluoride>,
    <liquid:lecm_243_fluoride_flibe>,
    <liquid:depleted_lecm_243>,
    <liquid:depleted_lecm_243_fluoride>,
    <liquid:depleted_lecm_243_fluoride_flibe>,
    <liquid:hecm_243>,
    <liquid:hecm_243_fluoride>,
    <liquid:hecm_243_fluoride_flibe>,
    <liquid:depleted_hecm_243>,
    <liquid:depleted_hecm_243_fluoride>,
    <liquid:depleted_hecm_243_fluoride_flibe>,
    <liquid:lecm_245>,
    <liquid:lecm_245_fluoride>,
    <liquid:lecm_245_fluoride_flibe>,
    <liquid:depleted_lecm_245>,
    <liquid:depleted_lecm_245_fluoride>,
    <liquid:depleted_lecm_245_fluoride_flibe>,
    <liquid:hecm_245>,
    <liquid:hecm_245_fluoride>,
    <liquid:hecm_245_fluoride_flibe>,
    <liquid:depleted_hecm_245>,
    <liquid:depleted_hecm_245_fluoride>,
    <liquid:depleted_hecm_245_fluoride_flibe>,
    <liquid:lecm_247>,
    <liquid:lecm_247_fluoride>,
    <liquid:lecm_247_fluoride_flibe>,
    <liquid:depleted_lecm_247>,
    <liquid:depleted_lecm_247_fluoride>,
    <liquid:depleted_lecm_247_fluoride_flibe>,
    <liquid:hecm_247>,
    <liquid:hecm_247_fluoride>,
    <liquid:hecm_247_fluoride_flibe>,
    <liquid:depleted_hecm_247>,
    <liquid:depleted_hecm_247_fluoride>,
    <liquid:depleted_hecm_247_fluoride_flibe>,
    <liquid:leb_248>,
    <liquid:leb_248_fluoride>,
    <liquid:leb_248_fluoride_flibe>,
    <liquid:depleted_leb_248>,
    <liquid:depleted_leb_248_fluoride>,
    <liquid:depleted_leb_248_fluoride_flibe>,
    <liquid:heb_248>,
    <liquid:heb_248_fluoride>,
    <liquid:heb_248_fluoride_flibe>,
    <liquid:depleted_heb_248>,
    <liquid:depleted_heb_248_fluoride>,
    <liquid:depleted_heb_248_fluoride_flibe>,
    <liquid:lecf_249>,
    <liquid:lecf_249_fluoride>,
    <liquid:lecf_249_fluoride_flibe>,
    <liquid:depleted_lecf_249>,
    <liquid:depleted_lecf_249_fluoride>,
    <liquid:depleted_lecf_249_fluoride_flibe>,
    <liquid:hecf_249>,
    <liquid:hecf_249_fluoride>,
    <liquid:hecf_249_fluoride_flibe>,
    <liquid:depleted_hecf_249>,
    <liquid:depleted_hecf_249_fluoride>,
    <liquid:depleted_hecf_249_fluoride_flibe>,
    <liquid:lecf_251>,
    <liquid:lecf_251_fluoride>,
    <liquid:lecf_251_fluoride_flibe>,
    <liquid:depleted_lecf_251>,
    <liquid:depleted_lecf_251_fluoride>,
    <liquid:depleted_lecf_251_fluoride_flibe>,
    <liquid:hecf_251>,
    <liquid:hecf_251_fluoride>,
    <liquid:hecf_251_fluoride_flibe>,
    <liquid:depleted_hecf_251>,
    <liquid:depleted_hecf_251_fluoride>,
    <liquid:depleted_hecf_251_fluoride_flibe>,
    <liquid:mix_239>,
    <liquid:mix_241>,
    <liquid:depleted_mix_239>,
    <liquid:depleted_mix_241>,
    <liquid:mix_239_fluoride>,
    <liquid:mix_239_fluoride_flibe>,
    <liquid:mix_241_fluoride>,
    <liquid:mix_241_fluoride_flibe>,
    <liquid:depleted_mix_239_fluoride>,
    <liquid:depleted_mix_239_fluoride_flibe>,
    <liquid:depleted_mix_241_fluoride>,
    <liquid:depleted_mix_241_fluoride_flibe>
];

for a in fluidRemovals {
    JEI.hide(a);
}

//Rename aluminum blocks
<libvulpes:coil0:9>.displayName = "Aluminium Coil";
<nuclearcraft:turbine_dynamo_coil:2>.displayName = "Aluminium Turbine Dynamo Coil";
<qmd:accelerator_cooler2:6>.displayName = "Aluminium Accelerator Cooler";
<nuclearcraft:fission_heater_port2:6>.displayName = "Aluminium Fission Cooler Heater Port";
<nuclearcraft:solid_fission_sink2:6>.displayName = "Aluminium Fission Heat Sink";
<nuclearcraft:salt_fission_heater2:6>.displayName = "Aluminium Fission Cooler Heater";