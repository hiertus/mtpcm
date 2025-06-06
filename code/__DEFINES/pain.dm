// Pain

// How slow we go from losing a limb
#define MOVE_REDUCTION_LIMB_DESTROYED 4
#define MOVE_REDUCTION_LIMB_BROKEN 1.5
#define MOVE_REDUCTION_LIMB_SPLINTED 0.5

// Traumatic shock reduction for different reagents
#define PAIN_REDUCTION_MULTIPLIER 20
#define PAIN_REDUCTION_AURA 20
// The values below are thresholds used for surgery
#define PAIN_REDUCTION_LIGHT 20  //inaprovaline
#define PAIN_REDUCTION_MEDIUM 30
#define PAIN_REDUCTION_HEAVY 40  //paracetamol, tramadol
#define PAIN_REDUCTION_FULL 80 //oxycodone, neuraline

// Pain amount supplied by the action

/// How much pain is dealt continually to the mob being dragged by the AI as well as when initially grabbing.
#define PAIN_XENO_DRAG 5
/// How much additional pain is dealt when lunging/throat grabbing.
#define PAIN_XENO_GRAB 10
#define PAIN_BONE_BREAK 25
#define PAIN_BONE_BREAK_SPLINTED 15
#define PAIN_DELIMB 40
#define PAIN_ORGAN_DAMAGE_MULTIPLIER 2
#define PAIN_CHESTBURST_WEAK 25
#define PAIN_CHESTBURST_STRONG 100
