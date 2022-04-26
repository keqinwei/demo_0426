/* Solution for l1p1 */
/*change 1 blahblah*/
/*change 2 XXX*/
/* step 1 */

data pmlr.pva(drop=control_number 
                   MONTHS_SINCE_LAST_PROM_RESP 
                   FILE_AVG_GIFT 
                   FILE_CARD_GIFT);
   set pmlr.pva_raw_data;
   STATUS_FL=RECENCY_STATUS_96NK in("F","L");
   STATUS_ES=RECENCY_STATUS_96NK in("E","S");
   home01=(HOME_OWNER="H");
   nses1=(SES="1");
   nses3=(SES="3");
   nses4=(SES="4");
   nses_=(SES="?");
   nurbr=(URBANICITY="R");
   nurbu=(URBANICITY="U");
   nurbs=(URBANICITY="S");
   nurbt=(URBANICITY="T");
   nurb_=(URBANICITY="?");
run;

/*  step 2 */

proc contents data=pmlr.pva;
run;


/* step 3 */

proc means data=pmlr.pva mean nmiss max min;
   var _numeric_;
run;

/* step 4 */

proc freq data=pmlr.pva nlevels;
   tables _character_;
run;




