#ifndef PMDSKY_OVERLAY_29_02338604_H
#define PMDSKY_OVERLAY_29_02338604_H

#include "util.h"

// Checks if the current floor is the Secret Bazaar.
bool IsSecretBazaar();
// Gets the boost_hidden_stairs_spawn_chance field on the dungeon struct.
bool ShouldBoostHiddenStairsSpawnChance();
// Sets the boost_hidden_stairs_spawn_chance field on the dungeon struct to the given value.
// should_boost: bool to set the flag to
void SetShouldBoostHiddenStairsSpawnChance(bool should_boost);

#endif //PMDSKY_OVERLAY_29_02338604_H
