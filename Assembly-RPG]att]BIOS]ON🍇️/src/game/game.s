/*
This file is part of gamelib-x64.

Copyright (C) 2014 Tim Hegeman

gamelib-x64 is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

gamelib-x64 is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with gamelib-x64. If not, see <http://www.gnu.org/licenses/>.
*/

# ***********************************************
# * Assembly Game Project: Text Based RPG       *
# * Author: Evaldas Latoškinas                  *
# ***********************************************

.file "src/game/game.s"

.global gameInit
.global gameLoop

.section .game.data
# ==========Look up table PS2 to ASCII==========
 ASCII_TABLE:
  .byte 0
  .byte (0) #ESC
  .byte '1'
  .byte '2'
  .byte '3'
  .byte '4'
  .byte '5'
  .byte '6'
  .byte '7'
  .byte '8'
  .byte '9'
  .byte '0'
  .byte '-'
  .byte '='
  .byte (8)
  .byte (0) #TAB
  .byte 'Q'
  .byte 'W'
  .byte 'E'
  .byte 'R'
  .byte 'T'
  .byte 'Y'
  .byte 'U'
  .byte 'I'
  .byte 'O'
  .byte 'P'
  .byte '['
  .byte ']'
  .byte (13)
  .byte (0) #LCTRL
  .byte 'A'
  .byte 'S'
  .byte 'D'
  .byte 'F'
  .byte 'G'
  .byte 'H'
  .byte 'J'
  .byte 'K'
  .byte 'L'
  .byte ';'
  .byte '''
  .byte '`'
  .byte (0) #LSHIFT
  .byte '\'
  .byte 'Z'
  .byte 'X'
  .byte 'C'
  .byte 'V'
  .byte 'B'
  .byte 'N'
  .byte 'M'
  .byte ','
  .byte '.'
  .byte '/'
  .byte (0) #RSHIFT
  .byte '*'
  .byte (0) #LALT
  .byte ' '
  .byte (0) #CAPS
  .byte (0) #F1
  .byte (0) #F2
  .byte (0) #F3
  .byte (0) #F4
  .byte (0) #F5
  .byte (0) #F6
  .byte (0) #F7
  .byte (0) #F8
  .byte (0) #F9
  .byte (0) #F10
  .byte (0) #NUMLOCK
  .byte (0) #SCRLLOCK
  .byte '7'
  .byte '8'
  .byte '9'
  .byte '-'
  .byte '4'
  .byte '5'
  .byte '6'
  .byte '+'
  .byte '1'
  .byte '2'
  .byte '3'
  .byte '0'
  .byte '.'
  .byte (0)
  .byte (0)
  .byte (0)
  .byte (0) #F11
  .byte (0) #F12
# ==============================================

# ==========Monster Database===========
 # NAMES
 m1_name: .asciz "Slime"
 m2_name: .asciz "Goblin"
 m3_name: .asciz "Skeleton"
 m4_name: .asciz "Zombie"
 m5_name: .asciz "Wolf"
 m6_name: .asciz "Bear"
 m7_name: .asciz "Bandit"
 m8_name: .asciz "Orc"
 m9_name: .asciz "Ghost"
 m10_name: .asciz "Archer"
 m11_name: .asciz "Witch"
 m12_name: .asciz "Warrior"
 m13_name: .asciz "Wyvern"
 m14_name: .asciz "Hydra"
 m15_name: .asciz "Demon"
 m16_name: .asciz "Dragon"

 db_m_names:
  .quad m1_name
  .quad m2_name
  .quad m3_name
  .quad m4_name
  .quad m5_name
  .quad m6_name
  .quad m7_name
  .quad m8_name
  .quad m9_name
  .quad m10_name
  .quad m11_name
  .quad m12_name
  .quad m13_name
  .quad m14_name
  .quad m15_name
  .quad m16_name

 db_m_health:
  .quad 5
  .quad 8
  .quad 7
  .quad 10
  .quad 6
  .quad 15
  .quad 12
  .quad 14
  .quad 10
  .quad 11
  .quad 11
  .quad 16
  .quad 18
  .quad 25
  .quad 22
  .quad 28

 db_m_gold:
  .quad 5
  .quad 8
  .quad 12
  .quad 10
  .quad 6
  .quad 20
  .quad 25
  .quad 22
  .quad 23
  .quad 21
  .quad 22
  .quad 27
  .quad 30
  .quad 40
  .quad 40
  .quad 50

 db_m_exp:
  .quad 5
  .quad 8
  .quad 10
  .quad 12
  .quad 7
  .quad 20
  .quad 18
  .quad 21
  .quad 22
  .quad 20
  .quad 24
  .quad 26
  .quad 30
  .quad 65
  .quad 70
  .quad 80

 db_m_str:
  .quad 2
  .quad 4
  .quad 3
  .quad 5
  .quad 3
  .quad 8
  .quad 6
  .quad 7
  .quad 4
  .quad 5
  .quad 6
  .quad 9
  .quad 7
  .quad 9
  .quad 7
  .quad 10

 db_m_dex:
  .quad 4
  .quad 3
  .quad 5
  .quad 3
  .quad 4
  .quad 3
  .quad 5
  .quad 4
  .quad 8
  .quad 7
  .quad 6
  .quad 4
  .quad 5
  .quad 7
  .quad 9
  .quad 7

 db_m_agi:
  .quad 3
  .quad 4
  .quad 5
  .quad 2
  .quad 4
  .quad 4
  .quad 6
  .quad 4
  .quad 7
  .quad 7
  .quad 5
  .quad 5
  .quad 4
  .quad 5
  .quad 8
  .quad 6

 db_m_res:
  .quad 0
  .quad 2
  .quad 1
  .quad 3
  .quad 1
  .quad 5
  .quad 4
  .quad 4
  .quad 2
  .quad 3
  .quad 3
  .quad 6
  .quad 7
  .quad 6
  .quad 5
  .quad 8
  
# =====================================

# ==========Player variables===========
 playerName:  .asciz "                "

 gold: .quad 0
 level: .quad 1
 experience: .quad 0
 next_level_exp: .quad 10
 stat_points: .quad 0

 p_health:    .quad 15
 p_maxHealth: .quad 15

 # STATS
 p_vit: .quad 5
 p_str: .quad 5
 p_dex: .quad 5
 p_agi: .quad 5
 p_res: .quad 5

 # ITEMS
 p_health_potions: .quad 1

 p_block:   .byte (0)   # Boolean to determine whether Player blocked or not
# =====================================

# ==========Monster variables==========
 m_gold: .quad        0 # Gold reward
 m_experience: .quad  0 # Experience reward

 # STATS
 m_health:    .quad 0
 m_maxHealth: .quad 0
 m_str: .quad       0
 m_dex: .quad       0
 m_agi: .quad       0
 m_res: .quad       0
# =====================================

currentMenu: .byte (0) # Keeps track which menu the user is in right now. (0 = start)
combatLine:  .quad 0   # Keeps track of current line in Combat (to print to)

# MENU:
# 0 - START
# 1 - NAME INPUT
# 2 - EXPLORATION
# 3 - COMBAT
# 4 - SHOP
# 5 - RANDOM EVENT
# 6 - STATS
# 7 - REWARD SCREEN
# 8 - GAME OVER
# 9 - RANDOM EVENT OVER
# 10 - HIGH SCORES
# 11 - HELP

.section .game.text
# =============Start Text==============
 title:     .asciz "Assembly RPG 1.0"
 menu1:     .asciz "(1) PLAY GAME"
 menu2:     .asciz "(2) HIGH SCORES"
 menu3:     .asciz "(3) HOW TO PLAY"
 menu4:     .asciz "(4) EXIT GAME"

 inputNameStr: .asciz "Enter your name: "
 welcomeStr:   .asciz "Welcome, %s!"

# ===========Explore Text=============
 explore_choose: .asciz "Choose an option:"
 explore_choice1: .asciz "(1) Proceed onwards [standard option]"
 explore_choice2: .asciz "(2) Take Risk [increased chance of enemy encounter]"
 explore_choice3: .asciz "(3) Prooced With Caution [higher chance to find store or Random Event]"
 explore_choice4: .asciz "(4) Stats [access the stats menu]"

# ============Stats Text==============
 stats_header: .asciz "STATS"
 stats_level: .asciz "Level %d"
 stats_exp: .asciz "Experience: %d/%d"
 stats_gold: .asciz "Gold: %d"
 stats_stat_points: .asciz "Stat Points: %d"
 stats_health: .asciz "HP: %d/%d"
 stats_vit: .asciz "VIT: %d (%d)" 
 stats_str: .asciz "STR: %d (%d)" 
 stats_dex: .asciz "DEX: %d (%d)" 
 stats_agi: .asciz "AGI: %d (%d)" 
 stats_res: .asciz "RES: %d (%d)"

# ============Shop Text===============
 shop_header: .asciz "SHOP"
 shop_choice1: .asciz "(1) Buy Health Potion [50 gold] (%d owned)"
 shop_choice2: .asciz "(2) Upgrade Helmet: +5 VIT [250 gold]"
 shop_choice3: .asciz "(3) Upgrade Weapon: +2 STR [100 gold]"
 shop_choice4: .asciz "(4) Upgrade Boots:  +2 DEX [100 gold]"
 shop_choice5: .asciz "(5) Upgrade Gloves: +2 AGI [100 gold]"
 shop_choice6: .asciz "(6) Upgrade Armor:  +2 RES [100 gold]"
 shop_stat1: .asciz "VIT: %d"
 shop_stat2: .asciz "STR: %d"
 shop_stat3: .asciz "DEX: %d"
 shop_stat4: .asciz "AGI: %d"
 shop_stat5: .asciz "RES: %d"

# ===========Combat Text==============
 combat_header: .asciz "IN COMBAT"
 combat_fighter: .asciz "%s: %d/%d health"
 combat_damage: .asciz "%s inflicts %d damage to %s!"
 combat_heal: .asciz "%s uses %s to restore %d healh!"
 combat_choose: .asciz "Choose an option:"
 combat_choice1: .asciz "(1) Attack"
 combat_choice2: .asciz "(2) Use Healing Potion [%d left]"
 combat_choice3: .asciz "(3) Block"
 combat_choice4: .asciz "(4) Flee"

 combat_inflict: .asciz "%s inflicts %d damage to %s!"
 combat_miss: .asciz "%s attacks %s, but misses!"
 combat_restore: .asciz "%s uses %s to restore %d Health!"
 healing_potion: .asciz "Healing Potion"
 combat_block: .asciz "%s blocks!"
 combat_flee_fail: .asciz "%s tried to flee, but failed!"

 combat_defeated: .asciz "%s has been defeated!"
 combat_experience: .asciz "Experience reward: %d"
 combat_gold: .asciz       "Gold reward:       %d"
 combat_level_up_text: .asciz "%s has levelled up to level %d!"
 combat_exit_choice: .asciz "(1) Continue     (2) Stats"

# ===========Event Text===============
 event_header: .asciz "RANDOM EVENT"

 event_explain1: .asciz "There are 3 possible choices, each with their own outcome."
 event_explain2: .asciz "Loss or gain of %s can occur from either choice."
 event_pick: .asciz "Pick one:"

 event_choice1: .asciz "(1) 75%% Chance for +%d (else -%d)"
 event_choice2: .asciz "(2) 50%% Chance for +%d (else -%d)"
 event_choice3: .asciz "(3) 25%% Chance for +%d (else -%d)"
 event_choice4: .asciz "(4) Walk Away [nothing happens]"

 gain_txt: .asciz "GAINED"
 loss_txt: .asciz "LOST"
 event_reward: .asciz "%s %d %s!"

 gold_text: .asciz "GOLD"
 experience_text: .asciz "EXPERIENCE"
 vit_text: .asciz "VIT"
 str_text: .asciz "STR"
 dex_text: .asciz "DEX"
 agi_text: .asciz "AGI"
 res_text: .asciz "RES"

 event_var: .quad 0

 event_gain:
  .quad 0
  .quad 0
  .quad 0

 event_lose:
  .quad 0
  .quad 0
  .quad 0

 stat_names:
  .quad vit_text
  .quad str_text
  .quad dex_text
  .quad agi_text
  .quad res_text

# =========Game Over Text=============
 gameover_header: .asciz  "################################################################################"
 gameover_middle:  .asciz "######                                                                    ######"
 gameover_title: .asciz   "GAME OVER"
 gameover_experience: .asciz "EXPERIENCE: %d"
 gameover_gold: .asciz "GOLD: %d"
 continue: .asciz "(1) CONTINUE"

# =========High Scores Text===========
high_scores_header: .asciz "HIGH SCORES"
high_scores_col_heads: .asciz "NO.  NAME              EXPERIENCE"

high_scores_count: .quad 0

high_scores_name1: .asciz "                "
high_scores_name2: .asciz "                "
high_scores_name3: .asciz "                "
high_scores_name4: .asciz "                "
high_scores_name5: .asciz "                "
high_scores_name6: .asciz "                "
high_scores_name7: .asciz "                "
high_scores_name8: .asciz "                "
high_scores_name9: .asciz "                "
high_scores_name10: .asciz "                "

high_scores_names:
 .quad high_scores_name1
 .quad high_scores_name2
 .quad high_scores_name3
 .quad high_scores_name4
 .quad high_scores_name5
 .quad high_scores_name6
 .quad high_scores_name7
 .quad high_scores_name8
 .quad high_scores_name9
 .quad high_scores_name10

high_scores_exp:
 .quad 0
 .quad 0
 .quad 0
 .quad 0
 .quad 0
 .quad 0
 .quad 0
 .quad 0
 .quad 0
 .quad 0

t_playerName:  .asciz "                "

# ===========Help Text================
help_header:  .asciz "HOW TO PLAY"
help_line1:   .asciz "In this game, the Player (you) choose one out of 3 exploration options"
help_line2:   .asciz "resulting in further progress in the game. Each exploration step results in a"
help_line3:   .asciz "monster encounter, finding a shop or initiating a random event. A monster"
help_line4:   .asciz "kill results in a gold and experience reward, both of which mark the"
help_line5:   .asciz "Player's progress of the game. The monsters progressively get tougher as the"
help_line6:   .asciz "Player levels up. However, as the Player levels up, stat points are gained,"
help_line7:   .asciz "which can be spent to upgrade the Player's stats. Stats can also be upgraded"
help_line8:   .asciz "by spending Gold in a Shop which may be randomly encountered. Gold may also"
help_line9:   .asciz "be spent on healing potions, which restore health during combat when used."
help_line10:  .asciz "There are 5 stats in the game:"
help_line11:  .asciz "Vitality   (VIT): Adds 2 health points to the Player."
help_line12:  .asciz "Strength   (STR): Increases damage output."
help_line13:  .asciz "Dexterity  (DEX): Increases flee rate & dodge chance"
help_line14:  .asciz "Agility    (AGI): Increases the chance of not missing attacks on the enemy."
help_line15:  .asciz "Resistance (RES): Increases chances of resisting a certain amount of damage."
help_line16:  .asciz "There are also random events in which the Player has a chance to engage to"
help_line17:  .asciz "gain rewards (stats, experience, gold), or suffer losses."
help_line18:  .asciz "The game ends when the Player dies (health reaches 0 or below)."
help_line19:  .asciz "The goal of the game is to survive and gain as much experience as possible."

help_lines:
 .quad help_line1
 .quad help_line2
 .quad help_line3
 .quad help_line4
 .quad help_line5
 .quad help_line6
 .quad help_line7
 .quad help_line8
 .quad help_line9
 .quad help_line10
 .quad help_line11
 .quad help_line12
 .quad help_line13
 .quad help_line14
 .quad help_line15
 .quad help_line16
 .quad help_line17
 .quad help_line18
 .quad help_line19

 back_option: .asciz "(%d) Exit"
 emptyString: .asciz "                                                                                "

 decimalStr: .asciz "%d"


# REGISTER GUIDE:
# R15 - MONSTER ID

######################################################
#                      gameInit                      #
#                                                    #
#     Initializes the game (moves to Start Menu)     #
#                                                    #
######################################################
gameInit:
  call    enterStart  # Initialize CURRENT MENU as 0 (start menu) and print Start Menu options

#  movq    $1, %r8
#  movb    $'A', %cl

#  whileTest:
#   cmpq $11, %r8
#   je  whileTestE

#   movq %r8, (experience)
  
#   movq $0, %rdx
#   movb %cl, playerName(%rdx)
#   call highScoresInsert

#   incq %r8
#   incb %cl
#   jmp whileTest

#whileTestE:
#  call    enterHighScores

  ret

#######################################################################
#                              gameLoop                               #
#                                                                     #
#     Get input from keyboard and convert it to game functionality    #
#                                                                     #
#######################################################################
gameLoop:
  call	readKeyCode   # Read key input from keyboard
  cmpq  $0, %rax      # No input
  je    gameLoop_end  # If there is no input, nothing happens.

  cmpb  $1, (currentMenu) # Check whether the user is in Input Name stage
  jne   keyPressEvent     # If not, continue parsing pressed key to actual command

  inputName:
   movb  ASCII_TABLE(%rax), %dl # Move converted PS2 to ASCII input to register DL
   cmpb  $0, %dl                # Check whether we do not have empty input
   je    gameLoop_end           # If we do, reiterate loop
   cmpb  $13, %dl               # Check for return character
   jne   inputCheck             # If the input was not the return character, continue parsing input

   movb  $0, playerName(%r11)   # Add zero char at the end of the Player's name to indicate where the string ends
   call  enterExplore           # Enter Explore Menu
   
   jmp   gameLoop_end

  inputCheck:
    # Backspace pressed
    cmpb $8, %dl      # 8th ASCII character is backspace, check if it was pressed
    jne  inputCheck2  # Quit if branch if it was not
    cmpq $0, %r11     # If it was, check if there are characters to delete
    je   gameLoop_end # Quit if branch if there are not

    decq %r10                   # Move one character back to delete it
    decq %r11                   # The same here
    movb $' ', playerName(%r11) # Insert whitespace (empty)
    movb $0, %dl                # Insert empty (zero) character to print to screen
    movq %r9, %rsi              # Current line arg
    movq %r10, %rdi             # Current column arg
    movb $0x00, %cl             # Print in black
    call putChar                # Execute print

    jmp  gameLoop_end           # Reiterate game loop

   # Checks if reached character limit
   inputCheck2:
    cmpq  $16, %r11    # Check if 16 character limit has been reached
    je    gameLoop_end # If it has, reiterate loop

   printInput:
    movb  %dl, playerName(%r11) # Store inputted byte to playerName current byte
    movq  %r9, %rsi             # Current line arg
    movq  %r10, %rdi            # Current column arg
    movb  $0x0f, %cl            # Print in white
    call  putChar               # Execute print
    incq  %r10                  # Increment current character on screen
    incq  %r11                  # Increment current character in byte array

  jmp   gameLoop_end

  keyPressEvent:
   # 1 Pressed
   cmpq    $2, %rax
   je      key1Press

   # 2 Pressed
   cmpq    $3, %rax
   je      key2Press

   # 3 Pressed
   cmpq    $4, %rax
   je      key3Press

   # 4 Pressed
   cmpq    $5, %rax
   je      key4Press

   # 5 Pressed
   cmpq    $6, %rax
   je      key5Press

   # 6 Pressed
   cmpq    $7, %rax
   je      key6Press

   # 7 Pressed
   cmpq    $8, %rax
   je      key7Press

  jmp      gameLoop_end

  key1Press:
   # "Play Game" in Start Menu
   cmpb    $0, (currentMenu)
   je      PlayGame

   # "Explore Option 1" in Explore Menu
   cmpb    $2, (currentMenu)
   je      Explore1

   # "Attack" in Combat Menu
   cmpb    $3, (currentMenu)
   je      CombatAttack

   # "VIT+" in Shop Menu
   cmpb    $4, (currentMenu)
   je      shopPotionPress

   # "Min Reward/Risk" in Event Menu
   cmpb    $5, (currentMenu)
   je      EventChoice1

   # "VIT+" in Stats Menu
   cmpb    $6, (currentMenu)
   je      statAddPress

   # "Continue" in Reward Menu
   cmpb    $7, (currentMenu)
   je      ExploreMenu

   # "Continue" in Game Over Menu
   cmpb    $8, (currentMenu)
   je      StartMenu

   # "Continue" in Event Reward Menu
   cmpb    $9, (currentMenu)
   je      ExploreMenu

   # "Continue" in High Scores Menu
   cmpb    $10, (currentMenu)
   je      StartMenuNoClear

   # "Continue" in Help Menu
   cmpb    $11, (currentMenu)
   je      StartMenuNoClear

   jmp     gameLoop_end

  key2Press:
   # "High Scores" in Start Menu
   cmpb    $0, (currentMenu)
   je      HighScoresMenu

   # "Explore Option 2" in Explore Menu
   cmpb    $2, (currentMenu)
   je      Explore2

   # "Use Health Potion" in Combat Menu
   cmpb    $3, (currentMenu)
   je      CombatHealthPotion

   # "VIT+" in Shop Menu
   cmpb    $4, (currentMenu)
   je      shopStatPress

   # "Med Reward/Risk" in Event Menu
   cmpb    $5, (currentMenu)
   je      EventChoice2

   # "STR+" in Stats Menu
   cmpb    $6, (currentMenu)
   je      statAddPress

   # "Stats" in Reward Menu
   cmpb    $7, (currentMenu)
   je      enterStatsMenu

   # "Stats" in Event Reward Menu
   cmpb    $9, (currentMenu)
   je      enterStatsMenu

   jmp     gameLoop_end

  key3Press:
   # "How To Play" in Start Menu
   cmpb    $0, (currentMenu)
   je      HelpMenu

   # "Explore Option 3" in Explore Menu
   cmpb    $2, (currentMenu)
   je      Explore3

   # "Block" in Combat Menu
   cmpb    $3, (currentMenu)
   je      CombatBlock

   # "STR+" in Shop Menu
   cmpb    $4, (currentMenu)
   je      shopStatPress

   # "Max Reward/Risk" in Event Menu
   cmpb    $5, (currentMenu)
   je      EventChoice3

   # "DEX+" in Stats Menu
   cmpb    $6, (currentMenu)
   je      statAddPress

   jmp     gameLoop_end

  key4Press:
   # "Exit Game" in Start Menu
#   cmpb    $0, (currentMenu)
#   je      ExitGame

   # "Stats" in Explore Menu
   cmpb    $2, (currentMenu)
   je      enterStatsMenu

   # "Flee" in Combat Menu
   cmpb    $3, (currentMenu)
   je      CombatFlee

   # "DEX+" in Shop Menu
   cmpb    $4, (currentMenu)
   je      shopStatPress

   # "Walk Away" in Event Menu
   cmpb    $5, (currentMenu)
   je      ExploreMenu

   # "AGI+" in Stats Menu
   cmpb    $6, (currentMenu)
   je      statAddPress

   jmp     gameLoop_end

  key5Press:
   # "Stats RES+" in Stats Menu
   cmpb    $6, (currentMenu)
   je      statAddPress

   # "AGI+" in Shop Menu
   cmpb    $4, (currentMenu)
   je      shopStatPress

   jmp     gameLoop_end

  key6Press:
   # "RES+" in Shop Menu
   cmpb    $4, (currentMenu)
   je      shopStatPress

   # "Exit" in Stats Menu
   cmpb    $6, (currentMenu)
   je      ExploreMenu

   jmp     gameLoop_end

  key7Press:
   # "Exit" in Shop Menu
   cmpb    $4, (currentMenu)
   je      ExploreMenu

   jmp     gameLoop_end

 # Start new game, ask to input name
 PlayGame:
  movq    $0, %r11             # Initialize current player name length to 0
  movb    $1, (currentMenu)    # Set menu to NAME INPUT
  call    clear                # Clear all text

  movq    $inputNameStr, %rdi  # Move message to ask for name input
  movq    $0, %rsi             # Line 0
  movq    $0, %rdx             # Column 0
  movb    $0x0f, %cl           # White
  call    printString

  jmp     gameLoop_end

  Explore1:
   movq    $70, %rdi           # 70% chance to encounter enemy
   movq    $85, %rsi           # 15% chance to encounter event (and 15% to encounter store)
   movq    $20, %rdx           # 20% for easy enemy
   movq    $90, %rcx           # 70% for medium enemy (last 10% for hard enemy)
   call    exploreOnwards      # Proceed exploration (generate random outcome)
   jmp     gameLoop_end

  Explore2:
   movq    $80, %rdi           # 80% chance to encounter enemy
   movq    $100, %rsi          # 20% chance to encounter event (and 0% to encounter store) 
   movq    $35, %rdx           # 35% for easy enemy
   movq    $85, %rcx           # 50% for medium enemy (last 15% for hard enemy)
   call    exploreOnwards      # Proceed exploration (generate random outcome)
   jmp     gameLoop_end

  Explore3:
   movq    $50, %rdi           # 50% chance to encounter enemy
   movq    $55, %rsi           # 5% chance to encounter event (and 45% to encounter store)
   movq    $10, %rdx           # 10% for easy enemy
   movq    $70, %rcx           # 60% for medium enemy (and 30% for hard enemy)
   call    exploreOnwards      # Proceed exploration (generate random outcome)
   jmp     gameLoop_end

  ExploreMenu:
   call    enterExplore        # Enter the "Explore" menu
   jmp     gameLoop_end

  HighScoresMenu:
   call enterHighScores        # Enter the "High Scores" menu
   jmp  gameLoop_end

   HelpMenu:
   call enterHelp              # Enter the "How To Play" menu
   jmp gameLoop_end

#  ExitGame:
#   jmp gameLoop_end

  StartMenu:
   call   clearData            # Reset data for next game

  StartMenuNoClear:
   call   enterStart           # Enter Start Menu
   jmp    gameLoop_end

statAddPress:
 movq %rax, %rdi               # Move PS2 input to RDI
 decq %rdi                     # Decrement PS2 input (since 1 is 2 in PS2 input)
 call pointToStat              # Call the subroutine to handle logic for spending skill points on stats
 jmp gameLoop_end

shopStatPress:
 movq %rax, %rdi               # Move PS2 input to RDI
 subq $2, %rdi                 # Subtract 2 from PS2 input (to accomodate to the keypresses in the Shop menu)
 call goldToStat               # Call the subroutine to handle logic for buying stats
 jmp  gameLoop_end

shopPotionPress:
 call goldToPotion             # Call the subroutine to handle logic for buying potions
 jmp  gameLoop_end

 CombatAttack:
  call combatPlayerAttack      # Call the subroutine to handle logic when the Player chooses the "Attack" option
  jmp gameLoop_end

 CombatHealthPotion:
  cmpq $0, (p_health_potions)  # Check whether the Player has any potions
  je   gameLoop_end            # If not, end this iteration
  call combatHeal              # If the Player does, heal and decrement the potion count
  jmp  gameLoop_end

 CombatBlock:
  movb $2, (p_block)           # Set Blocking mode for 2 turns

  pushq   $playerName          # Push the player's name as an argument for printing
  pushq   $0x0a                # Push the color green as an argument for printing (for Player Name)

  movq    (combatLine), %rsi   # Move the current line used in combat to clear
  call    clearLine            # Clear the line of any characters

  movq    $combat_block, %rdi  # Move the format string for "%s blocks!"
  movq    (combatLine), %rsi   # Move the current line used in combat for the line to print in argument
  movq    $1, %rdx             # Column 1
  movb    $0x0f, %cl           # White
  call    printString          # Print with specified arguments
  call    shiftLine            # Shift the current combatLine

  call combatEnemyAttack       # After that, proceed to the enemy's turn
  jmp  gameLoop_end

 CombatFlee:
  call combatFlee              # Call the subroutine to handle the logic for fleeing
  jmp gameLoop_end

 EventChoice1:
  movq $75, %r8                # Move 75% as the chance for the event option to succeed
  movq (event_gain), %r9       # Move the "Min Risk/Reward" gain amount as the "Gain" argument
  movq (event_lose), %r10      # Movve the "Min Risk/Reward" loss amount as the "Loss" argument
  call eventChoose             # Call the subroutine to handle the logic for choosing the 1st option for the random event
  jmp gameLoop_end

 EventChoice2:
  movq $50, %r8                # Move 50% as the chance for the event option to succeed
  movq (event_gain)+8, %r9     # Move the "Med Risk/Reward" gain amount as the "Gain" argument
  movq (event_lose)+8, %r10    # Move the "Med Risk/Reward" loss amount as the "Loss" argument
  call eventChoose             # Call the subroutine to handle the logic for choosing the 2nd option for the random event
  jmp gameLoop_end

 EventChoice3:
  movq $25, %r8                # Move 25% as the chance for the event option to succeed
  movq (event_gain)+16, %r9    # Move the "Max Risk/Reward" gain amount as the "Gain" argument
  movq (event_lose)+16, %r10   # Move the "Max Risk/Reward" loss amount as the "Loss" argument
  call eventChoose             # Call the subroutine to handle the logic for choosing the 3rd option for the random event
  jmp gameLoop_end

 gameLoop_end:
  ret

#########################################
#              SUBROUTINES              #
#                                       #
#########################################
# IMPORTANT NOTE: In this project, standard calling conventions for stack frames for subroutines
# are ignored. The reasons are explained under one label of the printString subroutine.

##################################################
#                   printString                  #
#                                                #
# Prints a string from specified line and column #
#                                                #
# args:                                          #
# %rdi = string                                  #
# %rsi = line #                                  #
# %rdx = column #                                #
##################################################
printString:
  movq  %rdi, %r8  # move string to register 8
  movq  %rsi, %r9  # move line number to register 9
  movq  %rdx, %r10 # move column number to register 10

  printLoop:
   cmpb $0, (%r8)      # check whether end of string was reached (\0 char)
   je   printStringEnd # end loop if end was reached

   cmpb $37, (%r8)     # check whether the current character is '%'
   jne  printLoopChar  # if it's not, continue onwards with the printing

   format_percent:
    cmpb $37, 1(%r8)   # check if the next symbol is '%'
    jne  format_decimal# else check 'd'
    inc  %r8           # increment byte array (skip printing format '%')
    jmp  printLoopChar # return to printing the string as usual

   format_decimal:
    cmpb $100, 1(%r8) # Check whether the next symbol is 'd'
    jne format_string # If it's not, check whether the next symbol is 's'
    inc %r8           # move to next char in byte array

    popq %r12        # Pop return code
    popq %r11        # Pop needed argument
    pushq %r12       # Push back return code

    movq $10, %rbx   # Move 10 into register B
    movq $0, %r13    # Initialize index to 0

    # Take note again that this program does not use the standard calling conventions for stack frames.
    # But in fact we do not need a stack frame here, since we already remove our local
    # Variables in the next loop, so everything we push WILL get popped.

    format_decimal_while:
     movq $0, %rdx           # Initialize remainder to 0
     movq %r11, %rax         # Move value that will be the dividend
     idivq %rbx              # Divide by 10 (split off last digit)
     movq %rax, %r11         # Move remaining number
     pushq %rdx              # Store last digit (remainder) onto the stack
     incq %r13               # Increment digit count
     cmpq $0, %r11           # Check whether all the digits of the number were stored
     je   decimal_print_loop # If they were, jump to print loop
     jmp format_decimal_while # Repeat loop if the number is not yet 0

    decimal_print_loop:
     cmpq $0, %r13       # Check whether all digits were printed
     je format_increment # If they have, move on with parsing
     popq %r12           # Pop current digit to register 12
     movb $48, (%r14)    # Move '0' char to register 14
     addq %r12, (%r14)   # Add single-digit number to register 14
     movb (%r14), %dl    # move current character of string for printing
     movq %r10, %rdi     # move column number as first argument to putChar
     movq %r9, %rsi      # move line number as second argument to putChar
     call putChar        # call putChar
     incq %r10           # increment column count
     decq %r13           # decrement remaining digit count
     jmp  decimal_print_loop

   format_string:
    cmpb $115, 1(%r8)     # check whether the next symbol is 's'
    jne  format_increment # else skip through '%' symbol

    inc %r8               # skip through format '%'

    # This is the reason why in this project we will not use standard calling conventions.
    # Using calling conventions would make this task difficult, since if the gameLoop
    # continues after we have some elements unpopped remaining in the stack, then
    # we get artifacts on the screen. Therefore for simplicity (and also due to the fact
    # that we do not require local variables in these subroutines), we will not use
    # stack frames.

    popq %r12        # Pop return code
    movb %cl, %dh    # Save current color
    movb (%rsp), %cl # Move color value to CL register
    popq %r11        # Pop off color value
    popq %r11        # Pop needed argument
    pushq %r12       # Push back return code


    f_string_print_loop:
     cmpb $0, (%r11)         # check for end of string
     je   f_string_ret_col   # if end of string, then skip through formatting "%s"
     movb (%r11), %dl        # move char to print
     movq %r10, %rdi         # move column number
     movq %r9, %rsi          # move line number
     call putChar            # execute subroutine
     incq %r10               # increment column number
     inc  %r11               # increment byte arrayr
     jmp f_string_print_loop # repeat loop

   f_string_ret_col:
     movb %dh, %cl          # return original color
     jmp  format_increment

   format_increment:
    inc  %r8                # pass through formatting chars (e.g. 's' in "%s")
    jmp  printLoop          # continue print loop

   printLoopChar:
    movb (%r8), %dl     # move current character of string for printing
    movq %r10, %rdi     # move column number as first argument to putChar
    movq %r9, %rsi      # move line number as second argument to putChar
    call putChar        # call putChar
    incq %r10           # increment column count
    inc  %r8            # move to next char in string
    jmp  printLoop      # repeat loop

  printStringEnd:
   ret

##############################################################
#                          clear                             #
#                                                            #
# Clears every character (knowing 80x25 res) from the screen #
#                                                            #
##############################################################
clear:
   movq    $0, %r9  # Initialize current line to 0

   clearLoop:
    cmpq $25, %r9   # Check whether last line (25) reached
    je clearEnd     # If so, end subroutine
    movq %r9, %rsi  # Move loop counter as current line argument for clearLine
    call clearLine  # Clear the line
    incq %r9        # Move to next line
    jmp clearLoop   # Repeat loop

 clearEnd:
  ret

##############################################
#                  clearLine                 #
#                                            #
#   Clears the specified line of characters  #
#                                            #
# args:                                      #
# %rsi = line number                         #
##############################################
clearLine:
  movq $emptyString, %rdi  # Move empty string (whitespaces) as print argument
  movq $0, %rdx            # Column 0
  movb $0x00, %cl          # Black
  call printString         # Clears the line

  ret

##################################
#           enterStart           #
#                                #
#      Enters the Start Menu     #
#                                #
##################################
enterStart:
  movb $0, (currentMenu) # Set Current Menu to 0 (Start Menu)
  call clear             # Clear the screen

  movq    $title, %rdi  # Title String
  movq    $0, %rsi      # Line 0
  movq    $15, %rdx     # Column 15
  movb    $0x0f, %cl    # White
  call    printString   # Print the title

  movq    $menu1, %rdi  # Option 1 String
  movq    $3, %rsi      # Line 3
  movq    $15, %rdx     # Column 15
  movb    $0x02, %cl    # Green
  call    printString   # Print Option 1

  movq    $menu2, %rdi  # Option 2 String
  movq    $4, %rsi      # Line 4
  movq    $17, %rdx     # Column 15
  movb    $0x05, %cl    # Magenta
  call    printString   # Print Option 2

  movq    $menu3, %rdi  # Option 3 String
  movq    $5, %rsi      # Line 5
  movq    $19, %rdx     # Column 15
  movb    $0x01, %cl    # Blue
  call    printString   # Print Option 3

#  movq    $menu4, %rdi  # Option 4 String
#  movq    $6, %rsi      # Line 6
#  movq    $23, %rdx     # Column 15
#  movb    $0x04, %cl    # Red
#  call    printString   # Print Option 4

ret

##################################
#         enterHighScores        #
#                                #
#   Enters the High Scores Menu  #
#                                #
##################################
enterHighScores:
  movb $10, (currentMenu) # Set Current Menu to 10 (High Scores Menu)
  call clear              # Clear the screen

  movq    $high_scores_header, %rdi     # High Scores Header String
  movq    $0, %rsi                      # Line 0
  movq    $1, %rdx                      # Column 1
  movb    $0x05, %cl                    # Magenta
  call    printString                   # Print the High Scores Header

  movq    $high_scores_col_heads, %rdi  # High Scores Column Headers
  movq    $2, %rsi                      # Line 2
  movq    $1, %rdx                      # Column 1
  movb    $0x0f, %cl                    # White
  call    printString                   # Print the High Scores Column Headers

  movq    $continue, %rdi               # Continue String
  movq    $20, %rsi                     # Line 20
  movq    $1, %rdx                      # Column 1
  movb    $0x0f, %cl                    # White
  call    printString                   # Print the Continue String

  movq    $3, %r15                      # Initialize current line to 3
  movq    $0, %r14                      # Initialize current player to 0
  whileHighScoresPrint:
   cmpq (high_scores_count), %r14   # Check whether all players with a high score have been iterated over
   je   highScoresEnd               # If so, end the high scores print loop

   pushq %r14                       # Push No. as argument to the stack 
   incq (%rsp)                      # Increment the No.
   movq $decimalStr, %rdi           # Pass in "%d" as format string
   movq %r15, %rsi                  # Pass in current line as Line arg for printing
   movq $1, %rdx                    # Column 1
   movb $0x0e, %cl                  # Yellow
   call printString                 # Print No.

   movq high_scores_names(,%r14,8), %rdi # Pass in player name as string arg for printing
   movq %r15, %rsi                       # Pass in current line as Line arg for printing
   movq $6, %rdx                         # Column 6
   movb $0x0a, %cl                       # Light Green
   call printString                      # Print Name

   pushq high_scores_exp(,%r14,8)      # Push Player Experience as argument to the stack 
   movq $decimalStr, %rdi           # Pass in "%d" as format string
   movq %r15, %rsi                  # Pass in current line as Line arg for printing
   movq $24, %rdx                   # Column 24
   movb $0x0e, %cl                  # Yellow
   call printString                 # Print Experience

   incq %r14                        # Move on to next Player in high scores
   incq %r15                        # Move on to next line

   jmp whileHighScoresPrint

highScoresEnd:
 ret

###################################
#            enterHelp            #
#                                 #
#   Enters the How to Play Menu   #
#                                 #
###################################
enterHelp:
  movb $11, (currentMenu) # Set Current Menu to 11 (How To Play Menu)
  call clear              # Clear the screen

  movq    $help_header, %rdi     # How To Play Header String
  movq    $0, %rsi               # Line 0
  movq    $1, %rdx               # Column 1
  movb    $0x02, %cl             # Green
  call    printString            # Print the High Scores Header

  movb    $0x0f, %cl             # White
  movq    $continue, %rdi        # Continue String
  movq    $24, %rsi              # Line 14
  movq    $1, %rdx               # Column 1
  call    printString            # Print Continue Option

  movq    $0, %r14               # Move 2 as current Line

  whilePrintHelp:
   movq    help_lines(,%r14,8), %rdi # Get neede Help text line
   movq    %r14, %rsi                # Set Line arg as R14's value

   cmpq    $9, %r14                  # Check whether we're on the 9th line or greater
   jl      helpAdd2                  # If not, skip the upcoming code until helpAdd2
   incq    %rsi                      # Else add line spacing
   cmpq    $15, %r14                 # Check whether we're on the 15th line or greater
   jl      helpAdd2                  # If not, skip the upcoming code until helpAdd2
   incq    %rsi                      # Else add even more line spacing

   helpAdd2:
   addq    $2, %rsi                  # Add 2 to the initial R14's value (since we're printing from Line 2)

   movq    $1, %rdx                  # Column 1

   helpVIT:
    cmpq    $10, %r14                # Check if the current line is 10
    jne     helpSTR                  # Else move to next if statement
    movb    $0x0c, %cl               # Light Red
    jmp     helpColorAfter           # Skip checking for other colors

   helpSTR:
    cmpq    $11, %r14                # Check if the current line is 11
    jne     helpDEX                  # Else move to next if statement
    movb    $0x04, %cl               # Red
    jmp     helpColorAfter           # Skip checking for other colors

   helpDEX:
    cmpq    $12, %r14                # Check if the current line is 12
    jne     helpAGI                  # Else move to next if statement
    movb    $0x02, %cl               # Green
    jmp     helpColorAfter           # Skip checking for other colors

   helpAGI:
    cmpq    $13, %r14                # Check if the current line is 13
    jne     helpRES                  # Else move to next if statement
    movb    $0x03, %cl               # Cyan
    jmp     helpColorAfter           # Skip checking for other colors

   helpRES:
    cmpq    $14, %r14                # Check if the current line is 14
    jne     helpText                 # Else print in white
    movb    $0x05, %cl               # Magenta
    jmp     helpColorAfter           # Skip checking for other colors

   helpText:
    movb    $0x0f, %cl               # White

   helpColorAfter:

   call    printString               # Print the Help text line
   
   incq %r14                         # Move on to the next line
   cmpq $19, %r14                    # Check whether all lines have been printed
   jne whilePrintHelp                # If not, repeat loop
   

 ret

###################################
#          enterGameOver          #
#                                 #
#    Enters the Game Over Menu    #
#                                 #
###################################
enterGameOver:
 movb $8, (currentMenu)           # Set Current Menu to 8 (Game Over)
 call clear                       # Clear the screen

  movb    $0x04, %cl              # Red

  movq    $gameover_header, %rdi  # Game Over Header String
  movq    $0, %rsi                # Line 0
  movq    $0, %rdx                # Column 0
  call    printString             # Print Game Over Header String

  movq    $gameover_header, %rdi  # Game Over Header String
  movq    $1, %rsi                # Line 1
  movq    $0, %rdx                # Column 0
  call    printString             # Print Game Over Header String

  movq    $gameover_header, %rdi  # Game Over Header String
  movq    $2, %rsi                # Line 2
  movq    $0, %rdx                # Column 0
  call    printString             # Print Game Over Header String

  movq    $gameover_header, %rdi  # Game Over Header String
  movq    $3, %rsi                # Line 3
  movq    $0, %rdx                # Column 0
  call    printString             # Print Game Over Header String

  movq    $gameover_header, %rdi  # Game Over Header String
  movq    $21, %rsi               # Line 21
  movq    $0, %rdx                # Column 0
  call    printString             # Print Game Over Header String

  movq    $gameover_header, %rdi  # Game Over Header String
  movq    $22, %rsi               # Line 22
  movq    $0, %rdx                # Column 0
  call    printString             # Print Game Over Header String

  movq    $gameover_header, %rdi  # Game Over Header String
  movq    $23, %rsi               # Line 23
  movq    $0, %rdx                # Column 0
  call    printString             # Print Game Over Header String

  movq    $gameover_header, %rdi  # Game Over Header String
  movq    $24, %rsi               # Line 24
  movq    $0, %rdx                # Column 0
  call    printString             # Print Game Over Header String

 movq $4, %rbx                    # Initialize Current Line to 4
 
 printGameOverMiddles:
   movq $gameover_middle, %rdi    # Game Over Middle String
   movq %rbx, %rsi                # Move register B value as Line argument
   movq $0, %rdx                  # Column 0
   call printString               # Print Game Over Middle String
   incq %rbx                      # Move on to next Line
   cmpq $21, %rbx                 # If Line 21 reached, exit loop
   jne printGameOverMiddles       # Else repeat loop

  movq    $gameover_title, %rdi   # Game Over Title String
  movq    $8, %rsi                # Line 8
  movq    $35, %rdx               # Column 35
  call    printString             # Print Game Over Title String

  movb    $0x0a, %cl              # Green
  movq    $playerName, %rdi       # Player Name String
  movq    $10, %rsi               # Line 10
  movq    $35, %rdx               # Column 35
  call    printString             # Print Player Name

  movb    $0x0e, %cl                   # Yellow
  pushq   (experience)                 # Push experience as "%d" argument
  movq    $gameover_experience, %rdi   # Game Over Experience String
  movq    $11, %rsi                    # Line 11
  movq    $35, %rdx                    # Column 35
  call    printString                  # Print Player Experience

  pushq   (gold)                       # Push gold as "%d" argument
  movq    $gameover_gold, %rdi         # Game Over Gold String
  movq    $12, %rsi                    # Line 12
  movq    $35, %rdx                    # Column 35
  call    printString                  # Print Player Gold

  movb    $0x0f, %cl                   # White
  movq    $continue, %rdi              # Game Over Continue String
  movq    $14, %rsi                    # Line 14
  movq    $35, %rdx                    # Column 35
  call    printString                  # Print Game Over Continue Option

  call    highScoresInsert             # Subroutine to handle the logic of adding a Player to the high scores menu

 ret

##################################################
#                    clearData                   #
#                                                #
#    Resets the player's stats for a new game    #
#                                                #
##################################################
clearData:
 movq $1, (level)                      # Initialize player level to 1
 movq $0, (gold)                       # Initialize player gold to 0
 movq $0, (experience)                 # Initialize player experience to 0
 movq $10, (next_level_exp)            # Initialize next level experience to 10
 movq $0, (stat_points)                # Initialize player stat points to 0
 movq $15, (p_health)                  # Initialize player health to 15
 movq $15, (p_maxHealth)               # Initialize player max health to 15
 movq $5, (p_vit)                      # Initialize player VIT stat to 5
 movq $5, (p_str)                      # Initialize player STR stat to 5
 movq $5, (p_dex)                      # Initialize player DEX stat to 5
 movq $5, (p_agi)                      # Initialize player AGI stat to 5
 movq $5, (p_res)                      # Initialize player RES stat to 5
 movq $1, (p_health_potions)           # Initialize player potion count to 1

 ret

#####################################
#            enterExplore           #
#                                   #
#       Enters the Explore Menu     #
#                                   #
#####################################
enterExplore:
  movb    $2, (currentMenu)     # Set Current Menu to 2 (Explore Menu)
  call    clear                 # Claer the screen

  # PRINT WELCOME MESSAGE
  pushq   $playerName           # Push the Player's name as argument
  pushq   $0x0a                 # Push the color green as color for the Player's name
  movq    $welcomeStr, %rdi     # Indicate string (or rather string format) to print
  movq    $0, %rsi              # Start from first line
  movq    $1, %rdx              # Start from first column
  movb    $0x0f, %cl            # Print in white
  call    printString           # Execute subroutine

  # PRINTS THE INSTRUCTION TO THE PLAYER (TO PICK A CHOICE) AND ALL THE CHOICES
  movq    $explore_choose, %rdi  # Explore Choose String
  movq    $1, %rsi               # Line 1
  movq    $1, %rdx               # Column 1
  movb    $0x0f, %cl             # White
  call    printString            # Print the Explore Choose String

  movq    $explore_choice1, %rdi # Explore Choice 1 String
  movq    $3, %rsi               # Line 3
  movq    $1, %rdx               # Column 1
  movb    $0x0e, %cl             # Yellow
  call    printString            # Print the Explore Choice 1 String

  movq    $explore_choice2, %rdi # Explore Choice 2 String
  movq    $4, %rsi               # Line 4
  movq    $1, %rdx               # Column 1
  movb    $0x0c, %cl             # Light Red
  call    printString            # Print the Explore Choice 2 String

  movq    $explore_choice3, %rdi # Explore Choice 3 String
  movq    $5, %rsi               # Line 5
  movq    $1, %rdx               # Column 1
  movb    $0x0a, %cl             # Light Green
  call    printString            # Print the Explore Choice 3 String

  movq    $explore_choice4, %rdi # Explore Choice 4 String
  movq    $6, %rsi               # Line 6
  movq    $1, %rdx               # Column 1
  movb    $0x09, %cl             # Light Blue
  call    printString            # Print the Explore Choice 4 String
  ret

######################################
#            enterStatsMenu          #
#                                    #
#        Enters the Stats Menu       #
#                                    #
######################################
enterStatsMenu:
 movb $6, (currentMenu)        # Set Current Menu to 6 (Stats Menu)
 call clear                    # Clear the Screen

  # Print "STATS"
  movq    $stats_header, %rdi  # Stats Header String
  movq    $0, %rsi             # Line 0
  movq    $1, %rdx             # Column 1
  movb    $0x09, %cl           # Light Blue
  call    printString          # Print the Stats Header String

  # Print Player name
  movq    $playerName, %rdi    # Player Name String
  movq    $2, %rsi             # Line 2
  movq    $1, %rdx             # Column 1
  movb    $0x0a, %cl           # Light Green
  call    printString          # Print the Player Name String

  # Print level
  pushq   (level)              # Push level as the "%d" argument
  movq    $stats_level, %rdi   # Level String
  movq    $3, %rsi             # Line 3
  movq    $1, %rdx             # Column 1
  movb    $0x0e, %cl           # Yellow
  call    printString          # Print the Level String

  # Print exp and exp required to next level
  pushq   (next_level_exp)    # Push next level experience requirement as "%d" argument
  pushq   (experience)        # Push current experience as "%d" argument
  movq    $stats_exp, %rdi    # Experience String
  movq    $4, %rsi            # Line 4
  movq    $1, %rdx            # Column 1
  movb    $0x0e, %cl          # Yellow
  call    printString         # Print the Experience String

  # Print gold
  pushq   (gold)              # Push player gold as "%d" argument
  movq    $stats_gold, %rdi   # Gold String
  movq    $5, %rsi            # Line 5
  movq    $1, %rdx            # Column 1
  movb    $0x0e, %cl          # Yellow
  call    printString         # Print the Gold String

  # Print stat points
  pushq   (stat_points)            # Push stat points as "%d" argument
  movq    $stats_stat_points, %rdi # Stat Points String
  movq    $6, %rsi                 # Line 6
  movq    $1, %rdx                 # Column 1
  movb    $0x0d, %cl               # Light Magenta
  call    printString              # Print the Stat Points String

  # Print current Player health and maximum player health
  pushq   (p_maxHealth)            # Push Player Max Health as "%d" argument
  pushq   (p_health)               # Push Player current Health as "%d" argument
  movq    $stats_health, %rdi      # Health String
  movq    $7, %rsi                 # Line 7
  movq    $1, %rdx                 # Column 1
  movb    $0x0c, %cl               # Light Red
  call    printString              # Print the Health String

  # Print Vitality stat
  pushq   $1                       # Push 1 as "%d" argument (1 = VIT)
  pushq   (p_vit)                  # Push Player VIT stat as "%d" argument
  movq    $stats_vit, %rdi         # VIT String
  movq    $8, %rsi                 # Line 8
  movq    $1, %rdx                 # Column 1
  movb    $0x04, %cl               # Red
  call    printString              # Print the VIT String

  # Print Strength stat
  pushq   $2                       # Push 2 as "%d" argument (2 = STR)
  pushq   (p_str)                  # Push Player STR stat as "%d" argument
  movq    $stats_str, %rdi         # STR String
  movq    $9, %rsi                 # Line 9
  movq    $1, %rdx                 # Column 1
  movb    $0x06, %cl               # Brown
  call    printString              # Print the VIT String

  # Print Dexterity stat
  pushq   $3                       # Push 3 as "%d" argument (3 = DEX)
  pushq   (p_dex)                  # Push Player DEX stat as "%d" argument
  movq    $stats_dex, %rdi         # DEX String
  movq    $10, %rsi                # Line 10
  movq    $1, %rdx                 # Column 1
  movb    $0x02, %cl               # Green
  call    printString              # Print the VIT String

  # Print Agility stat
  pushq   $4                       # Push 4 as "%d" argument (4 = AGI)
  pushq   (p_agi)                  # Push Player AGI stat as "%d" argument
  movq    $stats_agi, %rdi         # AGI String
  movq    $11, %rsi                # Line 11
  movq    $1, %rdx                 # Column 1
  movb    $0x03, %cl               # Cyan
  call    printString              # Print the VIT String

  # Print Resistance stat
  pushq   $5                       # Push 5 as "%d" argument (5 = RES)
  pushq   (p_res)                  # Push Player RES stat as "%d" argument
  movq    $stats_res, %rdi         # RES String
  movq    $12, %rsi                # Line 12
  movq    $1, %rdx                 # Column 1
  movb    $0x01, %cl               # Blue
  call    printString              # Print the VIT String

  # Print indicator to Player to go back to Explore menu
  pushq   $6                       # Push 6 as "%d" argument (6 = BACK)
  movq    $back_option, %rdi       # Back Option String
  movq    $13, %rsi                # Line 13
  movq    $1, %rdx                 # Column 1
  movb    $0x0f, %cl               # White
  call    printString              # Print Back Option String

 ret

#####################################
#            enterShopMenu          #
#                                   #
#         Enters the Shop Menu      #
#                                   #
#####################################
enterShopMenu:
 movb $4, (currentMenu) # Set Current Menu to 4 (Shop Menu)
 call clear             # Clear the screen

  # Print "SHOP"
  movq    $shop_header, %rdi
  movq    $0, %rsi
  movq    $1, %rdx
  movb    $0x0a, %cl
  call    printString

  # Print gold
  pushq   (gold)
  movq    $stats_gold, %rdi
  movq    $2, %rsi
  movq    $1, %rdx
  movb    $0x0e, %cl
  call    printString

  # Print BUY HEALTH POTIOONS
  pushq   (p_health_potions)
  movq    $shop_choice1, %rdi
  movq    $3, %rsi
  movq    $1, %rdx
  movb    $0x09, %cl
  call    printString


  # Print VIT
  pushq   (p_vit)
  movq    $shop_stat1, %rdi
  movq    $4, %rsi
  movq    $1, %rdx
  movb    $0x04, %cl
  call    printString

  # Print UPGRADE HELMET
  movq    $shop_choice2, %rdi
  movq    $5, %rsi
  movq    $1, %rdx
  movb    $0x04, %cl
  call    printString
  
  # Print STR
  pushq   (p_str)
  movq    $shop_stat2, %rdi
  movq    $6, %rsi
  movq    $1, %rdx
  movb    $0x06, %cl
  call    printString

  # Print UPGRADE WEAPON
  movq    $shop_choice3, %rdi
  movq    $7, %rsi
  movq    $1, %rdx
  movb    $0x06, %cl
  call    printString
  
  # Print DEX
  pushq   (p_dex)
  movq    $shop_stat3, %rdi
  movq    $8, %rsi
  movq    $1, %rdx
  movb    $0x02, %cl
  call    printString

  # Print UPGRADE BOOTS
  movq    $shop_choice4, %rdi
  movq    $9, %rsi
  movq    $1, %rdx
  movb    $0x02, %cl
  call    printString

  # Print AGI
  pushq   (p_agi)
  movq    $shop_stat4, %rdi
  movq    $10, %rsi
  movq    $1, %rdx
  movb    $0x03, %cl
  call    printString

  # Print UPGRADE GLOVES
  movq    $shop_choice5, %rdi
  movq    $11, %rsi
  movq    $1, %rdx
  movb    $0x03, %cl
  call    printString
  
  # Print RES
  pushq   (p_res)
  movq    $shop_stat5, %rdi
  movq    $12, %rsi
  movq    $1, %rdx
  movb    $0x01, %cl
  call    printString

  # Print UPGRADE ARMOR
  movq    $shop_choice6, %rdi
  movq    $13, %rsi
  movq    $1, %rdx
  movb    $0x01, %cl
  call    printString
  
  # Print indicator to Player to go back to Explore menu
  pushq   $7
  movq    $back_option, %rdi
  movq    $14, %rsi
  movq    $1, %rdx
  movb    $0x0f, %cl
  call    printString

 ret


###########################################################
#                 exploreOnwards                          #
#                                                         #
#  Generates one of the three possible encounters         #
#  (enemy, shop, event) according to specified arguments  #
#                                                         #
# args:                                                   #
# %rdi = Enemy Encounter Range (0;%rdi]                   #
# %rsi = Event Encounter Range (%rdi, %rsi]               #
# Shop Encounter Range (%rsi, 100]                        #
#                                                         #
# %rdx - Easy Enemy Encounter Range (0, %rdx]             #
# %rcx - Medium Enemy Encounter Range (%rdx, %rcx]        #
# Hard Enemy Encounter Rage - (%rcx, 100]                 #
###########################################################
exploreOnwards:
 movq %rdi, %r8    # Move Enemy Enconter Range value (temporarily) to register 8
 movq %rsi, %r9    # Move Event Encounter Range value (temporarily) to register 9
 movq $1, %rdi     # Set lower bound for RNG to 1
 movq $100, %rsi   # Set upper bound for RNG to 100
 call RNG          # Generate a random number [1;100]
 movq %r8, %rdi    # Move back Enemy Encounter Range value to RDI
 movq %r9, %rsi    # Move back Event Encounter Range value to RSI

 exploreFindEnemy:
  cmpq %r8, %rax         # Check if randomly generated number is in range [1;rdi]
  jg   exploreFindEvent  # If not, check that for event range
  call randomPickEnemy   # If it is, then the Player encounters an enemy
  ret

 exploreFindEvent:
  cmpq %r9, %rax         # Check if randomly generated number is in range (rdi,rsi]
  jg   exploreFindShop   # If not, then the Player encounters a shop
  call randomPickEvent   # If it is, then the Player encounters an event
  ret

 exploreFindShop:
  call  enterShopMenu    # Player encounters a shop
  ret

#########################################################
#                   randomPickEnemy                     #
#                                                       #
#    Generates a random enemy encounter according to    #
#    specified arguments                                #
#                                                       #
# args:                                                 #
# %rdx - Easy Enemy Encounter Range (0, %rdx]           #
# %rcx - Medium Enemy Encounter Range (%rdx, %rcx]      #
# Hard Enemy Encounter Rage - (%rcx, 100]               #
#########################################################
randomPickEnemy:
 # Assume full range (0;100] for RNG picks
 movq $1, %rdi     # RNG lower bound 1
 movq $100, %rsi   # RNG upper bound 100
 movq %rdx, %r8    # Move Easy Enemy Encounter Range to register 8 (to prevent overwriting)

 checkMedium:
  cmpq $4, (level)    # Check if Medium Enemies can be encountered (they can only be encountered starting from level 4)
  jge  checkHard      # If level >= 4, check if Hard enemies may also be encountered
  movq %r8, %rsi      # Full range is (o; %rdx) [only easy monsters]
  jmp  startPickEnemy # Pick enemy

 checkHard:
  cmpq $8, (level)    # Check if Hard Enemies can be encountered (they can only be encountered starting from level 8)
  jge  startPickEnemy # If level >= 8, that means any difficulty enemy can be encountered
  movq %rcx, %rsi     # Full range is (0; %rcx] (only monsters from easy to medium]

 startPickEnemy:
  call RNG            # Generate RNG in constructed range

  easyEnemyPick:
   cmpq %r8, %rax        # If RNG is in range [1;r8], then Easy Enemy has been encountered
   jg   mediumEnemyPick  # Else check for Medium Enemy
   movq $0, %rdi         # The first Easy Monster in the monster database starts at index 0
   movq $4, %rsi         # And last is at index 4
   jmp  pickEnemyFinal   # Move on to last stage of random enemy encounters

  mediumEnemyPick:
   cmpq %rcx, %rax       # If RNG is in range (r8, rcx], then Medium Enemy has been encountered
   jg   hardEnemyPick    # Else Hard Enemy has been encountered
   movq $5, %rdi         # First Medium Monster in the monster database starts at index 5
   movq $12, %rsi        # And last is at index 12
   jmp  pickEnemyFinal   # Move on to the last stage of random enemy encounters

  hardEnemyPick:
   movq $13, %rdi        # First Hard Monster in the monster database starts at index 13
   movq $15, %rsi        # And last is at index 15

 pickEnemyFinal:
  call RNG               # Generate Random Monster with specified range
  movq $8, %rbx          # Move 8 as multiplier
  mulq %rbx              # Multiple RNG by 8 (since we're referencing quads, s0 indexes go as 0, 8, 16..)
  movq %rax, %r15        # Move result to register 15 (which holds monster ID)

 initEnemy:
  scaleEnemy:
   movq $0, %r8       # Stats
   movq $0, %r9       # Health
   movq $0, %r10      # Gold
   movq $0, %r11      # Experience
   movq (level), %r12 # Player Level

   decq %rsi          # %rsi previously incremented by RNG subroutine, so restore it to it's initial value (last index of Easy/Medium/Hard monster)

  scaleEasy:
   cmpq $4, %rsi     # Check whether fighting Easy monster (last ID 4)
   jne  scaleMedium  # Check for Medium otherwise

   cmpq $3, %r12     # Optimization - skips scaling if Player not at least level 3
   jl   initMonster

   decq %r12           # Decrement level
   movq $2, %rbx       # Scale factor for Easy Monsters (every 2 levels starting from Level 1)
   movq $1, %r8        # +1 to Stats per scale
   movq $2, %r9        # +2 to Health per scale
   movq $4, %r10       # +4 to Gold per scale
   movq $5, %r11       # +5 to Experience per scale
   jmp  calculateScale # Applies scaling to enemy

  scaleMedium:
   cmpq $12, %rsi   # Check whether fighting Medium monster (last ID 12)
   jne  scaleHard   # Otherwise we are fighting Hard monster

   cmpq $7, %r12     # Optimization - skips scaling if Player not at least level 7
   jl   initMonster

   subq $4, %r12       # Decrease level by 4 (since Medium monsters are encountered from Level 4)
   movq $3, %rbx       # Scale factor for Medium Monsters (every 3 levels starting from Level 4)
   movq $2, %r8        # +2 to Stats per scale
   movq $5, %r9        # +5 to Health per scale
   movq $10, %r10      # +10 to Gold per scale
   movq $15, %r11      # +15 to Experience per scale
   jmp  calculateScale # Applies scaling to enemy

  scaleHard:
   cmpq $12, %r12   # Optimization - skips scaling if Player not at least level 12
   jl   initMonster

   subq $8, %r12    # Decreases level by 8 (since Hard monsters are encountered from Level 8)
   movq $4, %rbx    # Scale factor for Hard Monsters (every 4 levels starting from Level 8)
   movq $3, %r8     # +3 to Stats per scale
   movq $10, %r9    # +10 to Health per scale
   movq $20, %r10   # +20 to Gold per scale
   movq $30, %r11   # +30 to Experience per scale

 calculateScale:
   movq %r12, %rax  # Move level offset to register A
   movq $0, %rdx    # Initialize remainder to 0
   divq %rbx        # Divide level offset by scale factor

   movq %rax, %rbx  # Our result is the number of times required to scale the enemy (moved to reg B)

   movq %r8, %rax   # Move Stats+ to register A
   mulq %rbx        # Multiply by scale times
   movq %rax, %r8   # Move result to register 8

   movq %r9, %rax   # Move Health+ to register A
   mulq %rbx        # Multiply by scale times
   movq %rax, %r9   # Move result to register 9

   movq %r10, %rax  # Move Gold+ to register A
   mulq %rbx        # Multiply by scale times
   movq %rax, %r10  # Move result to register 10

   movq %r11, %rax  # Move Experience+ to register A
   mulq %rbx        # Multiply by scale times
   movq %rax, %r11  # Move result to register 11


 initMonster:
  movq db_m_health(%r15), %r14 # Move base monster health to register 14
  addq %r9, %r14               # Add scale amount
  movq %r14, (m_health)        # Move result to current monster health variable
  movq %r14, (m_maxHealth)     # Move result to current monster max health variable

  movq db_m_gold(%r15), %r14   # Move base monster gold reward to register 14
  addq %r10, %r14              # Add scale amount
  movq %r14, (m_gold)          # Move result to current monster gold reward variable

  movq db_m_exp(%r15), %r14    # Move base monster experience reward to register 14
  addq %r11, %r14              # Add scale amount
  movq %r14, (m_experience)    # Move result to current monster experience reward variable

  movq db_m_str(%r15), %r14    # Move base monster STR stat to register 14
  addq %r8, %r14               # Add scale amount
  movq %r14, (m_str)           # Move result to current monster STR stat

  movq db_m_dex(%r15), %r14    # Move base monster DEX stat to register 14
  addq %r8, %r14               # Add scale amount
  movq %r14, (m_dex)           # Move result to current monster DEX stat

  movq db_m_agi(%r15), %r14    # Move base monster AGI stat to register 14
  addq %r8, %r14               # Add scale amount
  movq %r14, (m_agi)           # Move result to current monster AGI stat

  movq db_m_res(%r15), %r14    # Move base monster RES stat to register 14
  addq %r8, %r14               # Add scale amount
  movq %r14, (m_res)           # Move result to current monster RES stat

  call enterCombat             # Enter the Combat Menu with now initialized enemy
  ret

# COMBAT

############################################################
#                     enterCombat                          #
#                                                          #
#    Enters the Combat menu, also initializing the Enemy   #
#                with initialized variables                #
#                                                          #
############################################################
enterCombat:
  movb $3, (currentMenu) # Set Current Menu to 3 (Combat Menu)
  call clear             # Clear the screen

  movq $6, (combatLine)  # Set combatLine to 6

  # Print "IN COMBAT"
  movq    $combat_header, %rdi
  movq    $1, %rsi
  movq    $1, %rdx
  movb    $0x0c, %cl
  call    printString

  call    combatUpdatePlayerHealth  # Update Player Health text
  call    combatUpdateMonsterHealth # Update Monster Health text

  # Print Combat Choose text
  movq    $combat_choose, %rdi
  movq    $19, %rsi
  movq    $1, %rdx
  movb    $0x0f, %cl
  call    printString

  # Print Combat Choice 1
  movq    $combat_choice1, %rdi
  movq    $20, %rsi
  movq    $1, %rdx
  movb    $0x0c, %cl
  call    printString

  call combatUpdatePotionCount     # Print Combat Choice 2 (and, actually, update potion count text)

  # Print Combat Choice 3
  movq    $combat_choice3, %rdi
  movq    $22, %rsi
  movq    $1, %rdx
  movb    $0x0e, %cl
  call    printString

  # Print Combat Choice 4
  movq    $combat_choice4, %rdi
  movq    $23, %rsi
  movq    $1, %rdx
  movb    $0x0a, %cl
  call    printString

 ret

###########################################################
#                        combatDone                       #
#                                                         #
#    Called after the monster has been defeated. Moves    #
#    the Player to the reward screen                      #
#                                                         #
###########################################################
combatDone:
 movb    $7, (currentMenu) # Set Current Menu to 7 (Combat Done menu)

  movq    $19, %r9         # Set current line to 19

  combatDoneClearLoop:
   movq   %r9, %rsi           # Move current line iterated as line argument
   call   clearLine           # Clear the line
   incq   %r9                 # Move on to the next line
   cmpq   $24, %r9            # If at line 24, then break the loop
   jne    combatDoneClearLoop # Else continue looping

  movq    (m_gold), %rbx       # Move monster gold reward value to register B
  addq    %rbx, (gold)         # Add gold reward to player
  movq    (m_experience), %rbx # Move monster experience reward value to register B
  addq    %rbx, (experience)   # Add experience reward to player

  # Print Monster Defeated String
  pushq   db_m_names(%r15)
  pushq   $0x0c
  movq    $combat_defeated, %rdi
  movq    $19, %rsi
  movq    $1, %rdx
  movb    $0x0f, %cl
  call    printString

  # Print Gold Reward String
  pushq   (m_gold)
  movq    $combat_gold, %rdi
  movq    $20, %rsi
  movq    $1, %rdx
  movb    $0x0e, %cl
  call    printString

  # Print Experience Reward String
  pushq   (m_experience)
  movq    $combat_experience, %rdi
  movq    $21, %rsi
  movq    $1, %rdx
  movb    $0x0e, %cl
  call    printString

  # Print Combat Exit Option String
  movq    $combat_exit_choice, %rdi
  movq    $23, %rsi
  movq    $1, %rdx
  movb    $0x0b, %cl
  call    printString

  movq    (level), %rax     # Move current level value to register A
  call    levelUpCheck      # Check for level up
  cmpq    (level), %rax     # Check if previous level and current level (if changed) are equal
  jne     combatDoneLevelUp # If they aren't, that means the player levelled up
  ret

  combatDoneLevelUp:
   # Print Level Up String
   pushq   (level)
   pushq   $playerName
   pushq   $0x0a
   movq    $combat_level_up_text, %rdi
   movq    $22, %rsi
   movq    $1, %rdx
   movb    $0x0a, %cl
   call    printString

   ret

#################################################################
#                    combatUpdatePlayerHealth                   #
#                                                               #
#    Updates the line indicating the Player's current health.   #
#                                                               #
#################################################################
combatUpdatePlayerHealth:
  movq    $3, %rsi      # Set line argument to 3
  call    clearLine     # Clear 3rd line

  pushq   (p_maxHealth)          # Push player max health as print argument
  pushq   (p_health)             # Push player health as print argument
  pushq   $playerName            # Push player name string as argument
  pushq   $0x0a                  # Light Green
  movq    $combat_fighter, %rdi  # Move Combat Fighter string as format string argument
  movq    $3, %rsi               # Line 3
  movq    $1, %rdx               # Column 1
  movb    $0x0f, %cl             # White
  call    printString            # Print the String in line 3
  ret

##################################################################
#                  combatUpdateMonsterHealth                     #
#                                                                #
#    Updates the line indicating the Monster's current health.   #
#                                                                #
##################################################################
combatUpdateMonsterHealth:
  movq    $4, %rsi      # Set line argument to 4
  call    clearLine     # Clear 4th line

  pushq   (m_maxHealth)          # Push monster max health as print argument
  pushq   (m_health)             # Push monster health as print argument
  pushq   db_m_names(%r15)       # Push monster name string as argument
  pushq   $0x0c                  # Light Red
  movq    $combat_fighter, %rdi  # Move Combat Fighter string as format string argument
  movq    $4, %rsi               # Line 4
  movq    $1, %rdx               # Column 1
  movb    $0x0f, %cl             # White
  call    printString            # Print the String in line 4
  ret

#################################################################
#                  combatUpdatePotionCount                      #
#                                                               #
#     Updates the line indicating the Player's potion count.    #
#                                                               #
#################################################################
 combatUpdatePotionCount:
  movq    $21, %rsi      # Set line argument to 21
  call    clearLine      # Clear 4th line

  pushq   (p_health_potions)    # Push player health potion count as print argument
  movq    $combat_choice2, %rdi # Push Combat Choice 2 string as format string argument
  movq    $21, %rsi             # Line 21
  movq    $1, %rdx              # Column 1
  movb    $0x09, %cl            # Light Blue
  call    printString           # Print the String in line 21
  ret

#################################################################
#                     combatPlayerAttack                        #
#                                                               #
#       Attack option in Combat. Player attacks the Monster.    #
#                                                               #
#################################################################
 combatPlayerAttack:
  movq (p_agi), %r8   # Move player AGI stat to register 8
  subq (m_dex), %r8   # Subtract monster DEX stat
  call getHitRate     # Calculate Player's hit rate
  movq %rax, %r9      # Move the result to register 9

  movq $1, %rdi       # Lower bound 1
  movq $100, %rsi     # Upper bound 100
  call RNG            # RNG [1;100]

  cmpq %r9, %rax        # Check if randomly generated number in range [1;r9]
  jg   combatPlayerMiss # If not, the Player missed

  movq (p_str), %r8     # Move player STR stat to register 8
  movq (m_res), %r9     # Move monster RES stat to register 9
  call getDamage        # Calculate Damage
  subq %rax, (m_health) # Subtract calculated damage from monster's health

  pushq   db_m_names(%r15) # Push monster name as %s argument
  pushq   $0x0c            # Light Red
  pushq   %rax             # Push the damage value as %d argument
  pushq   $playerName      # Push the player name as %s argument
  pushq   $0x0a            # Light Green

  movq    (combatLine), %rsi # Set current combatLine as line argument
  call    clearLine          # And clear it

  movq    $combat_inflict, %rdi # Move Combat Inflict String as format string
  movq    (combatLine), %rsi    # Move current combatLine as line argument
  movq    $1, %rdx              # Column 1
  movb    $0x0f, %cl            # White
  call    printString           # Print the String
  call    shiftLine             # Shift combatLine forward

  cmpq $0, (m_health)            # Check if monster is dead (health <= 0)
  jle  monsterKill               # If so, move on to monster kill logic
  call combatUpdateMonsterHealth # Else update Monster Health
  call combatEnemyAttack         # And make the Monster attack the Player (since it's the monster's turn after this)
  ret

  combatPlayerMiss:
   pushq   db_m_names(%r15)      # Push monster name as %s argument
   pushq   $0x0c                 # Light Red
   pushq   $playerName           # Push player name as %s argument
   pushq   $0x0a                 # Light Green

   movq    (combatLine), %rsi    # Set current combatLine as line argument
   call    clearLine             # And clear it

   movq    $combat_miss, %rdi    # Move Combat Miss String as format string
   movq    (combatLine), %rsi    # Move current combatLine as line argument
   movq    $1, %rdx              # Column 1
   movb    $0x0f, %cl            # White
   call    printString           # Print the String
   call    shiftLine             # Shift combatLine forward
   call    combatEnemyAttack     # Proceed to enemy's turn
   ret

  monsterKill:
   movq $0, (m_health)             # Set monster's health to 0 (in case of it being negative)
   call combatUpdateMonsterHealth  # Update monster's health
   call combatDone                 # End Combat (move to rewards screen)
   ret

############################################
#             combatEnemyAttack            #
#                                          #
#        Monster attacks the Player.       #
#                                          #
############################################
 combatEnemyAttack:
  movq (m_agi), %r8    # Move Monster AGI stat to register 8
  subq (p_dex), %r8    # Subtract Player DEX stat

  cmpb $0, (p_block)   # Check if Player still has the Blocking buff
  je   enemyGetHitRate # If not, skip the upcoming 2 lines
  decb (p_block)       # Else decrement Player Block remaining turns
  subq $5, %r8         # And assume that Player DEX is 5 points higher

  enemyGetHitRate:
   call getHitRate     # Calculate hitrate
   movq %rax, %r9      # Move result to register 9

  movq $1, %rdi        # Lower bound 1
  movq $100, %rsi      # Upper bound 100
  call RNG             # RNG [1;100]

  cmpq %r9, %rax       # Check whether the Enemy missed (check if RNG <= hit%)
  jg   combatEnemyMiss # Enemy missed jump

  movq (m_str), %r8     # Move Monster STR stat to register 8
  movq (p_res), %r9     # Move Player RES stat to register 9
  call getDamage        # Calculate damage
  subq %rax, (p_health) # Subtract calculated damage from player's health


  pushq   $playerName      # Push Player Name as %s arg
  pushq   $0x0a            # Light Green
  pushq   %rax             # Push damage value as %d arg
  pushq   db_m_names(%r15) # Push Monster name as %s arg
  pushq   $0x0c            # Light Red

  movq    (combatLine), %rsi # Move current combatLine as line argument
  call    clearLine          # Clear the line

  movq    $combat_inflict, %rdi # Move Combat Inflict as format string
  movq    (combatLine), %rsi    # Move current combatLine as line argument
  movq    $1, %rdx              # Column 1
  movb    $0x0f, %cl            # White
  call    printString           # Print the Combat Inflict String
  call    shiftLine             # Shift the combatLine

  cmpq $0, (p_health)           # Check if Player health <= 0
  jle  playerKill               # In that case, Player is now dead (mvoe to game over)
  call combatUpdatePlayerHealth # Else update Player health
  ret

  playerKill:
   call enterGameOver           # Game over (Player is dead)
   ret

  combatEnemyMiss:
   pushq   $playerName          # Push Player Name as %s arg
   pushq   $0x0a                # Light Green
   pushq   db_m_names(%r15)     # Push Monster Name as %s arg
   pushq   $0x0c                # Light Red

   movq    (combatLine), %rsi   # Move current combatLine as line argument
   call    clearLine            # Clear the line

   movq    $combat_miss, %rdi   # Move Combat Miss as format string
   movq    (combatLine), %rsi   # Move current combatLine as line argument
   movq    $1, %rdx             # Column 1
   movb    $0x0f, %cl           # White
   call    printString          # Print the Combat Miss String
   call    shiftLine            # Shift the Combat Line
   ret


#########################################################
#                        getHitRate                     #
#                                                       #
#       Calculates hit rate from specified argument     #
#                                                       #
# args:                                                 #
# %r8 = AGI (attacker) - DEX (attacked)                 #
#########################################################
 getHitRate:
  hit100:
   cmpq $10, %r8   # Check if AGI-DEX >= 10
   jl   hit30to90  # If not, check next condition
   movq $100, %rax # If it is, then 100% hitrate
   ret

  hit30to90:
   cmpq $-20, %r8  # Check if AGI-DEX <= -20
   jle  hit30      # If it is, then 30% hitrate

   cmpq $5, %r8    # Check if AGI-DEX >= 5
   jge  hit90      # Calculate hitrate accordingly

   cmpq $0, %r8    # Check if AGI-DEX >= 0
   jge  hit85      # Calculate hitrate accordingly

   cmpq $-5, %r8   # Check if AGI-DEX >= -5
   jge  hit75      # Calculate hitrate accordingly

   jmp hit30plus   # Else calculate hitrate accordingly

   hit90:
    movq $2, %rax  # Move 2 as multiplicand
    subq $5, %r8   # Subtract 5 from AGI-DEX
    mulq %r8       # Multiply 2 by (AGI-DEX)-5 value
    addq $90, %rax # Add 90% to result (so hit rate is [90%;98%]
    ret

   hit85:
    movq $85, %rax # Move 85% as initial value
    addq %r8, %rax # Add (AGI-DEX) to result (so hit rate is [85%;89%]
    ret

   hit75:
    movq $2, %rax  # Move 2 as multiplicand
    mulq %r8       # Multiply by (AGI-DEX) value (which is negative)
    addq $85, %rax # Add 85% to result (so hitrate is [75%, 83%]
    ret

   hit30plus:
    movq $3, %rax  # Move 3 as multiplicand
    addq $5, %r8   # Add 5 to (AGI-DEX) value
    mulq %r8       # Multiply 3 by (AGI-DEX) value
    addq $75, %rax # Add 75% to result (so hitrate is [33%;72%]
    ret

  hit30:
   movq $30, %rax  # Hit rate 30%
   ret

#########################################################
#                         getDamage                     #
#                                                       #
#        Calculates damage from specified arguments     #
#                                                       #
# args:                                                 #
# %r8 = STR (attacker)                                  #
# %r9 = RES (attacked)                                  #
#########################################################
 getDamage:
  movq %r8, %rax  # Move STR to register A
  movq $0, %rdx   # Initialize remainder as 0
  movq $2, %rbx   # Move 2 as divisor
  divq %rbx       # Divide STR by 2
  incq %rax       # Increment result

  movq $1, %rdi   # Move 1 as lower bound for RNG
  movq %rax, %rsi # Move (STR/2 + 1) as upper bound for RNG
  call RNG        # Generate random number in [1; (STR/2 + 1)] range

  movq %rax, %r10  # Damage

  # Logic of resisting damage is as follows:
  # RULE: Up to 75% Damage can be resisted and final damage cannot be less than 1
  # Get RNG in range [(RES-STR)/2 ; (RES/2)]
  # Subtract it from Damage
  # Compare result to 25% Damage
  # FINAL RESULT = MAX(DMG-RESISTED; 25% DMG)

  calculateRes:
   # (RES/2)
   movq %r9, %rax  # Move RES to register 9
   movq $0, %rdx   # Initialize remainder as 0
   movq $2, %rbx   # Move 2 as divisor
   divq %rbx       # Divide result by 2 (result RES/2)
   movq %rax, %rsi # Move (RES/2) as upper bound for RNG

   # (RES-STR)/2
   movq %r9, %rdi  # R9 = RES
   subq %r8, %rdi  # R9 = RES - STR

   cmpq $0, %rdi          # Check whether RDI <= 0
   jle  resZeroLowerRange # If it is, just init it to 0

   movq %rdi, %rax # Move (RES-STR) to register A
   movq $0, %rdx   # Initialize remainder as 0
   movq $2, %rbx   # Move 2 as divisor
   divq %rbx       # Divide (RES-STR) by 2
   movq %rax, %rdi # Move (RES-STR)/2 as lower bound for RNG

   jmp  resGenerate # Skip the next 1 line of code (in case of RDI <= 0)

   resZeroLowerRange:
    movq $0, %rdi

   resGenerate:
    call RNG           # Generate random number in range [(RES-STR)/2;(RES/2)]
    movq %rax, %r9     # Move RNG as RES value

   resEvaluate:
    movq %r10, %rax    # Move DMG to register A
    movq $0, %rdx      # Initialize remainder as 0
    movq $4, %rbx      # Move 4 as divisor
    divq %rbx          # Divide DMG by 4

    cmpq $0, %rax      # Check whether 25% DMG is 0
    jne resEvaluate2   # If it's not, carry on
    movq $1, %rax      # If it is, init 25% DMG to 1

    resEvaluate2:
     subq %r9, %r10     # DMG = DMG - RESISTED

     cmpq %rax, %r10    # Check whether 25% DMG <= (DMG - RESISTED)
     jle  getDamageEnd  # If it is, result is 25% DMG
     movq %r10, %rax    # If it's not, result is (DMG - RESISTED)

  getDamageEnd:
   ret

#####################################################
#                     combatHeal                    #
#                                                   #
#    Consume a health potion to heal the Player     #
#                                                   #
#####################################################
 combatHeal:
  movq   (p_maxHealth), %rax  # Move player's max health to register A
  cmpq    %rax, (p_health)    # Check if player's max health is <= current health (less possible on VIT loss in random events)
  jge     combatHealEnd       # If it is, potion is not consumed (would be trivial)

  decq   (p_health_potions)   # Else decrement potion count

  movq   $3, %rbx             # Move 3 as divisor
  movq   $0, %rdx             # Move 0 as remainder
  divq   %rbx                 # Divide player max health by 3 (store result in register A)

  movq   (p_maxHealth), %rbx  # Move player max health to register B
  subq   (p_health), %rbx     # Subtract player health

  cmpq   %rax, %rbx           # Check if not healed more than the max possible amount (which is maxHealth - Health)
  jge    combatHealPrint      # If not, then carry on
  movq   %rbx, %rax           # If healed more, then clamp the value to maximum allowed

  combatHealPrint:
   addq    %rax, (p_health)   # Heal the player

   pushq   %rax               # Move healed amount as %d argument
   pushq   $healing_potion    # Move healing potion string as %s argument
   pushq   $0x09              # Light Blue
   pushq   $playerName        # Move Player name as %s argument
   pushq   $0x0a              # Light Green

   movq    (combatLine), %rsi # Move current combatLine as line argument
   call    clearLine          # And clear it

   movq    $combat_restore, %rdi # Move Combat Restore as format string argument
   movq    (combatLine), %rsi    # Move current combatLine as line argument
   movq    $1, %rdx              # Column 1
   movb    $0x0f, %cl            # White
   call    printString           # Print the String
   call    shiftLine             # Shift the combatLine

  combatHealDone:
   call   combatUpdatePotionCount  # Update the line with the Player's potion count
   call   combatUpdatePlayerHealth # Update the line with the Player's health
   call   combatEnemyAttack        # Proceed to Enemy's turn

  combatHealEnd:
   ret

#########################################################
#                       combatFlee                      #
#                                                       #
#    Combat Flee action. Attempt fleeing the monster.   #
#                                                       #
#########################################################
 combatFlee:
  movq $1, %rdi    # Lower bound 1
  movq $100, %rsi  # Upper bound 100

  # Compare Enemy & Player AGI
  movq (p_dex), %r10 # Move player DEX stat to register 10
  subq (m_dex), %r10 # Subtract monster DEX stat

  flee100:
   cmpq $10, %r10   # Check if DEX difference is >= 10
   jl   flee40to80  # Else check for other conditions
   movq $100, %r10  # Then flee rate 100%
   jmp  tryFlee     # Try fleeing (will always succeed in this case)
   

  flee40to80:
   cmpq $-10, %r10  # Check if DEX difference is <= -10
   jl   flee40      # If it is, then 40% flee rate

   movq $2, %rax     # Move 2 as multiplicand
   cmpq $0, %r10     # Check if DEX difference is >= 0
   jge  flee40to80_a # If it is, skip moving 4 as multiplicand
   movq $4, %rax

   flee40to80_a:
    mulq %r10        # Multiply the multiplicand by DEX difference
    movq $80, %r10   # Move 80% as starting point for flee chance
    addq %rax, %r10  # Add (or subtract, since the number may also be negative) the result of multiplication to 80% (to get [44%;98%] flee rate

   jmp  tryFlee      # Attempt fleeing

  flee40:
   movq $40, %r10    # Flee chance 40%
   jmp  tryFlee      # Attempt fleeing

 tryFlee:
  movq $1, %rdi      # Lower bound 1
  movq $100, %rsi    # Upper bound 100
  call RNG           # RNG [1;100]

  cmpq %r10, %rax    # Check if fleeing succeeded (by checking if RNG <= flee%)
  jle  fleeSuccess   # If so, move on to flee succeed logic

  pushq   $playerName # Push player name as %s argument
  pushq   $0x0a       # Light Green

  movq    (combatLine), %rsi # Move current combatLine as line argument
  call    clearLine          # Clear the line

  movq    $combat_flee_fail, %rdi # Move Combat Flee Fail String as format string arg
  movq    (combatLine), %rsi      # Move current combatLine as line argument
  movq    $1, %rdx                # Column 1
  movb    $0x0f, %cl              # White
  call    printString             # Print the String
  call    shiftLine               # Shift the Combat Line
  call    combatEnemyAttack       # Proceed to enemy's turn
  ret

 fleeSuccess:
   call enterExplore
   ret

############################################
#                  shiftLine              #
#                                         #
#    Shifts the line for combat actions   #
#                                         #
###########################################
shiftLine:
 incq (combatLine)      # Move on to next line in combat
 cmpq $17, (combatLine) # Check if we're at line 17
 jne  shiftLineEnd      # If not, end subroutine

 movq $6, %r9           # Initialize current line to 6
 
 whileClearCombatLines:
  movq %r9, %rsi            # Move current line as line arg
  call clearLine            # Clear specified line
  incq %r9                  # Move to next line
  cmpq $15, %r9             # Check if we're at line 15
  jne whileClearCombatLines # If not, repeat loop

 movq $6, (combatLine)  # Shift the combatLine to the top (6)
 
 shiftLineEnd:
  ret

# STATS
pointToStat:
 cmpq $0, (stat_points) # Check whether the Player has atleast one stat point
 je pointToStatEnd      # If the Player does not, exit subroutine

 decq (stat_points)     # Decrease Stat Points by 1
 call incrementStat     # Increment stat according to PS2 input
 call enterStatsMenu    # Refresh Stat Menu

 pointToStatEnd:
  ret

##############################################################
#                        goldToStat                          #
#                                                            #
#    Upgrades stat (if enough gold is present) in the Shop   #
#                                                            #
# args (local):                                              #
# %rdi = stat id                                             #
# %rsi = stat price                                          #
# %rdx = stat count                                          #
##############################################################
goldToStat:
 initPriceCountVit:
  cmpq $1, %rdi               # Check if stat is VIT
  jne  initPriceCountDefault  # If not, stat price is 100
  movq $5, %rdx               # Else 5 stat points are given
  movq $250, %rsi             # At the cost of 250 gold
  jmp  startGoldToStat        # Check if Player has enough gold

 initPriceCountDefault:
  movq $2, %rdx               # All other stats give 2 stat points
  movq $100, %rsi             # For 100 gold

 startGoldToStat:
  cmpq %rsi, (gold)           # Check if Player has enough gold
  jl   goldToStatEnd          # If not, end subroutine
  subq %rsi, (gold)           # Else subtract gold from Player

 goldToStatLoop:
  call incrementStat          # Increment the specified stat
  decq %rdx                   # Decrease counter
  cmpq $0, %rdx               # Check if counter == 0
  jne  goldToStatLoop         # If not, repeat loop

 call enterShopMenu           # Refresh shop menu

 goldToStatEnd:
  ret

######################################################
#                     goldToPotion                   #
#                                                    #
#    Subtracts gold (if enough gold is present) and  #
#           gives the Player 1 more potion           #
#                                                    #
######################################################
goldToPotion:
 cmpq $50, (gold)        # Check if Player has enough gold to buy potion
 jl   goldToPotionEnd    # If not, end subroutine
 subq $50, (gold)        # Else subtract 50 gold from Player
 incq (p_health_potions) # And give 1 potion to Player
 call enterShopMenu      # Refresh shop menu

 goldToPotionEnd:
  ret

######################################
#            incrementStat           #
#                                    #
#    Increases specified stat by 1   #
#                                    #
# args:                              #
# %rdi = stat ID                     #
######################################
incrementStat:
 cmpq $1, %rdi          # Vitality
 je incrementVit        # Increment VIT

 cmpq $2, %rdi          # Strength
 je incrementStr        # Increment STR
  
 cmpq $3, %rdi          # Dexterity
 je incrementDex        # Increment DEX
  
 cmpq $4, %rdi          # Agility
 je incrementAgi        # Increment AGI
  
 cmpq $5, %rdi          # Resistance
 je incrementRes        # Increment RES

 ret

incrementVit:
 incq (p_vit)           # Increment VIT
 addq $2, (p_maxHealth) # Add 2 to health
 addq $2, (p_health)    # Add 2 to maxHealth
 ret

incrementStr:
 incq (p_str)           # Increment STR
 ret

incrementDex:
 incq (p_dex)           # Increment DEX
 ret

incrementAgi:
 incq (p_agi)           # Increment AGI
 ret

incrementRes:
 incq (p_res)           # Increment RES
 ret

########################################################################
#                              levelUpCheck                            #
#                                                                      #
#    Checks for player level up, advances to next level continiously   #
#    until exp_required is greated than current experience             #
#                                                                      #
########################################################################
levelUpCheck:
 movq (next_level_exp), %rbx # Move next level exp requirement to register B

 cmpq %rbx, (experience)     # Check if requirement matches
 jge  levelUp                # If it does, advance 1 level
 ret

 levelUp:
  incq (level)               # Advance 1 level

  # Increase next_level_exp
  movq (level), %r8          # Move level to register 8
  movq $5, %rbx              # Move 5 as multiplier
  decq %r8                   # Decrement level

  movq %r8, %rax             # Move decremented level value to register A
  mulq %rbx                  # Multiply by 5

  addq %rax, (next_level_exp) # Add the result to next_level_exp requirement (so it's 5*(level-1))

  decq %r8                   # Decrement level even further
  movq %r8, %rax             # Move result to register A
  mulq %rax                  # Square (level-2)
  mulq %rbx                  # Multiply by 5

  addq %rax, (next_level_exp) # Add the result to next_level_exp requirement (so it's 5*(level-2)^2)

  movq (p_maxHealth), %rbx    # Move player max health value to register B
  movq %rbx, (p_health)       # Heal the player (set health to maxHealth)

  movq (level), %rax          # Move level to register A
  movq $0, %rdx               # Initialize 0 as remainder
  movq $10, %rbx              # Move 10 as divisor
  divq %rbx                   # Divide level by 10

  stat3:
   cmpq $0, %rdx              # Check if remainder is 0
   jne  stat2                 # If it's not, then move on to next condition check
   addq $3, (stat_points)     # Add 3 stat points
   jmp  levelUpCheck          # Check level up again (since more than 1 level may be advanced in one go)

  stat2:
   cmpq $5, %rdx              # Check if remainder is 5
   jne  stat1                 # If not, add 1 stat point
   addq $2, (stat_points)     # Else add 2 stat points
   jmp  levelUpCheck          # Check level up again

  stat1:
   incq (stat_points)         # Add 1 stat point
   jmp  levelUpCheck          # Check level up again

############################################################################
#                           randomPickEvent                                #
#                                                                          #
#    Generates one of the three possible random events (gold, experience   #
#                               or stats)                                  #
#                                                                          #
############################################################################
randomPickEvent:
 movq $1, %rdi   # Lower bound 1
 movq $3, %rsi   # Upper bound 3
 call RNG        # RNG [1;3]

 eventExperience:
  cmpq $1, %rax           # Check whether RNG is 1
  jne  eventGold          # If not, check if RNG is 2
  pushq $experience_text  # Push EXPERIENCE as %s argument
  pushq $0x0f             # White

  movq   (experience), %rax # Move player's experience value to register A
  movq   $10, %rbx          # Move 10 as divisor
  movq   $0, %rdx           # Initialize remainder as 0
  divq   %rbx               # Divide experience by 10

  movq   %rax, (event_gain) # Move result to event gain (for low risk/reward)
  movq   %rax, (event_lose) # Move result to event loss (for low risk/reward)

  movq   $2, %rbx           # Move 2 as divisor
  mulq   %rbx               # Multiply 10% of experience by 2 (so 20%)

  movq   %rax, (event_gain)+8 # Move result to event gain (for med risk/reward)
  movq   %rax, (event_lose)+8 # Move result to event loss (for med risk/reward)

  mulq   %rbx               # Multiply 20% of experience by 2 (so 40%)

  movq   %rax, (event_gain)+16 # Move result to event gain (for high risk/reward)
  movq   %rax, (event_lose)+16 # Move result to event loss (for high risk/reward)

  movq   $5, (event_var)   # Experience is event variable/ID 5

  jmp enterEvent

 eventGold:
  cmpq $2, %rax            # Check if RNG is 2
  jne  eventStat           # Else RNG must be 3
  pushq $gold_text         # Push GOLD as %s argument
  pushq $0x0f              # White

  movq  $25, (event_gain)  # Move 25 as event gain (for low risk/reward)
  movq  $25, (event_lose)  # Move 25 as event loss (for low risk/reward)

  movq  $50, (event_gain)+8  # Move 50 as event gain (for med risk/reward)
  movq  $40, (event_lose)+8  # Move 40 as event loss (for med risk/reward)

  movq  $100, (event_gain)+16 # Move 100 as event gain (for high risk/reward)
  movq  $75, (event_lose)+16  # Move 75 as event loss (for high risk/reward)

  movq  $6, (event_var)   # Gold is event variable/ID 6 

  jmp  enterEvent

 eventStat:
  movq  $1, (event_gain)  # Move 1 as event gain (for low risk/reward)
  movq  $1, (event_lose)  # Move 1 as event loss (for low risk/reward)

  movq  $3, (event_gain)+8   # Move 3 as event gain (for med risk/reward)
  movq  $2, (event_lose)+8   # Move 2 as event loss (for med risk/reward)

  movq  $5, (event_gain)+16   # Move 5 as event gain (for high risk/reward)
  movq  $4, (event_lose)+16   # Move 4 as event loss (for high risk/reward)

  movq   $0, %rdi  # Lower Bound 0 (VIT)
  movq   $4, %rsi  # Lower Bound 4 (RES)
  call   RNG       # RNG [0;4] (all 5 stats)

  movq   %rax, (event_var) # Move result as event variable/ID

  movq   $8, %rbx          # Move 8 as multiplier
  mulq   %rbx              # Multiply result by 8 (since we're referencing quads, so 8 bytes each)

  pushq stat_names(%rax)   # Push the stat name as %s argument
  pushq $0x0f              # White

  jmp  enterEvent

enterEvent:
  call    clear  # Clear the screen

  # Print the Event Header ("RANDOM EVENT")
  movb    $5, (currentMenu)
  movq    $event_header, %rdi
  movq    $0, %rsi
  movq    $1, %rdx
  movb    $0x0e, %cl
  call    printString

  # Print the first explanation of a random event string
  movq    $event_explain1, %rdi
  movq    $2, %rsi
  movq    $1, %rdx
  movb    $0x0e, %cl
  call    printString

  # Print the second explanation of a random event string
  movq    $event_explain2, %rdi
  movq    $3, %rsi
  movq    $1, %rdx
  movb    $0x0e, %cl
  call    printString

  # Print the instruction to the player (to pick one event)
  movq    $event_pick, %rdi
  movq    $4, %rsi
  movq    $1, %rdx
  movb    $0x0e, %cl
  call    printString

  pushq   (event_lose)+16 # Push high risk/reward loss value as %d argument
  pushq   (event_gain)+16 # Push high risk/reward gain value as %d argument
  pushq   (event_lose)+8  # Push med risk/reward loss value as %d argument
  pushq   (event_gain)+8  # Push med risk/reward loss value as %d argument
  pushq   (event_lose)    # Push low risk/reward loss value as %d argument
  pushq   (event_gain)    # Push low risk/reward loss value as %d argument
  
  # Print the first event choice
  movq    $event_choice1, %rdi
  movq    $6, %rsi
  movq    $1, %rdx
  movb    $0x0a, %cl
  call    printString

  # Print the second event choice
  movq    $event_choice2, %rdi
  movq    $7, %rsi
  movq    $1, %rdx
  movb    $0x0e, %cl
  call    printString

  # Print the third event choice
  movq    $event_choice3, %rdi
  movq    $8, %rsi
  movq    $1, %rdx
  movb    $0x0c, %cl
  call    printString

  # Print the fourth event choice (walk away)
  movq    $event_choice4, %rdi
  movq    $9, %rsi
  movq    $1, %rdx
  movb    $0x0b, %cl
  call    printString

 ret

########################################################################
#                              eventChoose                             #
#                                                                      #
#   Processes the Player's event choice (Min/Med/Max Risk/Reward)      #
#                                                                      #
# args:                                                                #
# %r8 = chance                                                         #
# %r9 = gain                                                           #
# %r10 = loss                                                          #
########################################################################
eventChoose:
 movq $1, %rdi   # Lower bound 1
 movq $100, %rsi # Upper bound 100
 call RNG        # RNG [1;100]

 movq %r9, %r12       # Move gain value to register 12
 movq $gain_txt, %r11 # Move gain test string address to register 11

 cmpq %rax, %r8       # Check whether a gain has occured (check if RNG is in range [1;r8]])
 jge  eventAddValue

 # Loss occured here
 movq %r10, %r9       # Move loss value to gain value (for simplicity in arithmetic later)
 movq %r10, %r12      # Move positive loss value to register 12
 neg  %r9             # Negate loss value
 movq $loss_txt, %r11 # Move loss text string address to register 11

 # Quite some repitition here. Would be a good idea to think of a less hardcoded workaround (perhaps using pointers)
 eventAddValue:
  eventCVit:
   cmpq $0, (event_var) # VIT
   jne  eventCStr       # Else check next condition
   addq %r9, (p_vit)    # Add Gain/Subtract Loss
   pushq (stat_names)   # Push VIT as %s argument

   cmpq $0, (p_vit)          # Check if VIT > 0
   jg  CVitChangeHealth      # If so, continue

   subq %r9, (p_vit)   # Subtract loss value from VIT
   movq (p_vit), %r12  # Move new VIT value to positive loss value (so what this does is restore the VIT stat to it's' prior value and then we can see how many points of this stat were lost)
   decq %r12           # Decrement result
   movq $1, (p_vit)    # Set VIT to 1 (min possible stat value)

   CVitChangeHealth:
    movq $2, %rax             # Move 2 as multiplicand
    mulq %r12                 # Multiply by corrected loss value

    cmpq $0, %r9              # Check if gain/loss (if negative value, then loss)
    jge  positiveChangeHealth # If condition does not hold, then it's a gain

   negativeChangeHealth:
    subq %rax, (p_maxHealth)  # Subtract result from max health (do not touch health, as it may result in player's death and that's fairly unfair)
    jmp eventChooseDone

  positiveChangeHealth:
   addq %rax, (p_maxHealth)   # Add result to player max health
   addq %rax, (p_health)      # Add result to player health
   jmp eventChooseDone

  eventCStr:
   cmpq $1, (event_var) # STR
   jne  eventCDex       # Else check next condition
   addq %r9, (p_str)    # Add Gain/Subtract Loss
   pushq (stat_names)+8 # Push STR as %s argument

   cmpq $0, (p_str)     # Check if STR > 0
   jg  eventChooseDone  # If so, continue

   subq %r9, (p_str)     # Subtract loss value from STR
   movq (p_str), %r12    # Move new STR value to positive loss value
   decq %r12             # Decrement result
   movq $1, (p_str)      # Set STR to 1 (min possible stat value)

   jmp eventChooseDone
  eventCDex:
   cmpq $2, (event_var)  # DEX
   jne  eventCAgi        # Else check next condition
   addq %r9, (p_dex)     # Add Gain/Subtract Loss
   pushq (stat_names)+16 # Push DEX as %s argument

   cmpq $0, (p_dex)      # Check if DEX > 0
   jg  eventChooseDone   # If so, continue

   subq %r9, (p_dex)     # Subtract loss value from DEX
   movq (p_dex), %r12    # Move new DEX value to positive loss value
   decq %r12             # Decrement result
   movq $1, (p_dex)      # Set DEX to 1 (min possible stat value)

   jmp eventChooseDone
  eventCAgi:
   cmpq $3, (event_var)  # AGI
   jne  eventCRes        # Else check next condition
   addq %r9, (p_agi)     # Add Gain/Subtract Loss
   pushq (stat_names)+24 # Push AGI as %s argument

   cmpq $0, (p_agi)      # Check if AGI > 0
   jg  eventChooseDone   # If so, continue

   subq %r9, (p_agi)     # Subtract loss value from AGI
   movq (p_agi), %r12    # Move new AGI value to positive loss value
   decq %r12             # Decrement result
   movq $1, (p_agi)      # Set AGI to 1 (min possible stat value)

   jmp eventChooseDone
  eventCRes:
   cmpq $4, (event_var)  # RES
   jne  eventCExp        # Else check next condition
   addq %r9, (p_res)     # Add Gain/Subtract Loss
   pushq (stat_names)+32 # Push RES as %s argument

   cmpq $0, (p_res)      # Check if RES > 0
   jg  eventChooseDone   # If so, continue

   subq %r9, (p_res)     # Subtract loss value from RES
   movq (p_res), %r12    # Move new RES value to positive loss value
   decq %r12             # Decrement result
   movq $1, (p_res)      # Set RES to 1 (min possible stat value)

   jmp eventChooseDone
  eventCExp:
   cmpq $5, (event_var)   # EXP
   jne  eventCGold        # Else next condition holds
   addq %r9, (experience) # Add Gain/Subtract Loss
   pushq $experience_text # Push EXPERIENCE as %s argument

   cmpq $0, (experience)  # Check if Experience >= 0
   jge  eventChooseDone   # If so, continue

   subq %r9, (experience)  # Subtract loss value from experience
   movq (experience), %r12 # Move new experience (so prior experience) to positive loss value
   movq $0, (experience)   # Set experience to 0 (so it's not negative)

   jmp eventChooseDone

  eventCGold:
   cmpq $6, (event_var) # GOLD
   addq %r9, (gold)     # Add Gain/Subtract Loss
   pushq $gold_text     # Push GOLD as %s argument

   cmpq $0, (gold)      # Check if Gold >= 0
   jge  eventChooseDone # If so, continue

   subq %r9, (gold)     # Subtract loss value from gold
   movq (gold), %r12    # Move new gold (so prior gold) to positive loss value
   movq $0, (gold)      # Set gold to 0 (so it's not negative)

   jmp eventChooseDone

 
 eventChooseDone:
  pushq   $0x0f                 # WHite
  pushq   %r12                  # Gain/Loss value (positive)
  pushq   %r11                  # The string to indicate gain or loss
  pushq   $0x0f                 # White
  movq    $event_reward, %rdi   # Event Reward format string
  movq    $12, %rsi             # Line 12
  movq    $1, %rdx              # Column 1
  movb    $0x0f, %cl            # White
  call    printString           # Print the Event Reward String

  movq    $combat_exit_choice, %rdi # Combat Exit Choice String
  movq    $14, %rsi                 # Line 14
  movq    $1, %rdx                  # Column 1
  movb    $0x0f, %cl                # White
  call    printString               # Print the (1) Continue option to the player

  movq    (level), %rax             # Move player level to register A
  call    levelUpCheck              # Check if player levelled up
  cmpq    (level), %rax             # By checking previous level and new level (if it changed)
  je      eventChooseEnd            # If not levelled up, simply end the subroutine, otherwise print level up string

  randomEventLevelUp:
   pushq   (level)                       # Move player level as %d argument
   pushq   $playerName                   # Move player name as %s argument
   pushq   $0x0a                         # Light Green
   movq    $combat_level_up_text, %rdi   # Move Combat Level Up Text as format string
   movq    $13, %rsi                     # Line 13
   movq    $1, %rdx                      # Column 1
   movb    $0x0a, %cl                    # Light Green
   call    printString                   # Print the level up string

  eventChooseEnd:
   movb   $9, (currentMenu) # Move to event reward menu
   ret

#####################################################
#                  highScoreInsert                  #
#                                                   #
#     Adds a new entry to the High Scores list      #
#                                                   #
#####################################################
highScoresInsert:
 movq $0, %rbx  # Initialize index to 0

 insertLoop:
  cmpq $10, %rbx                      # Check if all players in the High Scores have been iterated
  je   highScoresInsertEnd            # If so, end the subroutine

  movq (experience), %r14             # Move experience to register 14

  cmpq (high_scores_count), %rbx      # Check whether the current high scores spot is empty
  jne  checkBiggerScore               # If it's not, compare the scores of the current Player and the one before

  movq %r14, high_scores_exp(,%rbx,8) # Move experience to high scores experience of Player No. (%rbx)
  incq (high_scores_count)            # Increment High Scores Player Count

  jmp  highScoresInsertMoveName       # Insert name in the high scores at current position

  checkBiggerScore:
  cmpq %r14, high_scores_exp(,%rbx,8) # Check whether current games Player experience is higher than the current high score in set position
  jge  lowerEqualScore                # If not, move on to next high score position

  incq (high_scores_count)            # Increment high scores position count

  cmpq $10, (high_scores_count)       # Check whether High Scores count is bigger than 10
  jle  biggerScoreWhilePre            # If it's not, move on to shifting the High Scores arrays
  decq (high_scores_count)            # Decrement High Scores Count if it's greater than 10 (1 high score is going to be eliminated as a new one is shifted in)

  biggerScoreWhilePre:
   movq (high_scores_count), %r12     # Move High Scores Count to register 12

   cmpq $10, %r12                     # Check whether the High Scores Count is less than 10
   jl   biggerScoreWhile              # If it is, continue to the shift loop
   movq $9, %r12                      # Else move 9 to register 12 (so one value will get thrown out)

  biggerScoreWhile:
   cmpq %rbx, %r12                    # Check whether we have reached the current index that needs to be changed (meaning all values have been shifted accordingly)
   je   biggerScoreWhileEnd           # End loop if this condition holds

   decq %r12                            # Go back 1 element
   movq high_scores_exp(,%r12,8), %r11  # Move that element's exp temporarily to register 11

   movq high_scores_names(,%r12,8), %r10 # Move that element's name pointer temporarily to register 10

   incq %r12                            # Go back (forth actually) to previous element
   movq %r11, high_scores_exp(,%r12,8)  # Move the temp. value to the current array element (thus shifting by 1)

   movq high_scores_names(,%r12,8), %r9 # Move that element's name pointer to register 9

   biggerScoreWhileCopyStr:
    movb (%r10), %al                    # Move the element's (that needs to be shifted) char to byte register AL 
    movb %al, (%r9)                     # Move the byte of register AL to the next element (progressively shifting the string over)

    incq %r10                           # Move on to next byte
    incq %r9                            # Move on to next byte
    cmpb $0, %al                        # Check whether this char was the zero char
    jne  biggerScoreWhileCopyStr        # If not, repeat the loop

   decq %r12                            # Move (backwards) to next element to shift

   jmp biggerScoreWhile                 # Repeat loop

  biggerScoreWhileEnd:
  movq %r14, high_scores_exp(,%rbx,8) # Move current experience to current high scores spot
  jmp  highScoresInsertMoveName       # Insert name in the high scores at curren position

  lowerEqualScore:
   incq %rbx                  # Move on to next high scores position
   jmp insertLoop             # Repeat the loop

 highScoresInsertMoveName:
    movq $0, %r14                          # Initialize current character to 0
    movq high_scores_names(,%rbx,8), %r13  # Move name from current high scores spot to register 13

  insertNameLoop:
   cmpb $0, playerName(%r14)   # Check whether end of player name is reached
   je   insertNameLoopEnd      # If so, end loop
   movb playerName(%r14), %al  # Move current playerName byte to register AL
   movb %al, (%r13)            # Move the character to register 13's current byte
   inc  %r13                   # Move on to next character in register 13
   incq %r14                   # Increment current character
   jmp  insertNameLoop         # Repeat loop

  insertNameLoopEnd:
   movb $0, (%r13)                       # Move null char to register 13's current byte
   subq %r14, %r13                       # Return register 13 to the beginning
   movq %r13, high_scores_names(,%rbx,8) # Move copied playerName to current high score position's name
   movq $0, %r13                         # Reset register 13
   jmp  highScoresInsertEnd              # End the subroutine

 highScoresInsertEnd:
  ret

################################################################################################
#                                          RNG                                                 #
#                                                                                              #
# Generate an RNG according to lower & upper bounds.                                           #
# NOTE: This is a common PRNG practice (from my experience at least) that I've encountered     #
# while coding in other programming languages, so I will also use it here (multiplying PRNG    #
# by some number and getting the remainder as result)                                          #
# P.S.: The RNG is actually not really random, since it takes a timestamp as the seed.         #
# Have found no workaround since RDRAND and SYSCALLS are inaccessible in QEMU.                 #
#                                                                                              #
# args:                                                                                        #
# %rdi = lower_bound                                                                           #
# %rsi = upper_bound                                                                           #
################################################################################################
RNG:
 rdtsc    # Moves timestamp to RAX

 movq     $0, %rdx   # Move 0 to RDX
 subq     %rdi, %rsi # upper_bound-lower_bound
 incq     %rsi       # upper_bound-lower_bound+1
 movq     %rsi, %rbx # Move result as multiplier
 divq     %rbx       # Divide random number by (upper_bound-lower_bound-1)

 addq     %rdi, %rdx  # add lower_bound
 movq     %rdx, %rax  # Move result to register A

 ret
