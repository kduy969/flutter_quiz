import 'dart:convert';
import 'package:quiz/generated/json/base/json_field.dart';
import 'package:quiz/generated/json/pokemon_entity.g.dart';

@JsonSerializable()
class PokemonEntity {

	List<PokemonAbilities>? abilities;
	@JSONField(name: "base_experience")
	int? baseExperience;
	List<PokemonForms>? forms;
	@JSONField(name: "game_indices")
	List<PokemonGameIndices>? gameIndices;
	int? height;
	@JSONField(name: "held_items")
	List<dynamic>? heldItems;
	int? id;
	@JSONField(name: "is_default")
	bool? isDefault;
	@JSONField(name: "location_area_encounters")
	String? locationAreaEncounters;
	List<PokemonMoves>? moves;
	String? name;
	int? order;
	@JSONField(name: "past_types")
	List<dynamic>? pastTypes;
	PokemonSpecies? species;
	PokemonSprites? sprites;
	List<PokemonStats>? stats;
	List<PokemonTypes>? types;
	int? weight;
  
  PokemonEntity();

  factory PokemonEntity.fromJson(Map<String, dynamic> json) => $PokemonEntityFromJson(json);

  Map<String, dynamic> toJson() => $PokemonEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonAbilities {

	PokemonAbilitiesAbility? ability;
	@JSONField(name: "is_hidden")
	bool? isHidden;
	int? slot;
  
  PokemonAbilities();

  factory PokemonAbilities.fromJson(Map<String, dynamic> json) => $PokemonAbilitiesFromJson(json);

  Map<String, dynamic> toJson() => $PokemonAbilitiesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonAbilitiesAbility {

	String? name;
	String? url;
  
  PokemonAbilitiesAbility();

  factory PokemonAbilitiesAbility.fromJson(Map<String, dynamic> json) => $PokemonAbilitiesAbilityFromJson(json);

  Map<String, dynamic> toJson() => $PokemonAbilitiesAbilityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonForms {

	String? name;
	String? url;
  
  PokemonForms();

  factory PokemonForms.fromJson(Map<String, dynamic> json) => $PokemonFormsFromJson(json);

  Map<String, dynamic> toJson() => $PokemonFormsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonGameIndices {

	@JSONField(name: "game_index")
	int? gameIndex;
	PokemonGameIndicesVersion? version;
  
  PokemonGameIndices();

  factory PokemonGameIndices.fromJson(Map<String, dynamic> json) => $PokemonGameIndicesFromJson(json);

  Map<String, dynamic> toJson() => $PokemonGameIndicesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonGameIndicesVersion {

	String? name;
	String? url;
  
  PokemonGameIndicesVersion();

  factory PokemonGameIndicesVersion.fromJson(Map<String, dynamic> json) => $PokemonGameIndicesVersionFromJson(json);

  Map<String, dynamic> toJson() => $PokemonGameIndicesVersionToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonMoves {

	PokemonMovesMove? move;
	@JSONField(name: "version_group_details")
	List<PokemonMovesVersionGroupDetails>? versionGroupDetails;
  
  PokemonMoves();

  factory PokemonMoves.fromJson(Map<String, dynamic> json) => $PokemonMovesFromJson(json);

  Map<String, dynamic> toJson() => $PokemonMovesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonMovesMove {

	String? name;
	String? url;
  
  PokemonMovesMove();

  factory PokemonMovesMove.fromJson(Map<String, dynamic> json) => $PokemonMovesMoveFromJson(json);

  Map<String, dynamic> toJson() => $PokemonMovesMoveToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonMovesVersionGroupDetails {

	@JSONField(name: "level_learned_at")
	int? levelLearnedAt;
	@JSONField(name: "move_learn_method")
	PokemonMovesVersionGroupDetailsMoveLearnMethod? moveLearnMethod;
	@JSONField(name: "version_group")
	PokemonMovesVersionGroupDetailsVersionGroup? versionGroup;
  
  PokemonMovesVersionGroupDetails();

  factory PokemonMovesVersionGroupDetails.fromJson(Map<String, dynamic> json) => $PokemonMovesVersionGroupDetailsFromJson(json);

  Map<String, dynamic> toJson() => $PokemonMovesVersionGroupDetailsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonMovesVersionGroupDetailsMoveLearnMethod {

	String? name;
	String? url;
  
  PokemonMovesVersionGroupDetailsMoveLearnMethod();

  factory PokemonMovesVersionGroupDetailsMoveLearnMethod.fromJson(Map<String, dynamic> json) => $PokemonMovesVersionGroupDetailsMoveLearnMethodFromJson(json);

  Map<String, dynamic> toJson() => $PokemonMovesVersionGroupDetailsMoveLearnMethodToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonMovesVersionGroupDetailsVersionGroup {

	String? name;
	String? url;
  
  PokemonMovesVersionGroupDetailsVersionGroup();

  factory PokemonMovesVersionGroupDetailsVersionGroup.fromJson(Map<String, dynamic> json) => $PokemonMovesVersionGroupDetailsVersionGroupFromJson(json);

  Map<String, dynamic> toJson() => $PokemonMovesVersionGroupDetailsVersionGroupToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpecies {

	String? name;
	String? url;
  
  PokemonSpecies();

  factory PokemonSpecies.fromJson(Map<String, dynamic> json) => $PokemonSpeciesFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpeciesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSprites {

	@JSONField(name: "back_default")
	String? backDefault;
	@JSONField(name: "back_female")
	dynamic? backFemale;
	@JSONField(name: "back_shiny")
	String? backShiny;
	@JSONField(name: "back_shiny_female")
	dynamic? backShinyFemale;
	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_female")
	dynamic? frontFemale;
	@JSONField(name: "front_shiny")
	String? frontShiny;
	@JSONField(name: "front_shiny_female")
	dynamic? frontShinyFemale;
	PokemonSpritesOther? other;
	PokemonSpritesVersions? versions;
  
  PokemonSprites();

  factory PokemonSprites.fromJson(Map<String, dynamic> json) => $PokemonSpritesFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesOther {

	@JSONField(name: "dream_world")
	PokemonSpritesOtherDreamWorld? dreamWorld;
	PokemonSpritesOtherHome? home;
	@JSONField(name: "official-artwork")
	PokemonSpritesOtherOfficialArtwork? officialArtwork;
  
  PokemonSpritesOther();

  factory PokemonSpritesOther.fromJson(Map<String, dynamic> json) => $PokemonSpritesOtherFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesOtherToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesOtherDreamWorld {

	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_female")
	dynamic? frontFemale;
  
  PokemonSpritesOtherDreamWorld();

  factory PokemonSpritesOtherDreamWorld.fromJson(Map<String, dynamic> json) => $PokemonSpritesOtherDreamWorldFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesOtherDreamWorldToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesOtherHome {

	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_female")
	dynamic? frontFemale;
	@JSONField(name: "front_shiny")
	String? frontShiny;
	@JSONField(name: "front_shiny_female")
	dynamic? frontShinyFemale;
  
  PokemonSpritesOtherHome();

  factory PokemonSpritesOtherHome.fromJson(Map<String, dynamic> json) => $PokemonSpritesOtherHomeFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesOtherHomeToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesOtherOfficialArtwork {

	@JSONField(name: "front_default")
	String? frontDefault;
  
  PokemonSpritesOtherOfficialArtwork();

  factory PokemonSpritesOtherOfficialArtwork.fromJson(Map<String, dynamic> json) => $PokemonSpritesOtherOfficialArtworkFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesOtherOfficialArtworkToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersions {

	@JSONField(name: "generation-i")
	PokemonSpritesVersionsGenerationI? generationI;
	@JSONField(name: "generation-ii")
	PokemonSpritesVersionsGenerationIi? generationIi;
	@JSONField(name: "generation-iii")
	PokemonSpritesVersionsGenerationIii? generationIii;
	@JSONField(name: "generation-iv")
	PokemonSpritesVersionsGenerationIv? generationIv;
	@JSONField(name: "generation-v")
	PokemonSpritesVersionsGenerationV? generationV;
	@JSONField(name: "generation-vi")
	PokemonSpritesVersionsGenerationVi? generationVi;
	@JSONField(name: "generation-vii")
	PokemonSpritesVersionsGenerationVii? generationVii;
	@JSONField(name: "generation-viii")
	PokemonSpritesVersionsGenerationViii? generationViii;
  
  PokemonSpritesVersions();

  factory PokemonSpritesVersions.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationI {

	@JSONField(name: "red-blue")
	PokemonSpritesVersionsGenerationIRedBlue? redBlue;
	PokemonSpritesVersionsGenerationIYellow? yellow;
  
  PokemonSpritesVersionsGenerationI();

  factory PokemonSpritesVersionsGenerationI.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationIFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationIToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationIRedBlue {

	@JSONField(name: "back_default")
	String? backDefault;
	@JSONField(name: "back_gray")
	String? backGray;
	@JSONField(name: "back_transparent")
	String? backTransparent;
	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_gray")
	String? frontGray;
	@JSONField(name: "front_transparent")
	String? frontTransparent;
  
  PokemonSpritesVersionsGenerationIRedBlue();

  factory PokemonSpritesVersionsGenerationIRedBlue.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationIRedBlueFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationIRedBlueToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationIYellow {

	@JSONField(name: "back_default")
	String? backDefault;
	@JSONField(name: "back_gray")
	String? backGray;
	@JSONField(name: "back_transparent")
	String? backTransparent;
	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_gray")
	String? frontGray;
	@JSONField(name: "front_transparent")
	String? frontTransparent;
  
  PokemonSpritesVersionsGenerationIYellow();

  factory PokemonSpritesVersionsGenerationIYellow.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationIYellowFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationIYellowToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationIi {

	PokemonSpritesVersionsGenerationIiCrystal? crystal;
	PokemonSpritesVersionsGenerationIiGold? gold;
	PokemonSpritesVersionsGenerationIiSilver? silver;
  
  PokemonSpritesVersionsGenerationIi();

  factory PokemonSpritesVersionsGenerationIi.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationIiFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationIiToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationIiCrystal {

	@JSONField(name: "back_default")
	String? backDefault;
	@JSONField(name: "back_shiny")
	String? backShiny;
	@JSONField(name: "back_shiny_transparent")
	String? backShinyTransparent;
	@JSONField(name: "back_transparent")
	String? backTransparent;
	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_shiny")
	String? frontShiny;
	@JSONField(name: "front_shiny_transparent")
	String? frontShinyTransparent;
	@JSONField(name: "front_transparent")
	String? frontTransparent;
  
  PokemonSpritesVersionsGenerationIiCrystal();

  factory PokemonSpritesVersionsGenerationIiCrystal.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationIiCrystalFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationIiCrystalToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationIiGold {

	@JSONField(name: "back_default")
	String? backDefault;
	@JSONField(name: "back_shiny")
	String? backShiny;
	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_shiny")
	String? frontShiny;
	@JSONField(name: "front_transparent")
	String? frontTransparent;
  
  PokemonSpritesVersionsGenerationIiGold();

  factory PokemonSpritesVersionsGenerationIiGold.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationIiGoldFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationIiGoldToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationIiSilver {

	@JSONField(name: "back_default")
	String? backDefault;
	@JSONField(name: "back_shiny")
	String? backShiny;
	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_shiny")
	String? frontShiny;
	@JSONField(name: "front_transparent")
	String? frontTransparent;
  
  PokemonSpritesVersionsGenerationIiSilver();

  factory PokemonSpritesVersionsGenerationIiSilver.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationIiSilverFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationIiSilverToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationIii {

	PokemonSpritesVersionsGenerationIiiEmerald? emerald;
	@JSONField(name: "firered-leafgreen")
	PokemonSpritesVersionsGenerationIiiFireredLeafgreen? fireredLeafgreen;
	@JSONField(name: "ruby-sapphire")
	PokemonSpritesVersionsGenerationIiiRubySapphire? rubySapphire;
  
  PokemonSpritesVersionsGenerationIii();

  factory PokemonSpritesVersionsGenerationIii.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationIiiFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationIiiToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationIiiEmerald {

	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_shiny")
	String? frontShiny;
  
  PokemonSpritesVersionsGenerationIiiEmerald();

  factory PokemonSpritesVersionsGenerationIiiEmerald.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationIiiEmeraldFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationIiiEmeraldToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationIiiFireredLeafgreen {

	@JSONField(name: "back_default")
	String? backDefault;
	@JSONField(name: "back_shiny")
	String? backShiny;
	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_shiny")
	String? frontShiny;
  
  PokemonSpritesVersionsGenerationIiiFireredLeafgreen();

  factory PokemonSpritesVersionsGenerationIiiFireredLeafgreen.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationIiiFireredLeafgreenFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationIiiFireredLeafgreenToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationIiiRubySapphire {

	@JSONField(name: "back_default")
	String? backDefault;
	@JSONField(name: "back_shiny")
	String? backShiny;
	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_shiny")
	String? frontShiny;
  
  PokemonSpritesVersionsGenerationIiiRubySapphire();

  factory PokemonSpritesVersionsGenerationIiiRubySapphire.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationIiiRubySapphireFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationIiiRubySapphireToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationIv {

	@JSONField(name: "diamond-pearl")
	PokemonSpritesVersionsGenerationIvDiamondPearl? diamondPearl;
	@JSONField(name: "heartgold-soulsilver")
	PokemonSpritesVersionsGenerationIvHeartgoldSoulsilver? heartgoldSoulsilver;
	PokemonSpritesVersionsGenerationIvPlatinum? platinum;
  
  PokemonSpritesVersionsGenerationIv();

  factory PokemonSpritesVersionsGenerationIv.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationIvFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationIvToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationIvDiamondPearl {

	@JSONField(name: "back_default")
	String? backDefault;
	@JSONField(name: "back_female")
	dynamic? backFemale;
	@JSONField(name: "back_shiny")
	String? backShiny;
	@JSONField(name: "back_shiny_female")
	dynamic? backShinyFemale;
	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_female")
	dynamic? frontFemale;
	@JSONField(name: "front_shiny")
	String? frontShiny;
	@JSONField(name: "front_shiny_female")
	dynamic? frontShinyFemale;
  
  PokemonSpritesVersionsGenerationIvDiamondPearl();

  factory PokemonSpritesVersionsGenerationIvDiamondPearl.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationIvDiamondPearlFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationIvDiamondPearlToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationIvHeartgoldSoulsilver {

	@JSONField(name: "back_default")
	String? backDefault;
	@JSONField(name: "back_female")
	dynamic? backFemale;
	@JSONField(name: "back_shiny")
	String? backShiny;
	@JSONField(name: "back_shiny_female")
	dynamic? backShinyFemale;
	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_female")
	dynamic? frontFemale;
	@JSONField(name: "front_shiny")
	String? frontShiny;
	@JSONField(name: "front_shiny_female")
	dynamic? frontShinyFemale;
  
  PokemonSpritesVersionsGenerationIvHeartgoldSoulsilver();

  factory PokemonSpritesVersionsGenerationIvHeartgoldSoulsilver.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationIvHeartgoldSoulsilverFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationIvHeartgoldSoulsilverToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationIvPlatinum {

	@JSONField(name: "back_default")
	String? backDefault;
	@JSONField(name: "back_female")
	dynamic? backFemale;
	@JSONField(name: "back_shiny")
	String? backShiny;
	@JSONField(name: "back_shiny_female")
	dynamic? backShinyFemale;
	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_female")
	dynamic? frontFemale;
	@JSONField(name: "front_shiny")
	String? frontShiny;
	@JSONField(name: "front_shiny_female")
	dynamic? frontShinyFemale;
  
  PokemonSpritesVersionsGenerationIvPlatinum();

  factory PokemonSpritesVersionsGenerationIvPlatinum.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationIvPlatinumFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationIvPlatinumToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationV {

	@JSONField(name: "black-white")
	PokemonSpritesVersionsGenerationVBlackWhite? blackWhite;
  
  PokemonSpritesVersionsGenerationV();

  factory PokemonSpritesVersionsGenerationV.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationVFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationVToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationVBlackWhite {

	PokemonSpritesVersionsGenerationVBlackWhiteAnimated? animated;
	@JSONField(name: "back_default")
	String? backDefault;
	@JSONField(name: "back_female")
	dynamic? backFemale;
	@JSONField(name: "back_shiny")
	String? backShiny;
	@JSONField(name: "back_shiny_female")
	dynamic? backShinyFemale;
	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_female")
	dynamic? frontFemale;
	@JSONField(name: "front_shiny")
	String? frontShiny;
	@JSONField(name: "front_shiny_female")
	dynamic? frontShinyFemale;
  
  PokemonSpritesVersionsGenerationVBlackWhite();

  factory PokemonSpritesVersionsGenerationVBlackWhite.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationVBlackWhiteFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationVBlackWhiteToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationVBlackWhiteAnimated {

	@JSONField(name: "back_default")
	String? backDefault;
	@JSONField(name: "back_female")
	dynamic? backFemale;
	@JSONField(name: "back_shiny")
	String? backShiny;
	@JSONField(name: "back_shiny_female")
	dynamic? backShinyFemale;
	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_female")
	dynamic? frontFemale;
	@JSONField(name: "front_shiny")
	String? frontShiny;
	@JSONField(name: "front_shiny_female")
	dynamic? frontShinyFemale;
  
  PokemonSpritesVersionsGenerationVBlackWhiteAnimated();

  factory PokemonSpritesVersionsGenerationVBlackWhiteAnimated.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationVBlackWhiteAnimatedFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationVBlackWhiteAnimatedToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationVi {

	@JSONField(name: "omegaruby-alphasapphire")
	PokemonSpritesVersionsGenerationViOmegarubyAlphasapphire? omegarubyAlphasapphire;
	@JSONField(name: "x-y")
	PokemonSpritesVersionsGenerationViXY? xY;
  
  PokemonSpritesVersionsGenerationVi();

  factory PokemonSpritesVersionsGenerationVi.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationViFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationViToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationViOmegarubyAlphasapphire {

	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_female")
	dynamic? frontFemale;
	@JSONField(name: "front_shiny")
	String? frontShiny;
	@JSONField(name: "front_shiny_female")
	dynamic? frontShinyFemale;
  
  PokemonSpritesVersionsGenerationViOmegarubyAlphasapphire();

  factory PokemonSpritesVersionsGenerationViOmegarubyAlphasapphire.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationViOmegarubyAlphasapphireFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationViOmegarubyAlphasapphireToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationViXY {

	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_female")
	dynamic? frontFemale;
	@JSONField(name: "front_shiny")
	String? frontShiny;
	@JSONField(name: "front_shiny_female")
	dynamic? frontShinyFemale;
  
  PokemonSpritesVersionsGenerationViXY();

  factory PokemonSpritesVersionsGenerationViXY.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationViXYFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationViXYToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationVii {

	PokemonSpritesVersionsGenerationViiIcons? icons;
	@JSONField(name: "ultra-sun-ultra-moon")
	PokemonSpritesVersionsGenerationViiUltraSunUltraMoon? ultraSunUltraMoon;
  
  PokemonSpritesVersionsGenerationVii();

  factory PokemonSpritesVersionsGenerationVii.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationViiFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationViiToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationViiIcons {

	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_female")
	dynamic? frontFemale;
  
  PokemonSpritesVersionsGenerationViiIcons();

  factory PokemonSpritesVersionsGenerationViiIcons.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationViiIconsFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationViiIconsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationViiUltraSunUltraMoon {

	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_female")
	dynamic? frontFemale;
	@JSONField(name: "front_shiny")
	String? frontShiny;
	@JSONField(name: "front_shiny_female")
	dynamic? frontShinyFemale;
  
  PokemonSpritesVersionsGenerationViiUltraSunUltraMoon();

  factory PokemonSpritesVersionsGenerationViiUltraSunUltraMoon.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationViiUltraSunUltraMoonFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationViiUltraSunUltraMoonToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationViii {

	PokemonSpritesVersionsGenerationViiiIcons? icons;
  
  PokemonSpritesVersionsGenerationViii();

  factory PokemonSpritesVersionsGenerationViii.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationViiiFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationViiiToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonSpritesVersionsGenerationViiiIcons {

	@JSONField(name: "front_default")
	String? frontDefault;
	@JSONField(name: "front_female")
	dynamic? frontFemale;
  
  PokemonSpritesVersionsGenerationViiiIcons();

  factory PokemonSpritesVersionsGenerationViiiIcons.fromJson(Map<String, dynamic> json) => $PokemonSpritesVersionsGenerationViiiIconsFromJson(json);

  Map<String, dynamic> toJson() => $PokemonSpritesVersionsGenerationViiiIconsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonStats {

	@JSONField(name: "base_stat")
	int? baseStat;
	int? effort;
	PokemonStatsStat? stat;
  
  PokemonStats();

  factory PokemonStats.fromJson(Map<String, dynamic> json) => $PokemonStatsFromJson(json);

  Map<String, dynamic> toJson() => $PokemonStatsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonStatsStat {

	String? name;
	String? url;
  
  PokemonStatsStat();

  factory PokemonStatsStat.fromJson(Map<String, dynamic> json) => $PokemonStatsStatFromJson(json);

  Map<String, dynamic> toJson() => $PokemonStatsStatToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonTypes {

	int? slot;
	PokemonTypesType? type;
  
  PokemonTypes();

  factory PokemonTypes.fromJson(Map<String, dynamic> json) => $PokemonTypesFromJson(json);

  Map<String, dynamic> toJson() => $PokemonTypesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PokemonTypesType {

	String? name;
	String? url;
  
  PokemonTypesType();

  factory PokemonTypesType.fromJson(Map<String, dynamic> json) => $PokemonTypesTypeFromJson(json);

  Map<String, dynamic> toJson() => $PokemonTypesTypeToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
