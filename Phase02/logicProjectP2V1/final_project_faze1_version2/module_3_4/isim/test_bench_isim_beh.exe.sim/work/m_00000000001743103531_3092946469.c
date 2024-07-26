/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "X:/Xilinx/logicProjectP2V1/final_project_faze1_version2/module_3_4/controller.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {15U, 0U};



static void Always_44_0(char *t0)
{
    char t4[8];
    char t38[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    unsigned int t39;

LAB0:    t1 = (t0 + 4648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 4968);
    *((int *)t2) = 1;
    t3 = (t0 + 4680);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);

LAB5:    xsi_set_current_line(53, ng0);
    t5 = (t0 + 2208U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB11;

LAB10:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1888U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB19;

LAB17:    if (*((unsigned int *)t2) == 0)
        goto LAB16;

LAB18:    t5 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t5) = 1;

LAB19:    t6 = (t4 + 4);
    t12 = (t3 + 4);
    t15 = *((unsigned int *)t3);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t6) = 0;
    if (*((unsigned int *)t12) != 0)
        goto LAB21;

LAB20:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t22 & 1U);
    t13 = (t4 + 4);
    t24 = *((unsigned int *)t13);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB22;

LAB23:    xsi_set_current_line(66, ng0);

LAB26:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3728);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);

LAB27:    t6 = ((char*)((ng1)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 3, t6, 3);
    if (t31 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng3)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t31 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng4)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t31 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng6)));
    t31 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t31 == 1)
        goto LAB34;

LAB35:
LAB37:
LAB36:    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB38:
LAB24:
LAB14:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB11:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB10;

LAB12:    xsi_set_current_line(54, ng0);

LAB15:    xsi_set_current_line(55, ng0);
    t29 = ((char*)((ng1)));
    t30 = (t0 + 3728);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 3);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB14;

LAB16:    *((unsigned int *)t4) = 1;
    goto LAB19;

LAB21:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t12);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t6);
    t20 = *((unsigned int *)t12);
    *((unsigned int *)t6) = (t19 | t20);
    goto LAB20;

LAB22:    xsi_set_current_line(60, ng0);

LAB25:    xsi_set_current_line(61, ng0);
    t14 = ((char*)((ng1)));
    t23 = (t0 + 3728);
    xsi_vlogvar_assign_value(t23, t14, 0, 0, 3);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB24;

LAB28:    xsi_set_current_line(68, ng0);
    t12 = (t0 + 1888U);
    t13 = *((char **)t12);
    t12 = (t13 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (~(t7));
    t9 = *((unsigned int *)t13);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB39;

LAB40:
LAB41:    goto LAB38;

LAB30:    xsi_set_current_line(75, ng0);

LAB43:    xsi_set_current_line(76, ng0);
    t3 = (t0 + 2528U);
    t6 = *((char **)t3);
    t3 = (t6 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB44;

LAB45:
LAB46:    goto LAB38;

LAB32:    xsi_set_current_line(93, ng0);
    t3 = (t0 + 2528U);
    t6 = *((char **)t3);
    t3 = (t6 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB57;

LAB58:
LAB59:    goto LAB38;

LAB34:    xsi_set_current_line(100, ng0);

LAB61:    xsi_set_current_line(101, ng0);
    t3 = (t0 + 2048U);
    t6 = *((char **)t3);
    memset(t4, 0, 8);
    t3 = (t4 + 4);
    t12 = (t6 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t12);
    t10 = (t9 >> 0);
    *((unsigned int *)t3) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 15U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 15U);
    t13 = ((char*)((ng7)));
    memset(t38, 0, 8);
    t14 = (t4 + 4);
    t23 = (t13 + 4);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t13);
    t18 = (t16 ^ t17);
    t19 = *((unsigned int *)t14);
    t20 = *((unsigned int *)t23);
    t21 = (t19 ^ t20);
    t22 = (t18 | t21);
    t24 = *((unsigned int *)t14);
    t25 = *((unsigned int *)t23);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t28 = (t22 & t27);
    if (t28 != 0)
        goto LAB65;

LAB62:    if (t26 != 0)
        goto LAB64;

LAB63:    *((unsigned int *)t38) = 1;

LAB65:    t30 = (t38 + 4);
    t32 = *((unsigned int *)t30);
    t33 = (~(t32));
    t34 = *((unsigned int *)t38);
    t35 = (t34 & t33);
    t39 = (t35 != 0);
    if (t39 > 0)
        goto LAB66;

LAB67:    xsi_set_current_line(115, ng0);

LAB70:    xsi_set_current_line(116, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(117, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB68:    goto LAB38;

LAB39:    xsi_set_current_line(69, ng0);

LAB42:    xsi_set_current_line(70, ng0);
    t14 = ((char*)((ng3)));
    t23 = (t0 + 3728);
    xsi_vlogvar_assign_value(t23, t14, 0, 0, 3);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB41;

LAB44:    xsi_set_current_line(77, ng0);

LAB47:    xsi_set_current_line(78, ng0);
    t12 = (t0 + 2688U);
    t13 = *((char **)t12);
    t12 = (t0 + 1728U);
    t14 = *((char **)t12);
    memset(t4, 0, 8);
    t12 = (t13 + 4);
    t23 = (t14 + 4);
    t15 = *((unsigned int *)t13);
    t16 = *((unsigned int *)t14);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t12);
    t19 = *((unsigned int *)t23);
    t20 = (t18 ^ t19);
    t21 = (t17 | t20);
    t22 = *((unsigned int *)t12);
    t24 = *((unsigned int *)t23);
    t25 = (t22 | t24);
    t26 = (~(t25));
    t27 = (t21 & t26);
    if (t27 != 0)
        goto LAB51;

LAB48:    if (t25 != 0)
        goto LAB50;

LAB49:    *((unsigned int *)t4) = 1;

LAB51:    t30 = (t4 + 4);
    t28 = *((unsigned int *)t30);
    t32 = (~(t28));
    t33 = *((unsigned int *)t4);
    t34 = (t33 & t32);
    t35 = (t34 != 0);
    if (t35 > 0)
        goto LAB52;

LAB53:    xsi_set_current_line(85, ng0);

LAB56:    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB54:    goto LAB46;

LAB50:    t29 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB51;

LAB52:    xsi_set_current_line(79, ng0);

LAB55:    xsi_set_current_line(80, ng0);
    t36 = ((char*)((ng4)));
    t37 = (t0 + 3728);
    xsi_vlogvar_assign_value(t37, t36, 0, 0, 3);
    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB54;

LAB57:    xsi_set_current_line(94, ng0);

LAB60:    xsi_set_current_line(95, ng0);
    t12 = ((char*)((ng6)));
    t13 = (t0 + 3728);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 3);
    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB59;

LAB64:    t29 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB65;

LAB66:    xsi_set_current_line(102, ng0);

LAB69:    xsi_set_current_line(103, ng0);
    t36 = ((char*)((ng3)));
    t37 = (t0 + 3568);
    xsi_vlogvar_assign_value(t37, t36, 0, 0, 1);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB68;

}


extern void work_m_00000000001743103531_3092946469_init()
{
	static char *pe[] = {(void *)Always_44_0};
	xsi_register_didat("work_m_00000000001743103531_3092946469", "isim/test_bench_isim_beh.exe.sim/work/m_00000000001743103531_3092946469.didat");
	xsi_register_executes(pe);
}
