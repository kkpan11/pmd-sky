	.include "asm/macros.inc"
	.include "overlay_26.inc"

	.text

	arm_func_start ov26_0238A140
ov26_0238A140: ; 0x0238A140
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	add r0, sp, #0
	bl sub_0204F158
	cmp r0, #0
	moveq r0, #0
	beq _0238A528
	add r1, sp, #0xc
	add r2, sp, #8
	mov r0, #2
	bl sub_0204C5DC
	ldr r0, [sp, #8]
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bl GetAcceptedMission
	mov r5, r0
	ldrb r2, [sp]
	add r0, sp, #2
	mov r1, r5
	bl sub_0205F118
	cmp r0, #0
	bne _0238A1A8
	mvn r0, #0
	bl ov11_022E6E8C
	mov r0, #0
	b _0238A528
_0238A1A8:
	mov r0, #0x9c
	mov r1, #8
	bl MemAlloc
	ldr r1, _0238A530 ; =0x0238AF60
	mov r4, #0
	str r0, [r1]
	str r4, [r0]
	ldr r3, [sp, #8]
	ldr r2, [r1]
	mov r0, r4
	strb r3, [r2, #0x8c]
	ldr r2, [r1]
	mov r1, #0x68
	str r5, [r2, #0x90]
	ldrb r2, [r5, #1]
	bl SaveScriptVariableValue
	ldrb r2, [r5, #2]
	mov r0, r4
	mov r1, #0x69
	bl SaveScriptVariableValue
	ldr r0, _0238A530 ; =0x0238AF60
	ldr r0, [r0]
	ldr r0, [r0, #0x90]
	bl sub_0205F9D4
	ldr r0, _0238A530 ; =0x0238AF60
	ldr r0, [r0]
	add r0, r0, #8
	bl InitPreprocessorArgs
	ldr r0, _0238A530 ; =0x0238AF60
	mov r2, r4
	ldr r3, [r0]
	ldr r1, [r3, #0x90]
	ldrsh r1, [r1, #0xe]
	str r1, [r3, #8]
	ldr r3, [r0]
	ldr r1, [r3, #0x90]
	ldrsh r1, [r1, #0x10]
	str r1, [r3, #0xc]
	ldr r3, [r0]
	ldr r1, [r3, #0x90]
	ldrsh r1, [r1, #0x14]
	str r1, [r3, #0x18]
	ldr r1, [r0]
	str r2, [r1, #0x2c]
	ldr r0, [r0]
	add r0, r0, #0x60
	bl sub_0206351C
	ldr r0, _0238A530 ; =0x0238AF60
	ldr r1, [r0]
	ldr r0, [r1, #0x90]
	add r1, r1, #0x60
	bl sub_02062E5C
	ldr r0, _0238A530 ; =0x0238AF60
	mov r3, #2
	ldr r1, [r0]
	mov r2, r4
	str r3, [r1, #0x5c]
	ldr r1, [r0]
	str r2, [r1, #0x98]
	ldrsh r1, [sp, #4]
	cmp r1, #0
	ldrne r0, [r0]
	ldrne r0, [r0, #0x90]
	ldrneb r0, [r0, #1]
	cmpne r0, #0xa
	beq _0238A2B8
	ldrsh r0, [sp, #4]
	bl IncrementExclusiveMonsterCounts
_0238A2B8:
	ldrsh r0, [sp, #6]
	cmp r0, #0
	beq _0238A2CC
	ldrsh r0, [sp, #6]
	bl IncrementExclusiveMonsterCounts
_0238A2CC:
	ldr r0, _0238A530 ; =0x0238AF60
	ldr r1, [r0]
	ldr r2, [r1, #0x90]
	ldrb r2, [r2, #1]
	cmp r2, #0xc
	addls pc, pc, r2, lsl #2
	b _0238A504
_0238A2E8: ; jump table
	b _0238A31C ; case 0
	b _0238A328 ; case 1
	b _0238A334 ; case 2
	b _0238A340 ; case 3
	b _0238A504 ; case 4
	b _0238A504 ; case 5
	b _0238A34C ; case 6
	b _0238A358 ; case 7
	b _0238A364 ; case 8
	b _0238A370 ; case 9
	b _0238A37C ; case 10
	b _0238A3A0 ; case 11
	b _0238A4C4 ; case 12
_0238A31C:
	ldr r0, _0238A534 ; =0x0238AE92
	str r0, [r1, #0x94]
	b _0238A50C
_0238A328:
	ldr r0, _0238A538 ; =0x0238AE86
	str r0, [r1, #0x94]
	b _0238A50C
_0238A334:
	ldr r0, _0238A53C ; =0x0238AE7A
	str r0, [r1, #0x94]
	b _0238A50C
_0238A340:
	ldr r0, _0238A540 ; =0x0238AE6E
	str r0, [r1, #0x94]
	b _0238A50C
_0238A34C:
	ldr r0, _0238A544 ; =0x0238AE56
	str r0, [r1, #0x94]
	b _0238A50C
_0238A358:
	ldr r0, _0238A548 ; =0x0238AE62
	str r0, [r1, #0x94]
	b _0238A50C
_0238A364:
	ldr r0, _0238A54C ; =0x0238AE4A
	str r0, [r1, #0x94]
	b _0238A50C
_0238A370:
	ldr r0, _0238A550 ; =0x0238AE3E
	str r0, [r1, #0x94]
	b _0238A50C
_0238A37C:
	mov r2, #3
	str r2, [r1, #0x5c]
	ldr r1, [r0]
	mov r2, #0x1f8
	strh r2, [r1, #0x60]
	ldr r0, [r0]
	ldr r1, _0238A554 ; =0x0238AE32
	str r1, [r0, #0x94]
	b _0238A50C
_0238A3A0:
	mov r2, #4
	str r2, [r1, #0x5c]
	ldr r2, [r0]
	ldr r1, [r2, #0x90]
	ldrb r1, [r1, #2]
	str r1, [r2, #0x98]
	ldr r0, [r0]
	ldr r0, [r0, #0x98]
	and r0, r0, #0xff
	bl SetChallengeLetterCleared
	ldr r0, _0238A530 ; =0x0238AF60
	ldr r2, [r0]
	ldr r1, [r2, #0x98]
	cmp r1, #0
	ldreq r0, _0238A558 ; =0x0238AE9E
	streq r0, [r2, #0x94]
	beq _0238A50C
	ldr r4, [r2, #0x88]
	ldr r1, _0238A55C ; =0x0238AE20
	str r1, [r2, #0x94]
	ldr r0, [r0]
	add r0, r0, #0x60
	bl sub_0206351C
	ldr r0, _0238A530 ; =0x0238AF60
	ldr r2, [r0]
	ldr r1, [r2, #0x90]
	ldrsh r1, [r1, #0xe]
	strh r1, [r2, #0x60]
	ldr r1, [r0]
	str r4, [r1, #0x88]
	ldr r2, [r0]
	ldr r1, [r2, #0x90]
	ldrb r0, [r1, #1]
	cmp r0, #0xb
	bne _0238A458
	ldrb r0, [r1, #2]
	add r0, r0, #0xff
	and r0, r0, #0xff
	cmp r0, #4
	bhi _0238A458
	add r0, r1, #4
	bl GetOutlawLeaderLevel
	ldr r1, _0238A530 ; =0x0238AF60
	ldr r1, [r1]
	str r0, [r1, #0x64]
	b _0238A460
_0238A458:
	mov r0, #1
	str r0, [r2, #0x64]
_0238A460:
	ldr r0, _0238A530 ; =0x0238AF60
	mov r1, #0
	arm_func_end ov26_0238A140

	arm_func_start ov26_0238A468
ov26_0238A468: ; 0x0238A468
	ldr r0, [r0]
	ldr r0, [r0, #0x90]
	ldrsh r0, [r0, #0xe]
	bl IsMonsterOnTeam
	cmp r0, #0
	beq _0238A4A0
	ldr r0, _0238A530 ; =0x0238AF60
	mov r3, #0
	ldr r2, [r0]
	mov r1, #0x3e8
	strb r3, [r2, #0x62]
	ldr r0, [r0]
	str r1, [r0, #0x68]
	b _0238A50C
_0238A4A0:
	ldr r0, _0238A530 ; =0x0238AF60
	mov r1, #6
	ldr r3, [r0]
	ldr r2, [r3, #0x90]
	ldrsh r2, [r2, #0xe]
	strh r2, [r3, #0x84]
	ldr r0, [r0]
	strb r1, [r0, #0x62]
	b _0238A50C
_0238A4C4:
	add r0, r1, #0x60
	ldr r4, [r1, #0x88]
	bl sub_0206351C
	ldr r0, _0238A530 ; =0x0238AF60
	ldr r2, _0238A560 ; =0x000001E3
	ldr r1, [r0]
	mov r3, #0
	strh r2, [r1, #0x60]
	ldr r2, [r0]
	ldr r1, _0238A55C ; =0x0238AE20
	strb r3, [r2, #0x62]
	ldr r2, [r0]
	str r4, [r2, #0x88]
	ldr r0, [r0]
	str r1, [r0, #0x94]
	b _0238A50C
_0238A504:
	ldr r0, _0238A564 ; =0x0238AE26
	str r0, [r1, #0x94]
_0238A50C:
	ldr r1, _0238A530 ; =0x0238AF60
	mvn r3, #1
	ldr r2, [r1]
	mov r0, #1
	strb r3, [r2, #4]
	ldr r1, [r1]
	strb r3, [r1, #5]
_0238A528:
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0238A530: .word 0x0238AF60
_0238A534: .word 0x0238AE92
_0238A538: .word 0x0238AE86
_0238A53C: .word 0x0238AE7A
_0238A540: .word 0x0238AE6E
_0238A544: .word 0x0238AE56
_0238A548: .word 0x0238AE62
_0238A54C: .word 0x0238AE4A
_0238A550: .word 0x0238AE3E
_0238A554: .word 0x0238AE32
_0238A558: .word 0x0238AE9E
_0238A55C: .word 0x0238AE20
_0238A560: .word 0x000001E3
_0238A564: .word 0x0238AE26
	arm_func_end ov26_0238A468

	arm_func_start ov26_0238A568
ov26_0238A568: ; 0x0238A568
	stmdb sp!, {r3, lr}
	ldr r0, _0238A59C ; =0x0238AF60
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov26_0238A90C
	ldr r0, _0238A59C ; =0x0238AF60
	ldr r0, [r0]
	bl MemFree
	ldr r0, _0238A59C ; =0x0238AF60
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0238A59C: .word 0x0238AF60
	arm_func_end ov26_0238A568

	arm_func_start ov26_0238A5A0
ov26_0238A5A0: ; 0x0238A5A0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r0, _0238A8F8 ; =0x0238AF60
	ldr r1, [r0]
	ldr r0, [r1]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0238A8EC
_0238A5C0: ; jump table
	b _0238A60C ; case 0
	b _0238A5E0 ; case 1
	b _0238A824 ; case 2
	b _0238A864 ; case 3
	b _0238A880 ; case 4
	b _0238A8A8 ; case 5
	b _0238A8C4 ; case 6
	b _0238A8DC ; case 7
_0238A5E0:
	ldrsb r0, [r1, #4]
	mvn r1, #1
	cmp r0, r1
	beq _0238A5FC
	bl IsDBoxActive
	cmp r0, #0
	bne _0238A8EC
_0238A5FC:
	ldr r0, _0238A8F8 ; =0x0238AF60
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0]
_0238A60C:
	ldr r1, _0238A8F8 ; =0x0238AF60
	ldr r2, [r1]
	ldr r7, [r2, #0x94]
	add r0, r7, #6
	str r0, [r2, #0x94]
	ldrh r4, [r7, #4]
	cmp r4, #0
	moveq r0, #0
	beq _0238A7FC
	ldr r0, _0238A8FC ; =0x0000026D
	mov r6, #1
	cmp r4, r0
	ldreq r0, [r1]
	ldreq r0, [r0, #0x98]
	addeq r0, r4, r0
	moveq r0, r0, lsl #0x10
	moveq r4, r0, lsr #0x10
	ldrsb r0, [r7]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0238A738
_0238A660: ; jump table
	b _0238A678 ; case 0
	b _0238A698 ; case 1
	b _0238A6B8 ; case 2
	b _0238A6D8 ; case 3
	b _0238A6FC ; case 4
	b _0238A720 ; case 5
_0238A678:
	ldr r0, _0238A8F8 ; =0x0238AF60
	ldr r2, _0238A900 ; =0x0001003C
	ldr r1, [r0]
	mov r0, #0x3c
	str r2, [r1, #0x54]
	bl sub_02065974
	mov r5, r0
	b _0238A74C
_0238A698:
	ldr r0, _0238A8F8 ; =0x0238AF60
	ldr r2, _0238A904 ; =0x0001003D
	ldr r1, [r0]
	mov r0, #0x3d
	str r2, [r1, #0x54]
	bl sub_02065974
	mov r5, r0
	b _0238A74C
_0238A6B8:
	ldr r0, _0238A8F8 ; =0x0238AF60
	ldr r2, _0238A908 ; =0x0001003F
	ldr r1, [r0]
	mov r0, #0x3f
	str r2, [r1, #0x54]
	bl sub_02065974
	mov r5, r0
	b _0238A74C
_0238A6D8:
	ldr r0, _0238A8F8 ; =0x0238AF60
	ldr r2, [r0]
	ldr r1, [r2, #0x90]
	ldrsh r1, [r1, #0xe]
	str r1, [r2, #0x54]
	ldr r0, [r0]
	ldr r0, [r0, #0x90]
	ldrsh r5, [r0, #0xe]
	b _0238A74C
_0238A6FC:
	ldr r0, _0238A8F8 ; =0x0238AF60
	ldr r2, [r0]
	ldr r1, [r2, #0x90]
	ldrsh r1, [r1, #0x10]
	str r1, [r2, #0x54]
	ldr r0, [r0]
	ldr r0, [r0, #0x90]
	ldrsh r5, [r0, #0x10]
	b _0238A74C
_0238A720:
	ldr r0, _0238A8F8 ; =0x0238AF60
	mov r1, #0x60000
	ldr r0, [r0]
	mov r6, #0
	str r1, [r0, #0x54]
	b _0238A74C
_0238A738:
	ldr r0, _0238A8F8 ; =0x0238AF60
	mov r1, #0x70000
	ldr r0, [r0]
	mov r6, #0
	str r1, [r0, #0x54]
_0238A74C:
	cmp r6, #0
	beq _0238A7B0
	add r0, sp, #0
	bl InitPortraitBox
	add r0, sp, #0
	mov r1, r5
	bl InitPortraitBoxWithMonsterId
	ldr r1, _0238A8F8 ; =0x0238AF60
	mvn r0, #1
	ldr r1, [r1]
	ldrsb r1, [r1, #5]
	cmp r1, r0
	bne _0238A79C
	mov r0, #0
	mov r1, #3
	mov r2, #1
	bl CreatePortraitBox
	ldr r1, _0238A8F8 ; =0x0238AF60
	ldr r1, [r1]
	strb r0, [r1, #5]
_0238A79C:
	ldr r0, _0238A8F8 ; =0x0238AF60
	add r1, sp, #0
	ldr r0, [r0]
	ldrsb r0, [r0, #5]
	bl ShowPortraitBox
_0238A7B0:
	ldr r1, _0238A8F8 ; =0x0238AF60
	mvn r0, #1
	ldr r1, [r1]
	ldrsb r1, [r1, #4]
	cmp r1, r0
	bne _0238A7DC
	mov r0, #0
	bl CreateDBox
	ldr r1, _0238A8F8 ; =0x0238AF60
	ldr r1, [r1]
	strb r0, [r1, #4]
_0238A7DC:
	ldr r0, _0238A8F8 ; =0x0238AF60
	ldrh r1, [r7, #2]
	ldr r3, [r0]
	mov r2, r4
	ldrsb r0, [r3, #4]
	add r3, r3, #8
	bl ShowMessageInDBox
	mov r0, #1
_0238A7FC:
	cmp r0, #0
	ldrne r0, _0238A8F8 ; =0x0238AF60
	movne r1, #1
	ldrne r0, [r0]
	strne r1, [r0]
	ldreq r0, _0238A8F8 ; =0x0238AF60
	moveq r1, #2
	ldreq r0, [r0]
	streq r1, [r0]
	b _0238A8EC
_0238A824:
	ldrsb r0, [r1, #4]
	mvn r1, #1
	cmp r0, r1
	beq _0238A840
	bl IsDBoxActive
	cmp r0, #0
	bne _0238A8EC
_0238A840:
	bl ov26_0238A90C
	ldr r0, _0238A8F8 ; =0x0238AF60
	mov r3, #0xa
	ldr r2, [r0]
	mov r1, #3
	str r3, [r2, #0x58]
	ldr r0, [r0]
	str r1, [r0]
	b _0238A8EC
_0238A864:
	ldr r0, [r1, #0x58]
	cmp r0, #0
	subgt r0, r0, #1
	strgt r0, [r1, #0x58]
	bgt _0238A8EC
	mov r0, #4
	str r0, [r1]
_0238A880:
	ldr r0, _0238A8F8 ; =0x0238AF60
	mov r2, #0
	ldr r0, [r0]
	ldr r1, [r0, #0x5c]
	add r0, r0, #0x60
	bl sub_0203D438
	ldr r0, _0238A8F8 ; =0x0238AF60
	mov r1, #5
	ldr r0, [r0]
	str r1, [r0]
_0238A8A8:
	bl sub_0203D538
	cmp r0, #1
	ldreq r0, _0238A8F8 ; =0x0238AF60
	moveq r1, #6
	ldreq r0, [r0]
	streq r1, [r0]
	b _0238A8EC
_0238A8C4:
	bl sub_0203EFD4
	ldr r0, _0238A8F8 ; =0x0238AF60
	mov r1, #7
	ldr r0, [r0]
	str r1, [r0]
	b _0238A8EC
_0238A8DC:
	mov r0, #1
	bl ov11_022E6E8C
	mov r0, #4
	b _0238A8F0
_0238A8EC:
	mov r0, #1
_0238A8F0:
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0238A8F8: .word 0x0238AF60
_0238A8FC: .word 0x0000026D
_0238A900: .word 0x0001003C
_0238A904: .word 0x0001003D
_0238A908: .word 0x0001003F
	arm_func_end ov26_0238A5A0

	arm_func_start ov26_0238A90C
ov26_0238A90C: ; 0x0238A90C
	stmdb sp!, {r3, lr}
	ldr r0, _0238A96C ; =0x0238AF60
	mvn r1, #1
	ldr r0, [r0]
	ldrsb r0, [r0, #4]
	cmp r0, r1
	beq _0238A93C
	bl FreeDBox
	ldr r0, _0238A96C ; =0x0238AF60
	mvn r1, #1
	ldr r0, [r0]
	strb r1, [r0, #4]
_0238A93C:
	ldr r0, _0238A96C ; =0x0238AF60
	mvn r1, #1
	ldr r0, [r0]
	ldrsb r0, [r0, #5]
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl FreePortraitBox
	ldr r0, _0238A96C ; =0x0238AF60
	mvn r1, #1
	ldr r0, [r0]
	strb r1, [r0, #5]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0238A96C: .word 0x0238AF60
	arm_func_end ov26_0238A90C

	arm_func_start ov26_0238A970
ov26_0238A970: ; 0x0238A970
	stmdb sp!, {r3, lr}
	mov r0, #8
	mov r1, r0
	bl MemAlloc
	ldr r1, _0238A998 ; =0x0238AF64
	mov r2, #0
	str r0, [r1]
	str r2, [r0, #4]
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0238A998: .word 0x0238AF64
	arm_func_end ov26_0238A970

	arm_func_start ov26_0238A99C
ov26_0238A99C: ; 0x0238A99C
	stmdb sp!, {r3, lr}
	ldr r0, _0238A9C4 ; =0x0238AF64
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl MemFree
	ldr r0, _0238A9C4 ; =0x0238AF64
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0238A9C4: .word 0x0238AF64
	arm_func_end ov26_0238A99C

	arm_func_start ov26_0238A9C8
ov26_0238A9C8: ; 0x0238A9C8
	stmdb sp!, {r4, lr}
	ldr r0, _0238AA64 ; =0x0238AF64
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0238AA5C
	bl sub_0205633C
	cmp r0, #0
	beq _0238A9FC
	mov r0, #1
	bl ov11_022E6E8C
	mov r0, #4
	ldmia sp!, {r4, pc}
_0238A9FC:
	bl GetGameMode
	cmp r0, #4
	bne _0238AA10
	bl sub_0204E780
	b _0238AA14
_0238AA10:
	bl sub_0204E770
_0238AA14:
	mov r4, r0
	mov r0, r4
	bl GetMaxItemsAllowed
	bl RemoveAllItemsStartingAt
	mov r0, r4
	bl IsMoneyAllowed
	cmp r0, #0
	bne _0238AA3C
	mov r0, #0
	bl SetMoneyCarried
_0238AA3C:
	mov r0, r4
	bl sub_020577BC
	mov r0, #1
	bl sub_02056318
	mov r0, #1
	bl ov11_022E6E8C
	mov r0, #4
	ldmia sp!, {r4, pc}
_0238AA5C:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_0238AA64: .word 0x0238AF64
	arm_func_end ov26_0238A9C8

	arm_func_start ov26_0238AA68
ov26_0238AA68: ; 0x0238AA68
	stmdb sp!, {r3, lr}
	mov r0, #8
	mov r1, r0
	bl MemAlloc
	ldr r1, _0238AA90 ; =0x0238AF68
	mov r2, #0
	str r0, [r1]
	str r2, [r0, #4]
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0238AA90: .word 0x0238AF68
	arm_func_end ov26_0238AA68

	arm_func_start ov26_0238AA94
ov26_0238AA94: ; 0x0238AA94
	stmdb sp!, {r3, lr}
	ldr r0, _0238AABC ; =0x0238AF68
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl MemFree
	ldr r0, _0238AABC ; =0x0238AF68
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0238AABC: .word 0x0238AF68
	arm_func_end ov26_0238AA94

	arm_func_start ov26_0238AAC0
ov26_0238AAC0: ; 0x0238AAC0
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _0238AC04 ; =0x0238AF68
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0238ABF8
_0238AAE0: ; jump table
	b _0238AAF0 ; case 0
	b _0238ABB4 ; case 1
	b _0238ABC8 ; case 2
	b _0238ABEC ; case 3
_0238AAF0:
	bl sub_0205633C
	cmp r0, #0
	bne _0238AB08
	bl ov00_022E6E68
	mov r0, #4
	b _0238ABFC
_0238AB08:
	bl GetGameMode
	add r0, sp, #0
	bl sub_0204F1B4
	cmp r0, #0
	beq _0238AB2C
	ldrsb r0, [sp]
	bl sub_0205B77C
	ldrb r4, [r0, #4]
	b _0238AB34
_0238AB2C:
	bl sub_0204F0A0
	mov r4, r0
_0238AB34:
	bl sub_0204AFD0
	cmp r0, #0
	beq _0238AB98
	mov r0, #0
	mov r1, #0x2b
	bl LoadScriptVariableValue
	mov r1, r0
	sub r0, r1, #8
	cmp r0, #1
	bhi _0238AB70
	ldr r0, _0238AC08 ; =0x0238AEAC
	bl DebugPrint0__0200C1FC
	bl IncrementNbAdventures
	bl IncrementNbDungeonsCleared
	b _0238AB98
_0238AB70:
	sub r0, r1, #0xa
	cmp r0, #1
	bhi _0238AB90
	ldr r0, _0238AC0C ; =0x0238AEE4
	bl DebugPrint0__0200C1FC
	bl IncrementNbAdventures
	bl IncrementNbFainted
	b _0238AB98
_0238AB90:
	ldr r0, _0238AC10 ; =0x0238AF18
	bl DebugPrint0__0200C1FC
_0238AB98:
	mov r0, r4
	bl sub_020587E0
	ldr r0, _0238AC04 ; =0x0238AF68
	mov r1, #1
	ldr r0, [r0]
	str r1, [r0, #4]
	b _0238ABF8
_0238ABB4:
	bl ov10_022BD56C
	ldr r0, _0238AC04 ; =0x0238AF68
	mov r1, #2
	ldr r0, [r0]
	str r1, [r0, #4]
_0238ABC8:
	bl ov10_022BD5AC
	cmp r0, #1
	beq _0238ABF8
	bl ov10_022BD718
	ldr r0, _0238AC04 ; =0x0238AF68
	mov r1, #3
	ldr r0, [r0]
	str r1, [r0, #4]
	b _0238ABF8
_0238ABEC:
	bl ov00_022E6E68
	mov r0, #4
	b _0238ABFC
_0238ABF8:
	mov r0, #1
_0238ABFC:
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0238AC04: .word 0x0238AF68
_0238AC08: .word 0x0238AEAC
_0238AC0C: .word 0x0238AEE4
_0238AC10: .word 0x0238AF18
	arm_func_end ov26_0238AAC0

	arm_func_start ov26_0238AC14
ov26_0238AC14: ; 0x0238AC14
	stmdb sp!, {r3, lr}
	mov r0, #8
	mov r1, r0
	bl MemAlloc
	ldr r1, _0238AC3C ; =0x0238AF6C
	mov r2, #0
	str r0, [r1]
	str r2, [r0, #4]
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0238AC3C: .word 0x0238AF6C
	arm_func_end ov26_0238AC14

	arm_func_start ov26_0238AC40
ov26_0238AC40: ; 0x0238AC40
	stmdb sp!, {r3, lr}
	ldr r0, _0238AC68 ; =0x0238AF6C
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl MemFree
	ldr r0, _0238AC68 ; =0x0238AF6C
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0238AC68: .word 0x0238AF6C
	arm_func_end ov26_0238AC40

	arm_func_start ov26_0238AC6C
ov26_0238AC6C: ; 0x0238AC6C
	stmdb sp!, {r3, lr}
	ldr r0, _0238ACD4 ; =0x0238AF6C
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0238AC90
	cmp r0, #1
	beq _0238ACC0
	b _0238ACCC
_0238AC90:
	bl sub_0205633C
	cmp r0, #0
	bne _0238ACA8
	bl ov11_0230CDE0
	mov r0, #4
	ldmia sp!, {r3, pc}
_0238ACA8:
	bl sub_020587C8
	ldr r0, _0238ACD4 ; =0x0238AF6C
	mov r1, #1
	ldr r0, [r0]
	str r1, [r0, #4]
	b _0238ACCC
_0238ACC0:
	bl ov00_022E6E68
	mov r0, #4
	ldmia sp!, {r3, pc}
_0238ACCC:
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0238ACD4: .word 0x0238AF6C
	arm_func_end ov26_0238AC6C

	arm_func_start ov26_0238ACD8
ov26_0238ACD8: ; 0x0238ACD8
	stmdb sp!, {r3, lr}
	mov r0, #8
	mov r1, r0
	bl MemAlloc
	ldr r1, _0238AD0C ; =0x0238AF70
	mov r2, #0
	str r0, [r1]
	str r2, [r0]
	ldr r0, [r1]
	mov r1, #5
	strh r1, [r0, #4]
	mov r0, #1
	ldmia sp!, {r3, pc}
	.align 2, 0
_0238AD0C: .word 0x0238AF70
	arm_func_end ov26_0238ACD8

	arm_func_start ov26_0238AD10
ov26_0238AD10: ; 0x0238AD10
	stmdb sp!, {r3, lr}
	ldr r0, _0238AD38 ; =0x0238AF70
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl MemFree
	ldr r0, _0238AD38 ; =0x0238AF70
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0238AD38: .word 0x0238AF70
	arm_func_end ov26_0238AD10

	arm_func_start ov26_0238AD3C
ov26_0238AD3C: ; 0x0238AD3C
	stmdb sp!, {r3, lr}
	sub sp, sp, #0xe8
	ldr r0, _0238AE1C ; =0x0238AF70
	ldr r2, [r0]
	ldr r1, [r2]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _0238AE00
_0238AD5C: ; jump table
	b _0238AD6C ; case 0
	b _0238ADA8 ; case 1
	b _0238ADE4 ; case 2
	b _0238AE00 ; case 3
_0238AD6C:
	add r0, sp, #0
	bl sub_0204F244
	cmp r0, #0
	ldreq r0, _0238AE1C ; =0x0238AF70
	moveq r1, #3
	ldreq r0, [r0]
	streq r1, [r0]
	beq _0238AE10
	add r0, sp, #0
	bl sub_02046698
	ldr r0, _0238AE1C ; =0x0238AF70
	mov r1, #1
	ldr r0, [r0]
	str r1, [r0]
	b _0238AE10
_0238ADA8:
	ldrsh r1, [r2, #4]
	sub r1, r1, #1
	strh r1, [r2, #4]
	ldr r1, [r0]
	ldrsh r0, [r1, #4]
	cmp r0, #0
	bgt _0238AE10
	mov r0, #0
	strh r0, [r1, #4]
	bl sub_02046740
	ldr r0, _0238AE1C ; =0x0238AF70
	mov r1, #2
	ldr r0, [r0]
	str r1, [r0]
	b _0238AE10
_0238ADE4:
	bl sub_0204677C
	cmp r0, #0
	ldreq r0, _0238AE1C ; =0x0238AF70
	moveq r1, #3
	ldreq r0, [r0]
	streq r1, [r0]
	b _0238AE10
_0238AE00:
	bl sub_0204665C
	bl ov00_022E6E68
	mov r0, #4
	b _0238AE14
_0238AE10:
	mov r0, #1
_0238AE14:
	add sp, sp, #0xe8
	ldmia sp!, {r3, pc}
	.align 2, 0
_0238AE1C: .word 0x0238AF70
	arm_func_end ov26_0238AD3C
	; 0x0238AE1C

	.byte 0xFF, 0x00, 0x18, 0x02, 0x00, 0x00, 0x03, 0x00, 0x18, 0x32, 0x61, 0x02
	.byte 0xFF, 0x00, 0x18, 0x02, 0x00, 0x00, 0x03, 0x00, 0x18, 0x32, 0x6C, 0x02, 0xFF, 0x00, 0x18, 0x02
	.byte 0x00, 0x00, 0x03, 0x00, 0x18, 0x32, 0x6B, 0x02, 0xFF, 0x00, 0x18, 0x02, 0x00, 0x00, 0x03, 0x00
	.byte 0x18, 0x32, 0x6A, 0x02, 0xFF, 0x00, 0x18, 0x02, 0x00, 0x00, 0x03, 0x00, 0x18, 0x32, 0x68, 0x02
	.byte 0xFF, 0x00, 0x18, 0x02, 0x00, 0x00, 0x03, 0x00, 0x18, 0x32, 0x69, 0x02, 0xFF, 0x00, 0x18, 0x02
	.byte 0x00, 0x00, 0x03, 0x00, 0x18, 0x32, 0x65, 0x02, 0xFF, 0x00, 0x18, 0x02, 0x00, 0x00, 0x03, 0x00
	.byte 0x18, 0x32, 0x64, 0x02, 0xFF, 0x00, 0x18, 0x02, 0x00, 0x00, 0x03, 0x00, 0x18, 0x32, 0x63, 0x02
	.byte 0xFF, 0x00, 0x18, 0x02, 0x00, 0x00, 0x03, 0x00, 0x18, 0x32, 0x62, 0x02, 0xFF, 0x00, 0x18, 0x02
	.byte 0x00, 0x00, 0x03, 0x00, 0x18, 0x32, 0x6D, 0x02, 0xFF, 0x00, 0x18, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x55, 0x4E, 0x49, 0x54, 0x20, 0x52, 0x45, 0x54, 0x55, 0x52, 0x4E, 0x20, 0x25, 0x33, 0x64, 0x20
	.byte 0x63, 0x6F, 0x6E, 0x71, 0x75, 0x65, 0x73, 0x74, 0x20, 0x63, 0x6F, 0x75, 0x6E, 0x74, 0x20, 0x3D
	.byte 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D
	.byte 0x3D, 0x3D, 0x3D, 0x3D, 0x0A, 0x00, 0x00, 0x00, 0x55, 0x4E, 0x49, 0x54, 0x20, 0x52, 0x45, 0x54
	.byte 0x55, 0x52, 0x4E, 0x20, 0x25, 0x33, 0x64, 0x20, 0x64, 0x65, 0x61, 0x64, 0x20, 0x63, 0x6F, 0x75
	.byte 0x6E, 0x74, 0x20, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D
	.byte 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x0A, 0x00, 0x00, 0x00, 0x55, 0x4E, 0x49, 0x54
	.byte 0x20, 0x52, 0x45, 0x54, 0x55, 0x52, 0x4E, 0x20, 0x25, 0x33, 0x64, 0x20, 0x6E, 0x6F, 0x20, 0x63
	.byte 0x6F, 0x75, 0x6E, 0x74, 0x20, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D
	.byte 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x3D, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
