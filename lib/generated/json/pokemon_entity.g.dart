import 'package:quiz/generated/json/base/json_convert_content.dart';
import 'package:quiz/test/pokemon_entity.dart';

PokemonEntity $PokemonEntityFromJson(Map<String, dynamic> json) {
	final PokemonEntity pokemonEntity = PokemonEntity();
	final List<PokemonAbilities>? abilities = jsonConvert.convertListNotNull<PokemonAbilities>(json['abilities']);
	if (abilities != null) {
		pokemonEntity.abilities = abilities;
	}
	final int? baseExperience = jsonConvert.convert<int>(json['base_experience']);
	if (baseExperience != null) {
		pokemonEntity.baseExperience = baseExperience;
	}
	final List<PokemonForms>? forms = jsonConvert.convertListNotNull<PokemonForms>(json['forms']);
	if (forms != null) {
		pokemonEntity.forms = forms;
	}
	final List<PokemonGameIndices>? gameIndices = jsonConvert.convertListNotNull<PokemonGameIndices>(json['game_indices']);
	if (gameIndices != null) {
		pokemonEntity.gameIndices = gameIndices;
	}
	final int? height = jsonConvert.convert<int>(json['height']);
	if (height != null) {
		pokemonEntity.height = height;
	}
	final List<dynamic>? heldItems = jsonConvert.convertListNotNull<dynamic>(json['held_items']);
	if (heldItems != null) {
		pokemonEntity.heldItems = heldItems;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		pokemonEntity.id = id;
	}
	final bool? isDefault = jsonConvert.convert<bool>(json['is_default']);
	if (isDefault != null) {
		pokemonEntity.isDefault = isDefault;
	}
	final String? locationAreaEncounters = jsonConvert.convert<String>(json['location_area_encounters']);
	if (locationAreaEncounters != null) {
		pokemonEntity.locationAreaEncounters = locationAreaEncounters;
	}
	final List<PokemonMoves>? moves = jsonConvert.convertListNotNull<PokemonMoves>(json['moves']);
	if (moves != null) {
		pokemonEntity.moves = moves;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		pokemonEntity.name = name;
	}
	final int? order = jsonConvert.convert<int>(json['order']);
	if (order != null) {
		pokemonEntity.order = order;
	}
	final List<dynamic>? pastTypes = jsonConvert.convertListNotNull<dynamic>(json['past_types']);
	if (pastTypes != null) {
		pokemonEntity.pastTypes = pastTypes;
	}
	final PokemonSpecies? species = jsonConvert.convert<PokemonSpecies>(json['species']);
	if (species != null) {
		pokemonEntity.species = species;
	}
	final PokemonSprites? sprites = jsonConvert.convert<PokemonSprites>(json['sprites']);
	if (sprites != null) {
		pokemonEntity.sprites = sprites;
	}
	final List<PokemonStats>? stats = jsonConvert.convertListNotNull<PokemonStats>(json['stats']);
	if (stats != null) {
		pokemonEntity.stats = stats;
	}
	final List<PokemonTypes>? types = jsonConvert.convertListNotNull<PokemonTypes>(json['types']);
	if (types != null) {
		pokemonEntity.types = types;
	}
	final int? weight = jsonConvert.convert<int>(json['weight']);
	if (weight != null) {
		pokemonEntity.weight = weight;
	}
	return pokemonEntity;
}

Map<String, dynamic> $PokemonEntityToJson(PokemonEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['abilities'] =  entity.abilities?.map((v) => v.toJson()).toList();
	data['base_experience'] = entity.baseExperience;
	data['forms'] =  entity.forms?.map((v) => v.toJson()).toList();
	data['game_indices'] =  entity.gameIndices?.map((v) => v.toJson()).toList();
	data['height'] = entity.height;
	data['held_items'] =  entity.heldItems;
	data['id'] = entity.id;
	data['is_default'] = entity.isDefault;
	data['location_area_encounters'] = entity.locationAreaEncounters;
	data['moves'] =  entity.moves?.map((v) => v.toJson()).toList();
	data['name'] = entity.name;
	data['order'] = entity.order;
	data['past_types'] =  entity.pastTypes;
	data['species'] = entity.species?.toJson();
	data['sprites'] = entity.sprites?.toJson();
	data['stats'] =  entity.stats?.map((v) => v.toJson()).toList();
	data['types'] =  entity.types?.map((v) => v.toJson()).toList();
	data['weight'] = entity.weight;
	return data;
}

PokemonAbilities $PokemonAbilitiesFromJson(Map<String, dynamic> json) {
	final PokemonAbilities pokemonAbilities = PokemonAbilities();
	final PokemonAbilitiesAbility? ability = jsonConvert.convert<PokemonAbilitiesAbility>(json['ability']);
	if (ability != null) {
		pokemonAbilities.ability = ability;
	}
	final bool? isHidden = jsonConvert.convert<bool>(json['is_hidden']);
	if (isHidden != null) {
		pokemonAbilities.isHidden = isHidden;
	}
	final int? slot = jsonConvert.convert<int>(json['slot']);
	if (slot != null) {
		pokemonAbilities.slot = slot;
	}
	return pokemonAbilities;
}

Map<String, dynamic> $PokemonAbilitiesToJson(PokemonAbilities entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ability'] = entity.ability?.toJson();
	data['is_hidden'] = entity.isHidden;
	data['slot'] = entity.slot;
	return data;
}

PokemonAbilitiesAbility $PokemonAbilitiesAbilityFromJson(Map<String, dynamic> json) {
	final PokemonAbilitiesAbility pokemonAbilitiesAbility = PokemonAbilitiesAbility();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		pokemonAbilitiesAbility.name = name;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		pokemonAbilitiesAbility.url = url;
	}
	return pokemonAbilitiesAbility;
}

Map<String, dynamic> $PokemonAbilitiesAbilityToJson(PokemonAbilitiesAbility entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['url'] = entity.url;
	return data;
}

PokemonForms $PokemonFormsFromJson(Map<String, dynamic> json) {
	final PokemonForms pokemonForms = PokemonForms();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		pokemonForms.name = name;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		pokemonForms.url = url;
	}
	return pokemonForms;
}

Map<String, dynamic> $PokemonFormsToJson(PokemonForms entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['url'] = entity.url;
	return data;
}

PokemonGameIndices $PokemonGameIndicesFromJson(Map<String, dynamic> json) {
	final PokemonGameIndices pokemonGameIndices = PokemonGameIndices();
	final int? gameIndex = jsonConvert.convert<int>(json['game_index']);
	if (gameIndex != null) {
		pokemonGameIndices.gameIndex = gameIndex;
	}
	final PokemonGameIndicesVersion? version = jsonConvert.convert<PokemonGameIndicesVersion>(json['version']);
	if (version != null) {
		pokemonGameIndices.version = version;
	}
	return pokemonGameIndices;
}

Map<String, dynamic> $PokemonGameIndicesToJson(PokemonGameIndices entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['game_index'] = entity.gameIndex;
	data['version'] = entity.version?.toJson();
	return data;
}

PokemonGameIndicesVersion $PokemonGameIndicesVersionFromJson(Map<String, dynamic> json) {
	final PokemonGameIndicesVersion pokemonGameIndicesVersion = PokemonGameIndicesVersion();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		pokemonGameIndicesVersion.name = name;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		pokemonGameIndicesVersion.url = url;
	}
	return pokemonGameIndicesVersion;
}

Map<String, dynamic> $PokemonGameIndicesVersionToJson(PokemonGameIndicesVersion entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['url'] = entity.url;
	return data;
}

PokemonMoves $PokemonMovesFromJson(Map<String, dynamic> json) {
	final PokemonMoves pokemonMoves = PokemonMoves();
	final PokemonMovesMove? move = jsonConvert.convert<PokemonMovesMove>(json['move']);
	if (move != null) {
		pokemonMoves.move = move;
	}
	final List<PokemonMovesVersionGroupDetails>? versionGroupDetails = jsonConvert.convertListNotNull<PokemonMovesVersionGroupDetails>(json['version_group_details']);
	if (versionGroupDetails != null) {
		pokemonMoves.versionGroupDetails = versionGroupDetails;
	}
	return pokemonMoves;
}

