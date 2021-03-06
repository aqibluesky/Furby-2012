
// Resource Table
// Created by IDE, Do not modify this table

.TEXT
.public _RES_Table;
.external __RES_T09_A_A16_sa
.public _RES_T09_A_A16_SA;
.external __RES_T09_A_A16_ea;
.public _RES_T09_A_A16_EA;
.external __RES_T09_B_A16_sa
.public _RES_T09_B_A16_SA;
.external __RES_T09_B_A16_ea;
.public _RES_T09_B_A16_EA;
.external __RES_T09_C_A16_sa
.public _RES_T09_C_A16_SA;
.external __RES_T09_C_A16_ea;
.public _RES_T09_C_A16_EA;


_RES_Table:

_RES_T09_A_A16_SA:
	.DW offset __RES_T09_A_A16_sa,seg __RES_T09_A_A16_sa;
_RES_T09_A_A16_EA:
	.DW offset __RES_T09_A_A16_ea,seg __RES_T09_A_A16_ea;

_RES_T09_B_A16_SA:
	.DW offset __RES_T09_B_A16_sa,seg __RES_T09_B_A16_sa;
_RES_T09_B_A16_EA:
	.DW offset __RES_T09_B_A16_ea,seg __RES_T09_B_A16_ea;

_RES_T09_C_A16_SA:
	.DW offset __RES_T09_C_A16_sa,seg __RES_T09_C_A16_sa;
_RES_T09_C_A16_EA:
	.DW offset __RES_T09_C_A16_ea,seg __RES_T09_C_A16_ea;


// End Table
//------------------------------------------------
// SACM DVR1600 Speech Table
// -- User nees to add in the song/speech 
//    for playback based on the _RES_Table above.
//------------------------------------------------
.public T_SACM_DVR1600_SpeechTable;
T_SACM_DVR1600_SpeechTable:	
.dw _RES_T09_A_A16_SA
.dw _RES_T09_B_A16_SA
.dw _RES_T09_C_A16_SA