Map<String, dynamic> $PokemonMovesToJson(PokemonMoves entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['move'] = entity.move?.toJson();
	data['version_group_details'] =  entity.versionGroupDetails?.map((v) => v.toJson()).toList();
	return data;
}

PokemonMovesMove $PokemonMovesMoveFromJson(Map<String, dynamic> json) {
	final PokemonMovesMove pokemonMovesMove = PokemonMovesMove();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		pokemonMovesMove.name = name;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		pokemonMovesMove.url = url;
	}
	return pokemonMovesMove;
}

Map<String, dynamic> $PokemonMovesMoveToJson(PokemonMovesMove entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['url'] = entity.url;
	return data;
}

PokemonMovesVersionGroupDetails $PokemonMovesVersionGroupDetailsFromJson(Map<String, dynamic> json) {
	final PokemonMovesVersionGroupDetails pokemonMovesVersionGroupDetails = PokemonMovesVersionGroupDetails();
	final int? levelLearnedAt = jsonConvert.convert<int>(json['level_learned_at']);
	if (levelLearnedAt != null) {
		pokemonMovesVersionGroupDetails.levelLearnedAt = levelLearnedAt;
	}
	final PokemonMovesVersionGroupDetailsMoveLearnMethod? moveLearnMethod = jsonConvert.convert<PokemonMovesVersionGroupDetailsMoveLearnMethod>(json['move_learn_method']);
	if (moveLearnMethod != null) {
		pokemonMovesVersionGroupDetails.moveLearnMethod = moveLearnMethod;
	}
	final PokemonMovesVersionGroupDetailsVersionGroup? versionGroup = jsonConvert.convert<PokemonMovesVersionGroupDetailsVersionGroup>(json['version_group']);
	if (versionGroup != null) {
		pokemonMovesVersionGroupDetails.versionGroup = versionGroup;
	}
	return pokemonMovesVersionGroupDetails;
}

Map<String, dynamic> $PokemonMovesVersionGroupDetailsToJson(PokemonMovesVersionGroupDetails entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['level_learned_at'] = entity.levelLearnedAt;
	data['move_learn_method'] = entity.moveLearnMethod?.toJson();
	data['version_group'] = entity.versionGroup?.toJson();
	return data;
}

PokemonMovesVersionGroupDetailsMoveLearnMethod $PokemonMovesVersionGroupDetailsMoveLearnMethodFromJson(Map<String, dynamic> json) {
	final PokemonMovesVersionGroupDetailsMoveLearnMethod pokemonMovesVersionGroupDetailsMoveLearnMethod = PokemonMovesVersionGroupDetailsMoveLearnMethod();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		pokemonMovesVersionGroupDetailsMoveLearnMethod.name = name;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		pokemonMovesVersionGroupDetailsMoveLearnMethod.url = url;
	}
	return pokemonMovesVersionGroupDetailsMoveLearnMethod;
}

Map<String, dynamic> $PokemonMovesVersionGroupDetailsMoveLearnMethodToJson(PokemonMovesVersionGroupDetailsMoveLearnMethod entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['url'] = entity.url;
	return data;
}

PokemonMovesVersionGroupDetailsVersionGroup $PokemonMovesVersionGroupDetailsVersionGroupFromJson(Map<String, dynamic> json) {
	final PokemonMovesVersionGroupDetailsVersionGroup pokemonMovesVersionGroupDetailsVersionGroup = PokemonMovesVersionGroupDetailsVersionGroup();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		pokemonMovesVersionGroupDetailsVersionGroup.name = name;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		pokemonMovesVersionGroupDetailsVersionGroup.url = url;
	}
	return pokemonMovesVersionGroupDetailsVersionGroup;
}

Map<String, dynamic> $PokemonMovesVersionGroupDetailsVersionGroupToJson(PokemonMovesVersionGroupDetailsVersionGroup entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['url'] = entity.url;
	return data;
}

PokemonSpecies $PokemonSpeciesFromJson(Map<String, dynamic> json) {
	final PokemonSpecies pokemonSpecies = PokemonSpecies();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		pokemonSpecies.name = name;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		pokemonSpecies.url = url;
	}
	return pokemonSpecies;
}

Map<String, dynamic> $PokemonSpeciesToJson(PokemonSpecies entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['url'] = entity.url;
	return data;
}

PokemonSprites $PokemonSpritesFromJson(Map<String, dynamic> json) {
	final PokemonSprites pokemonSprites = PokemonSprites();
	final String? backDefault = jsonConvert.convert<String>(json['back_default']);
	if (backDefault != null) {
		pokemonSprites.backDefault = backDefault;
	}
	final dynamic? backFemale = jsonConvert.convert<dynamic>(json['back_female']);
	if (backFemale != null) {
		pokemonSprites.backFemale = backFemale;
	}
	final String? backShiny = jsonConvert.convert<String>(json['back_shiny']);
	if (backShiny != null) {
		pokemonSprites.backShiny = backShiny;
	}
	final dynamic? backShinyFemale = jsonConvert.convert<dynamic>(json['back_shiny_female']);
	if (backShinyFemale != null) {
		pokemonSprites.backShinyFemale = backShinyFemale;
	}
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSprites.frontDefault = frontDefault;
	}
	final dynamic? frontFemale = jsonConvert.convert<dynamic>(json['front_female']);
	if (frontFemale != null) {
		pokemonSprites.frontFemale = frontFemale;
	}
	final String? frontShiny = jsonConvert.convert<String>(json['front_shiny']);
	if (frontShiny != null) {
		pokemonSprites.frontShiny = frontShiny;
	}
	final dynamic? frontShinyFemale = jsonConvert.convert<dynamic>(json['front_shiny_female']);
	if (frontShinyFemale != null) {
		pokemonSprites.frontShinyFemale = frontShinyFemale;
	}
	final PokemonSpritesOther? other = jsonConvert.convert<PokemonSpritesOther>(json['other']);
	if (other != null) {
		pokemonSprites.other = other;
	}
	final PokemonSpritesVersions? versions = jsonConvert.convert<PokemonSpritesVersions>(json['versions']);
	if (versions != null) {
		pokemonSprites.versions = versions;
	}
	return pokemonSprites;
}

Map<String, dynamic> $PokemonSpritesToJson(PokemonSprites entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['back_default'] = entity.backDefault;
	data['back_female'] = entity.backFemale;
	data['back_shiny'] = entity.backShiny;
	data['back_shiny_female'] = entity.backShinyFemale;
	data['front_default'] = entity.frontDefault;
	data['front_female'] = entity.frontFemale;
	data['front_shiny'] = entity.frontShiny;
	data['front_shiny_female'] = entity.frontShinyFemale;
	data['other'] = entity.other?.toJson();
	data['versions'] = entity.versions?.toJson();
	return data;
}

PokemonSpritesOther $PokemonSpritesOtherFromJson(Map<String, dynamic> json) {
	final PokemonSpritesOther pokemonSpritesOther = PokemonSpritesOther();
	final PokemonSpritesOtherDreamWorld? dreamWorld = jsonConvert.convert<PokemonSpritesOtherDreamWorld>(json['dream_world']);
	if (dreamWorld != null) {
		pokemonSpritesOther.dreamWorld = dreamWorld;
	}
	final PokemonSpritesOtherHome? home = jsonConvert.convert<PokemonSpritesOtherHome>(json['home']);
	if (home != null) {
		pokemonSpritesOther.home = home;
	}
	final PokemonSpritesOtherOfficialArtwork? officialArtwork = jsonConvert.convert<PokemonSpritesOtherOfficialArtwork>(json['official-artwork']);
	if (officialArtwork != null) {
		pokemonSpritesOther.officialArtwork = officialArtwork;
	}
	return pokemonSpritesOther;
}

Map<String, dynamic> $PokemonSpritesOtherToJson(PokemonSpritesOther entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['dream_world'] = entity.dreamWorld?.toJson();
	data['home'] = entity.home?.toJson();
	data['official-artwork'] = entity.officialArtwork?.toJson();
	return data;
}

PokemonSpritesOtherDreamWorld $PokemonSpritesOtherDreamWorldFromJson(Map<String, dynamic> json) {
	final PokemonSpritesOtherDreamWorld pokemonSpritesOtherDreamWorld = PokemonSpritesOtherDreamWorld();
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesOtherDreamWorld.frontDefault = frontDefault;
	}
	final dynamic? frontFemale = jsonConvert.convert<dynamic>(json['front_female']);
	if (frontFemale != null) {
		pokemonSpritesOtherDreamWorld.frontFemale = frontFemale;
	}
	return pokemonSpritesOtherDreamWorld;
}

Map<String, dynamic> $PokemonSpritesOtherDreamWorldToJson(PokemonSpritesOtherDreamWorld entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['front_default'] = entity.frontDefault;
	data['front_female'] = entity.frontFemale;
	return data;
}

PokemonSpritesOtherHome $PokemonSpritesOtherHomeFromJson(Map<String, dynamic> json) {
	final PokemonSpritesOtherHome pokemonSpritesOtherHome = PokemonSpritesOtherHome();
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesOtherHome.frontDefault = frontDefault;
	}
	final dynamic? frontFemale = jsonConvert.convert<dynamic>(json['front_female']);
	if (frontFemale != null) {
		pokemonSpritesOtherHome.frontFemale = frontFemale;
	}
	final String? frontShiny = jsonConvert.convert<String>(json['front_shiny']);
	if (frontShiny != null) {
		pokemonSpritesOtherHome.frontShiny = frontShiny;
	}
	final dynamic? frontShinyFemale = jsonConvert.convert<dynamic>(json['front_shiny_female']);
	if (frontShinyFemale != null) {
		pokemonSpritesOtherHome.frontShinyFemale = frontShinyFemale;
	}
	return pokemonSpritesOtherHome;
}

Map<String, dynamic> $PokemonSpritesOtherHomeToJson(PokemonSpritesOtherHome entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['front_default'] = entity.frontDefault;
	data['front_female'] = entity.frontFemale;
	data['front_shiny'] = entity.frontShiny;
	data['front_shiny_female'] = entity.frontShinyFemale;
	return data;
}

PokemonSpritesOtherOfficialArtwork $PokemonSpritesOtherOfficialArtworkFromJson(Map<String, dynamic> json) {
	final PokemonSpritesOtherOfficialArtwork pokemonSpritesOtherOfficialArtwork = PokemonSpritesOtherOfficialArtwork();
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesOtherOfficialArtwork.frontDefault = frontDefault;
	}
	return pokemonSpritesOtherOfficialArtwork;
}

Map<String, dynamic> $PokemonSpritesOtherOfficialArtworkToJson(PokemonSpritesOtherOfficialArtwork entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['front_default'] = entity.frontDefault;
	return data;
}

PokemonSpritesVersions $PokemonSpritesVersionsFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersions pokemonSpritesVersions = PokemonSpritesVersions();
	final PokemonSpritesVersionsGenerationI? generationI = jsonConvert.convert<PokemonSpritesVersionsGenerationI>(json['generation-i']);
	if (generationI != null) {
		pokemonSpritesVersions.generationI = generationI;
	}
	final PokemonSpritesVersionsGenerationIi? generationIi = jsonConvert.convert<PokemonSpritesVersionsGenerationIi>(json['generation-ii']);
	if (generationIi != null) {
		pokemonSpritesVersions.generationIi = generationIi;
	}
	final PokemonSpritesVersionsGenerationIii? generationIii = jsonConvert.convert<PokemonSpritesVersionsGenerationIii>(json['generation-iii']);
	if (generationIii != null) {
		pokemonSpritesVersions.generationIii = generationIii;
	}
	final PokemonSpritesVersionsGenerationIv? generationIv = jsonConvert.convert<PokemonSpritesVersionsGenerationIv>(json['generation-iv']);
	if (generationIv != null) {
		pokemonSpritesVersions.generationIv = generationIv;
	}
	final PokemonSpritesVersionsGenerationV? generationV = jsonConvert.convert<PokemonSpritesVersionsGenerationV>(json['generation-v']);
	if (generationV != null) {
		pokemonSpritesVersions.generationV = generationV;
	}
	final PokemonSpritesVersionsGenerationVi? generationVi = jsonConvert.convert<PokemonSpritesVersionsGenerationVi>(json['generation-vi']);
	if (generationVi != null) {
		pokemonSpritesVersions.generationVi = generationVi;
	}
	final PokemonSpritesVersionsGenerationVii? generationVii = jsonConvert.convert<PokemonSpritesVersionsGenerationVii>(json['generation-vii']);
	if (generationVii != null) {
		pokemonSpritesVersions.generationVii = generationVii;
	}
	final PokemonSpritesVersionsGenerationViii? generationViii = jsonConvert.convert<PokemonSpritesVersionsGenerationViii>(json['generation-viii']);
	if (generationViii != null) {
		pokemonSpritesVersions.generationViii = generationViii;
	}
	return pokemonSpritesVersions;
}

Map<String, dynamic> $PokemonSpritesVersionsToJson(PokemonSpritesVersions entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['generation-i'] = entity.generationI?.toJson();
	data['generation-ii'] = entity.generationIi?.toJson();
	data['generation-iii'] = entity.generationIii?.toJson();
	data['generation-iv'] = entity.generationIv?.toJson();
	data['generation-v'] = entity.generationV?.toJson();
	data['generation-vi'] = entity.generationVi?.toJson();
	data['generation-vii'] = entity.generationVii?.toJson();
	data['generation-viii'] = entity.generationViii?.toJson();
	return data;
}

PokemonSpritesVersionsGenerationI $PokemonSpritesVersionsGenerationIFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationI pokemonSpritesVersionsGenerationI = PokemonSpritesVersionsGenerationI();
	final PokemonSpritesVersionsGenerationIRedBlue? redBlue = jsonConvert.convert<PokemonSpritesVersionsGenerationIRedBlue>(json['red-blue']);
	if (redBlue != null) {
		pokemonSpritesVersionsGenerationI.redBlue = redBlue;
	}
	final PokemonSpritesVersionsGenerationIYellow? yellow = jsonConvert.convert<PokemonSpritesVersionsGenerationIYellow>(json['yellow']);
	if (yellow != null) {
		pokemonSpritesVersionsGenerationI.yellow = yellow;
	}
	return pokemonSpritesVersionsGenerationI;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationIToJson(PokemonSpritesVersionsGenerationI entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['red-blue'] = entity.redBlue?.toJson();
	data['yellow'] = entity.yellow?.toJson();
	return data;
}

PokemonSpritesVersionsGenerationIRedBlue $PokemonSpritesVersionsGenerationIRedBlueFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationIRedBlue pokemonSpritesVersionsGenerationIRedBlue = PokemonSpritesVersionsGenerationIRedBlue();
	final String? backDefault = jsonConvert.convert<String>(json['back_default']);
	if (backDefault != null) {
		pokemonSpritesVersionsGenerationIRedBlue.backDefault = backDefault;
	}
	final String? backGray = jsonConvert.convert<String>(json['back_gray']);
	if (backGray != null) {
		pokemonSpritesVersionsGenerationIRedBlue.backGray = backGray;
	}
	final String? backTransparent = jsonConvert.convert<String>(json['back_transparent']);
	if (backTransparent != null) {
		pokemonSpritesVersionsGenerationIRedBlue.backTransparent = backTransparent;
	}
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesVersionsGenerationIRedBlue.frontDefault = frontDefault;
	}
	final String? frontGray = jsonConvert.convert<String>(json['front_gray']);
	if (frontGray != null) {
		pokemonSpritesVersionsGenerationIRedBlue.frontGray = frontGray;
	}
	final String? frontTransparent = jsonConvert.convert<String>(json['front_transparent']);
	if (frontTransparent != null) {
		pokemonSpritesVersionsGenerationIRedBlue.frontTransparent = frontTransparent;
	}
	return pokemonSpritesVersionsGenerationIRedBlue;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationIRedBlueToJson(PokemonSpritesVersionsGenerationIRedBlue entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['back_default'] = entity.backDefault;
	data['back_gray'] = entity.backGray;
	data['back_transparent'] = entity.backTransparent;
	data['front_default'] = entity.frontDefault;
	data['front_gray'] = entity.frontGray;
	data['front_transparent'] = entity.frontTransparent;
	return data;
}

PokemonSpritesVersionsGenerationIYellow $PokemonSpritesVersionsGenerationIYellowFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationIYellow pokemonSpritesVersionsGenerationIYellow = PokemonSpritesVersionsGenerationIYellow();
	final String? backDefault = jsonConvert.convert<String>(json['back_default']);
	if (backDefault != null) {
		pokemonSpritesVersionsGenerationIYellow.backDefault = backDefault;
	}
	final String? backGray = jsonConvert.convert<String>(json['back_gray']);
	if (backGray != null) {
		pokemonSpritesVersionsGenerationIYellow.backGray = backGray;
	}
	final String? backTransparent = jsonConvert.convert<String>(json['back_transparent']);
	if (backTransparent != null) {
		pokemonSpritesVersionsGenerationIYellow.backTransparent = backTransparent;
	}
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesVersionsGenerationIYellow.frontDefault = frontDefault;
	}
	final String? frontGray = jsonConvert.convert<String>(json['front_gray']);
	if (frontGray != null) {
		pokemonSpritesVersionsGenerationIYellow.frontGray = frontGray;
	}
	final String? frontTransparent = jsonConvert.convert<String>(json['front_transparent']);
	if (frontTransparent != null) {
		pokemonSpritesVersionsGenerationIYellow.frontTransparent = frontTransparent;
	}
	return pokemonSpritesVersionsGenerationIYellow;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationIYellowToJson(PokemonSpritesVersionsGenerationIYellow entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['back_default'] = entity.backDefault;
	data['back_gray'] = entity.backGray;
	data['back_transparent'] = entity.backTransparent;
	data['front_default'] = entity.frontDefault;
	data['front_gray'] = entity.frontGray;
	data['front_transparent'] = entity.frontTransparent;
	return data;
}

PokemonSpritesVersionsGenerationIi $PokemonSpritesVersionsGenerationIiFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationIi pokemonSpritesVersionsGenerationIi = PokemonSpritesVersionsGenerationIi();
	final PokemonSpritesVersionsGenerationIiCrystal? crystal = jsonConvert.convert<PokemonSpritesVersionsGenerationIiCrystal>(json['crystal']);
	if (crystal != null) {
		pokemonSpritesVersionsGenerationIi.crystal = crystal;
	}
	final PokemonSpritesVersionsGenerationIiGold? gold = jsonConvert.convert<PokemonSpritesVersionsGenerationIiGold>(json['gold']);
	if (gold != null) {
		pokemonSpritesVersionsGenerationIi.gold = gold;
	}
	final PokemonSpritesVersionsGenerationIiSilver? silver = jsonConvert.convert<PokemonSpritesVersionsGenerationIiSilver>(json['silver']);
	if (silver != null) {
		pokemonSpritesVersionsGenerationIi.silver = silver;
	}
	return pokemonSpritesVersionsGenerationIi;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationIiToJson(PokemonSpritesVersionsGenerationIi entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['crystal'] = entity.crystal?.toJson();
	data['gold'] = entity.gold?.toJson();
	data['silver'] = entity.silver?.toJson();
	return data;
}

PokemonSpritesVersionsGenerationIiCrystal $PokemonSpritesVersionsGenerationIiCrystalFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationIiCrystal pokemonSpritesVersionsGenerationIiCrystal = PokemonSpritesVersionsGenerationIiCrystal();
	final String? backDefault = jsonConvert.convert<String>(json['back_default']);
	if (backDefault != null) {
		pokemonSpritesVersionsGenerationIiCrystal.backDefault = backDefault;
	}
	final String? backShiny = jsonConvert.convert<String>(json['back_shiny']);
	if (backShiny != null) {
		pokemonSpritesVersionsGenerationIiCrystal.backShiny = backShiny;
	}
	final String? backShinyTransparent = jsonConvert.convert<String>(json['back_shiny_transparent']);
	if (backShinyTransparent != null) {
		pokemonSpritesVersionsGenerationIiCrystal.backShinyTransparent = backShinyTransparent;
	}
	final String? backTransparent = jsonConvert.convert<String>(json['back_transparent']);
	if (backTransparent != null) {
		pokemonSpritesVersionsGenerationIiCrystal.backTransparent = backTransparent;
	}
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesVersionsGenerationIiCrystal.frontDefault = frontDefault;
	}
	final String? frontShiny = jsonConvert.convert<String>(json['front_shiny']);
	if (frontShiny != null) {
		pokemonSpritesVersionsGenerationIiCrystal.frontShiny = frontShiny;
	}
	final String? frontShinyTransparent = jsonConvert.convert<String>(json['front_shiny_transparent']);
	if (frontShinyTransparent != null) {
		pokemonSpritesVersionsGenerationIiCrystal.frontShinyTransparent = frontShinyTransparent;
	}
	final String? frontTransparent = jsonConvert.convert<String>(json['front_transparent']);
	if (frontTransparent != null) {
		pokemonSpritesVersionsGenerationIiCrystal.frontTransparent = frontTransparent;
	}
	return pokemonSpritesVersionsGenerationIiCrystal;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationIiCrystalToJson(PokemonSpritesVersionsGenerationIiCrystal entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['back_default'] = entity.backDefault;
	data['back_shiny'] = entity.backShiny;
	data['back_shiny_transparent'] = entity.backShinyTransparent;
	data['back_transparent'] = entity.backTransparent;
	data['front_default'] = entity.frontDefault;
	data['front_shiny'] = entity.frontShiny;
	data['front_shiny_transparent'] = entity.frontShinyTransparent;
	data['front_transparent'] = entity.frontTransparent;
	return data;
}

PokemonSpritesVersionsGenerationIiGold $PokemonSpritesVersionsGenerationIiGoldFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationIiGold pokemonSpritesVersionsGenerationIiGold = PokemonSpritesVersionsGenerationIiGold();
	final String? backDefault = jsonConvert.convert<String>(json['back_default']);
	if (backDefault != null) {
		pokemonSpritesVersionsGenerationIiGold.backDefault = backDefault;
	}
	final String? backShiny = jsonConvert.convert<String>(json['back_shiny']);
	if (backShiny != null) {
		pokemonSpritesVersionsGenerationIiGold.backShiny = backShiny;
	}
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesVersionsGenerationIiGold.frontDefault = frontDefault;
	}
	final String? frontShiny = jsonConvert.convert<String>(json['front_shiny']);
	if (frontShiny != null) {
		pokemonSpritesVersionsGenerationIiGold.frontShiny = frontShiny;
	}
	final String? frontTransparent = jsonConvert.convert<String>(json['front_transparent']);
	if (frontTransparent != null) {
		pokemonSpritesVersionsGenerationIiGold.frontTransparent = frontTransparent;
	}
	return pokemonSpritesVersionsGenerationIiGold;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationIiGoldToJson(PokemonSpritesVersionsGenerationIiGold entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['back_default'] = entity.backDefault;
	data['back_shiny'] = entity.backShiny;
	data['front_default'] = entity.frontDefault;
	data['front_shiny'] = entity.frontShiny;
	data['front_transparent'] = entity.frontTransparent;
	return data;
}

PokemonSpritesVersionsGenerationIiSilver $PokemonSpritesVersionsGenerationIiSilverFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationIiSilver pokemonSpritesVersionsGenerationIiSilver = PokemonSpritesVersionsGenerationIiSilver();
	final String? backDefault = jsonConvert.convert<String>(json['back_default']);
	if (backDefault != null) {
		pokemonSpritesVersionsGenerationIiSilver.backDefault = backDefault;
	}
	final String? backShiny = jsonConvert.convert<String>(json['back_shiny']);
	if (backShiny != null) {
		pokemonSpritesVersionsGenerationIiSilver.backShiny = backShiny;
	}
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesVersionsGenerationIiSilver.frontDefault = frontDefault;
	}
	final String? frontShiny = jsonConvert.convert<String>(json['front_shiny']);
	if (frontShiny != null) {
		pokemonSpritesVersionsGenerationIiSilver.frontShiny = frontShiny;
	}
	final String? frontTransparent = jsonConvert.convert<String>(json['front_transparent']);
	if (frontTransparent != null) {
		pokemonSpritesVersionsGenerationIiSilver.frontTransparent = frontTransparent;
	}
	return pokemonSpritesVersionsGenerationIiSilver;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationIiSilverToJson(PokemonSpritesVersionsGenerationIiSilver entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['back_default'] = entity.backDefault;
	data['back_shiny'] = entity.backShiny;
	data['front_default'] = entity.frontDefault;
	data['front_shiny'] = entity.frontShiny;
	data['front_transparent'] = entity.frontTransparent;
	return data;
}

PokemonSpritesVersionsGenerationIii $PokemonSpritesVersionsGenerationIiiFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationIii pokemonSpritesVersionsGenerationIii = PokemonSpritesVersionsGenerationIii();
	final PokemonSpritesVersionsGenerationIiiEmerald? emerald = jsonConvert.convert<PokemonSpritesVersionsGenerationIiiEmerald>(json['emerald']);
	if (emerald != null) {
		pokemonSpritesVersionsGenerationIii.emerald = emerald;
	}
	final PokemonSpritesVersionsGenerationIiiFireredLeafgreen? fireredLeafgreen = jsonConvert.convert<PokemonSpritesVersionsGenerationIiiFireredLeafgreen>(json['firered-leafgreen']);
	if (fireredLeafgreen != null) {
		pokemonSpritesVersionsGenerationIii.fireredLeafgreen = fireredLeafgreen;
	}
	final PokemonSpritesVersionsGenerationIiiRubySapphire? rubySapphire = jsonConvert.convert<PokemonSpritesVersionsGenerationIiiRubySapphire>(json['ruby-sapphire']);
	if (rubySapphire != null) {
		pokemonSpritesVersionsGenerationIii.rubySapphire = rubySapphire;
	}
	return pokemonSpritesVersionsGenerationIii;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationIiiToJson(PokemonSpritesVersionsGenerationIii entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['emerald'] = entity.emerald?.toJson();
	data['firered-leafgreen'] = entity.fireredLeafgreen?.toJson();
	data['ruby-sapphire'] = entity.rubySapphire?.toJson();
	return data;
}

PokemonSpritesVersionsGenerationIiiEmerald $PokemonSpritesVersionsGenerationIiiEmeraldFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationIiiEmerald pokemonSpritesVersionsGenerationIiiEmerald = PokemonSpritesVersionsGenerationIiiEmerald();
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesVersionsGenerationIiiEmerald.frontDefault = frontDefault;
	}
	final String? frontShiny = jsonConvert.convert<String>(json['front_shiny']);
	if (frontShiny != null) {
		pokemonSpritesVersionsGenerationIiiEmerald.frontShiny = frontShiny;
	}
	return pokemonSpritesVersionsGenerationIiiEmerald;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationIiiEmeraldToJson(PokemonSpritesVersionsGenerationIiiEmerald entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['front_default'] = entity.frontDefault;
	data['front_shiny'] = entity.frontShiny;
	return data;
}

PokemonSpritesVersionsGenerationIiiFireredLeafgreen $PokemonSpritesVersionsGenerationIiiFireredLeafgreenFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationIiiFireredLeafgreen pokemonSpritesVersionsGenerationIiiFireredLeafgreen = PokemonSpritesVersionsGenerationIiiFireredLeafgreen();
	final String? backDefault = jsonConvert.convert<String>(json['back_default']);
	if (backDefault != null) {
		pokemonSpritesVersionsGenerationIiiFireredLeafgreen.backDefault = backDefault;
	}
	final String? backShiny = jsonConvert.convert<String>(json['back_shiny']);
	if (backShiny != null) {
		pokemonSpritesVersionsGenerationIiiFireredLeafgreen.backShiny = backShiny;
	}
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesVersionsGenerationIiiFireredLeafgreen.frontDefault = frontDefault;
	}
	final String? frontShiny = jsonConvert.convert<String>(json['front_shiny']);
	if (frontShiny != null) {
		pokemonSpritesVersionsGenerationIiiFireredLeafgreen.frontShiny = frontShiny;
	}
	return pokemonSpritesVersionsGenerationIiiFireredLeafgreen;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationIiiFireredLeafgreenToJson(PokemonSpritesVersionsGenerationIiiFireredLeafgreen entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['back_default'] = entity.backDefault;
	data['back_shiny'] = entity.backShiny;
	data['front_default'] = entity.frontDefault;
	data['front_shiny'] = entity.frontShiny;
	return data;
}

PokemonSpritesVersionsGenerationIiiRubySapphire $PokemonSpritesVersionsGenerationIiiRubySapphireFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationIiiRubySapphire pokemonSpritesVersionsGenerationIiiRubySapphire = PokemonSpritesVersionsGenerationIiiRubySapphire();
	final String? backDefault = jsonConvert.convert<String>(json['back_default']);
	if (backDefault != null) {
		pokemonSpritesVersionsGenerationIiiRubySapphire.backDefault = backDefault;
	}
	final String? backShiny = jsonConvert.convert<String>(json['back_shiny']);
	if (backShiny != null) {
		pokemonSpritesVersionsGenerationIiiRubySapphire.backShiny = backShiny;
	}
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesVersionsGenerationIiiRubySapphire.frontDefault = frontDefault;
	}
	final String? frontShiny = jsonConvert.convert<String>(json['front_shiny']);
	if (frontShiny != null) {
		pokemonSpritesVersionsGenerationIiiRubySapphire.frontShiny = frontShiny;
	}
	return pokemonSpritesVersionsGenerationIiiRubySapphire;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationIiiRubySapphireToJson(PokemonSpritesVersionsGenerationIiiRubySapphire entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['back_default'] = entity.backDefault;
	data['back_shiny'] = entity.backShiny;
	data['front_default'] = entity.frontDefault;
	data['front_shiny'] = entity.frontShiny;
	return data;
}

PokemonSpritesVersionsGenerationIv $PokemonSpritesVersionsGenerationIvFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationIv pokemonSpritesVersionsGenerationIv = PokemonSpritesVersionsGenerationIv();
	final PokemonSpritesVersionsGenerationIvDiamondPearl? diamondPearl = jsonConvert.convert<PokemonSpritesVersionsGenerationIvDiamondPearl>(json['diamond-pearl']);
	if (diamondPearl != null) {
		pokemonSpritesVersionsGenerationIv.diamondPearl = diamondPearl;
	}
	final PokemonSpritesVersionsGenerationIvHeartgoldSoulsilver? heartgoldSoulsilver = jsonConvert.convert<PokemonSpritesVersionsGenerationIvHeartgoldSoulsilver>(json['heartgold-soulsilver']);
	if (heartgoldSoulsilver != null) {
		pokemonSpritesVersionsGenerationIv.heartgoldSoulsilver = heartgoldSoulsilver;
	}
	final PokemonSpritesVersionsGenerationIvPlatinum? platinum = jsonConvert.convert<PokemonSpritesVersionsGenerationIvPlatinum>(json['platinum']);
	if (platinum != null) {
		pokemonSpritesVersionsGenerationIv.platinum = platinum;
	}
	return pokemonSpritesVersionsGenerationIv;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationIvToJson(PokemonSpritesVersionsGenerationIv entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['diamond-pearl'] = entity.diamondPearl?.toJson();
	data['heartgold-soulsilver'] = entity.heartgoldSoulsilver?.toJson();
	data['platinum'] = entity.platinum?.toJson();
	return data;
}

PokemonSpritesVersionsGenerationIvDiamondPearl $PokemonSpritesVersionsGenerationIvDiamondPearlFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationIvDiamondPearl pokemonSpritesVersionsGenerationIvDiamondPearl = PokemonSpritesVersionsGenerationIvDiamondPearl();
	final String? backDefault = jsonConvert.convert<String>(json['back_default']);
	if (backDefault != null) {
		pokemonSpritesVersionsGenerationIvDiamondPearl.backDefault = backDefault;
	}
	final dynamic? backFemale = jsonConvert.convert<dynamic>(json['back_female']);
	if (backFemale != null) {
		pokemonSpritesVersionsGenerationIvDiamondPearl.backFemale = backFemale;
	}
	final String? backShiny = jsonConvert.convert<String>(json['back_shiny']);
	if (backShiny != null) {
		pokemonSpritesVersionsGenerationIvDiamondPearl.backShiny = backShiny;
	}
	final dynamic? backShinyFemale = jsonConvert.convert<dynamic>(json['back_shiny_female']);
	if (backShinyFemale != null) {
		pokemonSpritesVersionsGenerationIvDiamondPearl.backShinyFemale = backShinyFemale;
	}
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesVersionsGenerationIvDiamondPearl.frontDefault = frontDefault;
	}
	final dynamic? frontFemale = jsonConvert.convert<dynamic>(json['front_female']);
	if (frontFemale != null) {
		pokemonSpritesVersionsGenerationIvDiamondPearl.frontFemale = frontFemale;
	}
	final String? frontShiny = jsonConvert.convert<String>(json['front_shiny']);
	if (frontShiny != null) {
		pokemonSpritesVersionsGenerationIvDiamondPearl.frontShiny = frontShiny;
	}
	final dynamic? frontShinyFemale = jsonConvert.convert<dynamic>(json['front_shiny_female']);
	if (frontShinyFemale != null) {
		pokemonSpritesVersionsGenerationIvDiamondPearl.frontShinyFemale = frontShinyFemale;
	}
	return pokemonSpritesVersionsGenerationIvDiamondPearl;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationIvDiamondPearlToJson(PokemonSpritesVersionsGenerationIvDiamondPearl entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['back_default'] = entity.backDefault;
	data['back_female'] = entity.backFemale;
	data['back_shiny'] = entity.backShiny;
	data['back_shiny_female'] = entity.backShinyFemale;
	data['front_default'] = entity.frontDefault;
	data['front_female'] = entity.frontFemale;
	data['front_shiny'] = entity.frontShiny;
	data['front_shiny_female'] = entity.frontShinyFemale;
	return data;
}

PokemonSpritesVersionsGenerationIvHeartgoldSoulsilver $PokemonSpritesVersionsGenerationIvHeartgoldSoulsilverFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationIvHeartgoldSoulsilver pokemonSpritesVersionsGenerationIvHeartgoldSoulsilver = PokemonSpritesVersionsGenerationIvHeartgoldSoulsilver();
	final String? backDefault = jsonConvert.convert<String>(json['back_default']);
	if (backDefault != null) {
		pokemonSpritesVersionsGenerationIvHeartgoldSoulsilver.backDefault = backDefault;
	}
	final dynamic? backFemale = jsonConvert.convert<dynamic>(json['back_female']);
	if (backFemale != null) {
		pokemonSpritesVersionsGenerationIvHeartgoldSoulsilver.backFemale = backFemale;
	}
	final String? backShiny = jsonConvert.convert<String>(json['back_shiny']);
	if (backShiny != null) {
		pokemonSpritesVersionsGenerationIvHeartgoldSoulsilver.backShiny = backShiny;
	}
	final dynamic? backShinyFemale = jsonConvert.convert<dynamic>(json['back_shiny_female']);
	if (backShinyFemale != null) {
		pokemonSpritesVersionsGenerationIvHeartgoldSoulsilver.backShinyFemale = backShinyFemale;
	}
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesVersionsGenerationIvHeartgoldSoulsilver.frontDefault = frontDefault;
	}
	final dynamic? frontFemale = jsonConvert.convert<dynamic>(json['front_female']);
	if (frontFemale != null) {
		pokemonSpritesVersionsGenerationIvHeartgoldSoulsilver.frontFemale = frontFemale;
	}
	final String? frontShiny = jsonConvert.convert<String>(json['front_shiny']);
	if (frontShiny != null) {
		pokemonSpritesVersionsGenerationIvHeartgoldSoulsilver.frontShiny = frontShiny;
	}
	final dynamic? frontShinyFemale = jsonConvert.convert<dynamic>(json['front_shiny_female']);
	if (frontShinyFemale != null) {
		pokemonSpritesVersionsGenerationIvHeartgoldSoulsilver.frontShinyFemale = frontShinyFemale;
	}
	return pokemonSpritesVersionsGenerationIvHeartgoldSoulsilver;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationIvHeartgoldSoulsilverToJson(PokemonSpritesVersionsGenerationIvHeartgoldSoulsilver entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['back_default'] = entity.backDefault;
	data['back_female'] = entity.backFemale;
	data['back_shiny'] = entity.backShiny;
	data['back_shiny_female'] = entity.backShinyFemale;
	data['front_default'] = entity.frontDefault;
	data['front_female'] = entity.frontFemale;
	data['front_shiny'] = entity.frontShiny;
	data['front_shiny_female'] = entity.frontShinyFemale;
	return data;
}

PokemonSpritesVersionsGenerationIvPlatinum $PokemonSpritesVersionsGenerationIvPlatinumFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationIvPlatinum pokemonSpritesVersionsGenerationIvPlatinum = PokemonSpritesVersionsGenerationIvPlatinum();
	final String? backDefault = jsonConvert.convert<String>(json['back_default']);
	if (backDefault != null) {
		pokemonSpritesVersionsGenerationIvPlatinum.backDefault = backDefault;
	}
	final dynamic? backFemale = jsonConvert.convert<dynamic>(json['back_female']);
	if (backFemale != null) {
		pokemonSpritesVersionsGenerationIvPlatinum.backFemale = backFemale;
	}
	final String? backShiny = jsonConvert.convert<String>(json['back_shiny']);
	if (backShiny != null) {
		pokemonSpritesVersionsGenerationIvPlatinum.backShiny = backShiny;
	}
	final dynamic? backShinyFemale = jsonConvert.convert<dynamic>(json['back_shiny_female']);
	if (backShinyFemale != null) {
		pokemonSpritesVersionsGenerationIvPlatinum.backShinyFemale = backShinyFemale;
	}
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesVersionsGenerationIvPlatinum.frontDefault = frontDefault;
	}
	final dynamic? frontFemale = jsonConvert.convert<dynamic>(json['front_female']);
	if (frontFemale != null) {
		pokemonSpritesVersionsGenerationIvPlatinum.frontFemale = frontFemale;
	}
	final String? frontShiny = jsonConvert.convert<String>(json['front_shiny']);
	if (frontShiny != null) {
		pokemonSpritesVersionsGenerationIvPlatinum.frontShiny = frontShiny;
	}
	final dynamic? frontShinyFemale = jsonConvert.convert<dynamic>(json['front_shiny_female']);
	if (frontShinyFemale != null) {
		pokemonSpritesVersionsGenerationIvPlatinum.frontShinyFemale = frontShinyFemale;
	}
	return pokemonSpritesVersionsGenerationIvPlatinum;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationIvPlatinumToJson(PokemonSpritesVersionsGenerationIvPlatinum entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['back_default'] = entity.backDefault;
	data['back_female'] = entity.backFemale;
	data['back_shiny'] = entity.backShiny;
	data['back_shiny_female'] = entity.backShinyFemale;
	data['front_default'] = entity.frontDefault;
	data['front_female'] = entity.frontFemale;
	data['front_shiny'] = entity.frontShiny;
	data['front_shiny_female'] = entity.frontShinyFemale;
	return data;
}

PokemonSpritesVersionsGenerationV $PokemonSpritesVersionsGenerationVFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationV pokemonSpritesVersionsGenerationV = PokemonSpritesVersionsGenerationV();
	final PokemonSpritesVersionsGenerationVBlackWhite? blackWhite = jsonConvert.convert<PokemonSpritesVersionsGenerationVBlackWhite>(json['black-white']);
	if (blackWhite != null) {
		pokemonSpritesVersionsGenerationV.blackWhite = blackWhite;
	}
	return pokemonSpritesVersionsGenerationV;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationVToJson(PokemonSpritesVersionsGenerationV entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['black-white'] = entity.blackWhite?.toJson();
	return data;
}

PokemonSpritesVersionsGenerationVBlackWhite $PokemonSpritesVersionsGenerationVBlackWhiteFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationVBlackWhite pokemonSpritesVersionsGenerationVBlackWhite = PokemonSpritesVersionsGenerationVBlackWhite();
	final PokemonSpritesVersionsGenerationVBlackWhiteAnimated? animated = jsonConvert.convert<PokemonSpritesVersionsGenerationVBlackWhiteAnimated>(json['animated']);
	if (animated != null) {
		pokemonSpritesVersionsGenerationVBlackWhite.animated = animated;
	}
	final String? backDefault = jsonConvert.convert<String>(json['back_default']);
	if (backDefault != null) {
		pokemonSpritesVersionsGenerationVBlackWhite.backDefault = backDefault;
	}
	final dynamic? backFemale = jsonConvert.convert<dynamic>(json['back_female']);
	if (backFemale != null) {
		pokemonSpritesVersionsGenerationVBlackWhite.backFemale = backFemale;
	}
	final String? backShiny = jsonConvert.convert<String>(json['back_shiny']);
	if (backShiny != null) {
		pokemonSpritesVersionsGenerationVBlackWhite.backShiny = backShiny;
	}
	final dynamic? backShinyFemale = jsonConvert.convert<dynamic>(json['back_shiny_female']);
	if (backShinyFemale != null) {
		pokemonSpritesVersionsGenerationVBlackWhite.backShinyFemale = backShinyFemale;
	}
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesVersionsGenerationVBlackWhite.frontDefault = frontDefault;
	}
	final dynamic? frontFemale = jsonConvert.convert<dynamic>(json['front_female']);
	if (frontFemale != null) {
		pokemonSpritesVersionsGenerationVBlackWhite.frontFemale = frontFemale;
	}
	final String? frontShiny = jsonConvert.convert<String>(json['front_shiny']);
	if (frontShiny != null) {
		pokemonSpritesVersionsGenerationVBlackWhite.frontShiny = frontShiny;
	}
	final dynamic? frontShinyFemale = jsonConvert.convert<dynamic>(json['front_shiny_female']);
	if (frontShinyFemale != null) {
		pokemonSpritesVersionsGenerationVBlackWhite.frontShinyFemale = frontShinyFemale;
	}
	return pokemonSpritesVersionsGenerationVBlackWhite;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationVBlackWhiteToJson(PokemonSpritesVersionsGenerationVBlackWhite entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['animated'] = entity.animated?.toJson();
	data['back_default'] = entity.backDefault;
	data['back_female'] = entity.backFemale;
	data['back_shiny'] = entity.backShiny;
	data['back_shiny_female'] = entity.backShinyFemale;
	data['front_default'] = entity.frontDefault;
	data['front_female'] = entity.frontFemale;
	data['front_shiny'] = entity.frontShiny;
	data['front_shiny_female'] = entity.frontShinyFemale;
	return data;
}

PokemonSpritesVersionsGenerationVBlackWhiteAnimated $PokemonSpritesVersionsGenerationVBlackWhiteAnimatedFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationVBlackWhiteAnimated pokemonSpritesVersionsGenerationVBlackWhiteAnimated = PokemonSpritesVersionsGenerationVBlackWhiteAnimated();
	final String? backDefault = jsonConvert.convert<String>(json['back_default']);
	if (backDefault != null) {
		pokemonSpritesVersionsGenerationVBlackWhiteAnimated.backDefault = backDefault;
	}
	final dynamic? backFemale = jsonConvert.convert<dynamic>(json['back_female']);
	if (backFemale != null) {
		pokemonSpritesVersionsGenerationVBlackWhiteAnimated.backFemale = backFemale;
	}
	final String? backShiny = jsonConvert.convert<String>(json['back_shiny']);
	if (backShiny != null) {
		pokemonSpritesVersionsGenerationVBlackWhiteAnimated.backShiny = backShiny;
	}
	final dynamic? backShinyFemale = jsonConvert.convert<dynamic>(json['back_shiny_female']);
	if (backShinyFemale != null) {
		pokemonSpritesVersionsGenerationVBlackWhiteAnimated.backShinyFemale = backShinyFemale;
	}
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesVersionsGenerationVBlackWhiteAnimated.frontDefault = frontDefault;
	}
	final dynamic? frontFemale = jsonConvert.convert<dynamic>(json['front_female']);
	if (frontFemale != null) {
		pokemonSpritesVersionsGenerationVBlackWhiteAnimated.frontFemale = frontFemale;
	}
	final String? frontShiny = jsonConvert.convert<String>(json['front_shiny']);
	if (frontShiny != null) {
		pokemonSpritesVersionsGenerationVBlackWhiteAnimated.frontShiny = frontShiny;
	}
	final dynamic? frontShinyFemale = jsonConvert.convert<dynamic>(json['front_shiny_female']);
	if (frontShinyFemale != null) {
		pokemonSpritesVersionsGenerationVBlackWhiteAnimated.frontShinyFemale = frontShinyFemale;
	}
	return pokemonSpritesVersionsGenerationVBlackWhiteAnimated;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationVBlackWhiteAnimatedToJson(PokemonSpritesVersionsGenerationVBlackWhiteAnimated entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['back_default'] = entity.backDefault;
	data['back_female'] = entity.backFemale;
	data['back_shiny'] = entity.backShiny;
	data['back_shiny_female'] = entity.backShinyFemale;
	data['front_default'] = entity.frontDefault;
	data['front_female'] = entity.frontFemale;
	data['front_shiny'] = entity.frontShiny;
	data['front_shiny_female'] = entity.frontShinyFemale;
	return data;
}

PokemonSpritesVersionsGenerationVi $PokemonSpritesVersionsGenerationViFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationVi pokemonSpritesVersionsGenerationVi = PokemonSpritesVersionsGenerationVi();
	final PokemonSpritesVersionsGenerationViOmegarubyAlphasapphire? omegarubyAlphasapphire = jsonConvert.convert<PokemonSpritesVersionsGenerationViOmegarubyAlphasapphire>(json['omegaruby-alphasapphire']);
	if (omegarubyAlphasapphire != null) {
		pokemonSpritesVersionsGenerationVi.omegarubyAlphasapphire = omegarubyAlphasapphire;
	}
	final PokemonSpritesVersionsGenerationViXY? xY = jsonConvert.convert<PokemonSpritesVersionsGenerationViXY>(json['x-y']);
	if (xY != null) {
		pokemonSpritesVersionsGenerationVi.xY = xY;
	}
	return pokemonSpritesVersionsGenerationVi;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationViToJson(PokemonSpritesVersionsGenerationVi entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['omegaruby-alphasapphire'] = entity.omegarubyAlphasapphire?.toJson();
	data['x-y'] = entity.xY?.toJson();
	return data;
}

PokemonSpritesVersionsGenerationViOmegarubyAlphasapphire $PokemonSpritesVersionsGenerationViOmegarubyAlphasapphireFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationViOmegarubyAlphasapphire pokemonSpritesVersionsGenerationViOmegarubyAlphasapphire = PokemonSpritesVersionsGenerationViOmegarubyAlphasapphire();
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesVersionsGenerationViOmegarubyAlphasapphire.frontDefault = frontDefault;
	}
	final dynamic? frontFemale = jsonConvert.convert<dynamic>(json['front_female']);
	if (frontFemale != null) {
		pokemonSpritesVersionsGenerationViOmegarubyAlphasapphire.frontFemale = frontFemale;
	}
	final String? frontShiny = jsonConvert.convert<String>(json['front_shiny']);
	if (frontShiny != null) {
		pokemonSpritesVersionsGenerationViOmegarubyAlphasapphire.frontShiny = frontShiny;
	}
	final dynamic? frontShinyFemale = jsonConvert.convert<dynamic>(json['front_shiny_female']);
	if (frontShinyFemale != null) {
		pokemonSpritesVersionsGenerationViOmegarubyAlphasapphire.frontShinyFemale = frontShinyFemale;
	}
	return pokemonSpritesVersionsGenerationViOmegarubyAlphasapphire;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationViOmegarubyAlphasapphireToJson(PokemonSpritesVersionsGenerationViOmegarubyAlphasapphire entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['front_default'] = entity.frontDefault;
	data['front_female'] = entity.frontFemale;
	data['front_shiny'] = entity.frontShiny;
	data['front_shiny_female'] = entity.frontShinyFemale;
	return data;
}

PokemonSpritesVersionsGenerationViXY $PokemonSpritesVersionsGenerationViXYFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationViXY pokemonSpritesVersionsGenerationViXY = PokemonSpritesVersionsGenerationViXY();
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesVersionsGenerationViXY.frontDefault = frontDefault;
	}
	final dynamic? frontFemale = jsonConvert.convert<dynamic>(json['front_female']);
	if (frontFemale != null) {
		pokemonSpritesVersionsGenerationViXY.frontFemale = frontFemale;
	}
	final String? frontShiny = jsonConvert.convert<String>(json['front_shiny']);
	if (frontShiny != null) {
		pokemonSpritesVersionsGenerationViXY.frontShiny = frontShiny;
	}
	final dynamic? frontShinyFemale = jsonConvert.convert<dynamic>(json['front_shiny_female']);
	if (frontShinyFemale != null) {
		pokemonSpritesVersionsGenerationViXY.frontShinyFemale = frontShinyFemale;
	}
	return pokemonSpritesVersionsGenerationViXY;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationViXYToJson(PokemonSpritesVersionsGenerationViXY entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['front_default'] = entity.frontDefault;
	data['front_female'] = entity.frontFemale;
	data['front_shiny'] = entity.frontShiny;
	data['front_shiny_female'] = entity.frontShinyFemale;
	return data;
}

PokemonSpritesVersionsGenerationVii $PokemonSpritesVersionsGenerationViiFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationVii pokemonSpritesVersionsGenerationVii = PokemonSpritesVersionsGenerationVii();
	final PokemonSpritesVersionsGenerationViiIcons? icons = jsonConvert.convert<PokemonSpritesVersionsGenerationViiIcons>(json['icons']);
	if (icons != null) {
		pokemonSpritesVersionsGenerationVii.icons = icons;
	}
	final PokemonSpritesVersionsGenerationViiUltraSunUltraMoon? ultraSunUltraMoon = jsonConvert.convert<PokemonSpritesVersionsGenerationViiUltraSunUltraMoon>(json['ultra-sun-ultra-moon']);
	if (ultraSunUltraMoon != null) {
		pokemonSpritesVersionsGenerationVii.ultraSunUltraMoon = ultraSunUltraMoon;
	}
	return pokemonSpritesVersionsGenerationVii;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationViiToJson(PokemonSpritesVersionsGenerationVii entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['icons'] = entity.icons?.toJson();
	data['ultra-sun-ultra-moon'] = entity.ultraSunUltraMoon?.toJson();
	return data;
}

PokemonSpritesVersionsGenerationViiIcons $PokemonSpritesVersionsGenerationViiIconsFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationViiIcons pokemonSpritesVersionsGenerationViiIcons = PokemonSpritesVersionsGenerationViiIcons();
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesVersionsGenerationViiIcons.frontDefault = frontDefault;
	}
	final dynamic? frontFemale = jsonConvert.convert<dynamic>(json['front_female']);
	if (frontFemale != null) {
		pokemonSpritesVersionsGenerationViiIcons.frontFemale = frontFemale;
	}
	return pokemonSpritesVersionsGenerationViiIcons;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationViiIconsToJson(PokemonSpritesVersionsGenerationViiIcons entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['front_default'] = entity.frontDefault;
	data['front_female'] = entity.frontFemale;
	return data;
}

PokemonSpritesVersionsGenerationViiUltraSunUltraMoon $PokemonSpritesVersionsGenerationViiUltraSunUltraMoonFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationViiUltraSunUltraMoon pokemonSpritesVersionsGenerationViiUltraSunUltraMoon = PokemonSpritesVersionsGenerationViiUltraSunUltraMoon();
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesVersionsGenerationViiUltraSunUltraMoon.frontDefault = frontDefault;
	}
	final dynamic? frontFemale = jsonConvert.convert<dynamic>(json['front_female']);
	if (frontFemale != null) {
		pokemonSpritesVersionsGenerationViiUltraSunUltraMoon.frontFemale = frontFemale;
	}
	final String? frontShiny = jsonConvert.convert<String>(json['front_shiny']);
	if (frontShiny != null) {
		pokemonSpritesVersionsGenerationViiUltraSunUltraMoon.frontShiny = frontShiny;
	}
	final dynamic? frontShinyFemale = jsonConvert.convert<dynamic>(json['front_shiny_female']);
	if (frontShinyFemale != null) {
		pokemonSpritesVersionsGenerationViiUltraSunUltraMoon.frontShinyFemale = frontShinyFemale;
	}
	return pokemonSpritesVersionsGenerationViiUltraSunUltraMoon;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationViiUltraSunUltraMoonToJson(PokemonSpritesVersionsGenerationViiUltraSunUltraMoon entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['front_default'] = entity.frontDefault;
	data['front_female'] = entity.frontFemale;
	data['front_shiny'] = entity.frontShiny;
	data['front_shiny_female'] = entity.frontShinyFemale;
	return data;
}

PokemonSpritesVersionsGenerationViii $PokemonSpritesVersionsGenerationViiiFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationViii pokemonSpritesVersionsGenerationViii = PokemonSpritesVersionsGenerationViii();
	final PokemonSpritesVersionsGenerationViiiIcons? icons = jsonConvert.convert<PokemonSpritesVersionsGenerationViiiIcons>(json['icons']);
	if (icons != null) {
		pokemonSpritesVersionsGenerationViii.icons = icons;
	}
	return pokemonSpritesVersionsGenerationViii;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationViiiToJson(PokemonSpritesVersionsGenerationViii entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['icons'] = entity.icons?.toJson();
	return data;
}

PokemonSpritesVersionsGenerationViiiIcons $PokemonSpritesVersionsGenerationViiiIconsFromJson(Map<String, dynamic> json) {
	final PokemonSpritesVersionsGenerationViiiIcons pokemonSpritesVersionsGenerationViiiIcons = PokemonSpritesVersionsGenerationViiiIcons();
	final String? frontDefault = jsonConvert.convert<String>(json['front_default']);
	if (frontDefault != null) {
		pokemonSpritesVersionsGenerationViiiIcons.frontDefault = frontDefault;
	}
	final dynamic? frontFemale = jsonConvert.convert<dynamic>(json['front_female']);
	if (frontFemale != null) {
		pokemonSpritesVersionsGenerationViiiIcons.frontFemale = frontFemale;
	}
	return pokemonSpritesVersionsGenerationViiiIcons;
}

Map<String, dynamic> $PokemonSpritesVersionsGenerationViiiIconsToJson(PokemonSpritesVersionsGenerationViiiIcons entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['front_default'] = entity.frontDefault;
	data['front_female'] = entity.frontFemale;
	return data;
}

PokemonStats $PokemonStatsFromJson(Map<String, dynamic> json) {
	final PokemonStats pokemonStats = PokemonStats();
	final int? baseStat = jsonConvert.convert<int>(json['base_stat']);
	if (baseStat != null) {
		pokemonStats.baseStat = baseStat;
	}
	final int? effort = jsonConvert.convert<int>(json['effort']);
	if (effort != null) {
		pokemonStats.effort = effort;
	}
	final PokemonStatsStat? stat = jsonConvert.convert<PokemonStatsStat>(json['stat']);
	if (stat != null) {
		pokemonStats.stat = stat;
	}
	return pokemonStats;
}

Map<String, dynamic> $PokemonStatsToJson(PokemonStats entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['base_stat'] = entity.baseStat;
	data['effort'] = entity.effort;
	data['stat'] = entity.stat?.toJson();
	return data;
}

PokemonStatsStat $PokemonStatsStatFromJson(Map<String, dynamic> json) {
	final PokemonStatsStat pokemonStatsStat = PokemonStatsStat();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		pokemonStatsStat.name = name;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		pokemonStatsStat.url = url;
	}
	return pokemonStatsStat;
}

Map<String, dynamic> $PokemonStatsStatToJson(PokemonStatsStat entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['url'] = entity.url;
	return data;
}

PokemonTypes $PokemonTypesFromJson(Map<String, dynamic> json) {
	final PokemonTypes pokemonTypes = PokemonTypes();
	final int? slot = jsonConvert.convert<int>(json['slot']);
	if (slot != null) {
		pokemonTypes.slot = slot;
	}
	final PokemonTypesType? type = jsonConvert.convert<PokemonTypesType>(json['type']);
	if (type != null) {
		pokemonTypes.type = type;
	}
	return pokemonTypes;
}

Map<String, dynamic> $PokemonTypesToJson(PokemonTypes entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['slot'] = entity.slot;
	data['type'] = entity.type?.toJson();
	return data;
}

PokemonTypesType $PokemonTypesTypeFromJson(Map<String, dynamic> json) {
	final PokemonTypesType pokemonTypesType = PokemonTypesType();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		pokemonTypesType.name = name;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		pokemonTypesType.url = url;
	}
	return pokemonTypesType;
}

Map<String, dynamic> $PokemonTypesTypeToJson(PokemonTypesType entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['url'] = entity.url;
	return data;
}
