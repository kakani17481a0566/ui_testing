export default {
    
    // Home Page Locators
    homePage: { 
        //h2[text()='SRGEC INTERNAL MARKS CALCULATOR']
        Home_page_header: "//h2[contains(text(), 'SRGEC INTERNAL MARKS CALCULATOR')]",
        Home : "//a[@id='btn-Home']",
        R20_button : "//a[@id='btn-r20']",
        R23_button : "//a[@id='btn-r23']",
        MBA_button : "//a[@id='btn-MBA']" ,
        R23_PAGE_HEADER: "//h1[contains(text(), 'SRGEC R23 BATCH INTERNAL MARKS CALCULATOR')]",


    },   
    
    r20Page: {


        //h1[text()='SRGEC R23 BATCH INTERNAL MARKS CALCULATOR']
       
        // Page header
        header: '/html/body/h1',
        // Page title
        PAGE_TITLE: "//h1[contains(text(), 'SRGEC R20 BATCH INTERNAL MARKS CALCULATOR')]",

        // MID 1 Labels
        MID1_HEADER: "//strong[contains(text(), 'MID 1')]",
        MID1_OBJ_LABEL: "//td[contains(text(), 'Obj 1:')]",
        MID1_DES_LABEL: "//td[contains(text(), 'Des 1:')]",
        MID1_OBJ_INPUT1: "//input[@id='obj1']",
        MID2_OBJ_INPUT2: "//input[@id='obj2']",
        MID1_DES_INPUT1: "//input[@id='des1']",
        MID2_DES_INPUT2: "//input[@id='des2']",
        MID1_ASSIGN_INPUT1: "//input[@id='assign1']",
        MID2_ASSIGN_INPUT2: "//input[@id='assign2']",
        MID1_ASSIGN_LABEL: "//td[contains(text(), 'Assign 1:')]",

        // MID 2 Labels
        MID2_HEADER: "//strong[contains(text(), 'MID 2')]",
        MID2_OBJ_LABEL: "//td[contains(text(), 'Obj 2:')]",
        MID2_DES_LABEL: "//td[contains(text(), 'Des 2:')]",
        MID2_ASSIGN_LABEL: "//td[contains(text(), 'Assign 2:')]",

        // Buttons
        CALCULATE_BUTTON: "//button[@type='button' and contains(@class, 'btn-success') and contains(text(), 'Calculate')]",
        RESET_BUTTON: "//button[contains(text(), 'Reset')]",
        EXPORT_BUTTON: "//button[@id='exportButton']",
        EXPORT_PDF_BUTTON: "//button[@id='exportPdfButton']",



        // Result Section
        RESULT_TABLE: "//p[@id='result']//table",
        FINAL_MARKS_LABEL: "//p[@id='result']//table//td[contains(text(), 'Final Internal Marks')]",
        CEIL_FINAL_MARKS_LABEL: "//p[@id='result']//table//td[contains(text(), 'Ceil Final Internal Marks')]",

        // Error Messages

        // Error Messages
        OBJ1_ERROR: "//span[contains(text(), 'Obj 1 is out of range (0-10)')]",
        DES1_ERROR: "//span[contains(text(), 'Des 1 is out of range (0-15)')]",
        ASSIGN1_ERROR: "//span[contains(text(), 'Assign 1 is out of range (0-5)')]",
        OBJ2_ERROR: "//span[contains(text(), 'Obj 2 is out of range (0-10)')]",
        DES2_ERROR: "//span[contains(text(), 'Des 2 is out of range (0-15)')]",
        ASSIGN2_ERROR: "//span[contains(text(), 'Assign 2 is out of range (0-5)')]",
        //span[contains(text(), 'Assign 2 is out of range (0-5)')]


        // Labels
        OBJ_LABEL: "//td[@id='labelObj']",
        DES_LABEL: "//td[@id='labelDes']",
        ASSIGN_LABEL: "//td[@id='labelAssign']",
        SUM_LABEL: "//td[@id='labelSum']",
        BEST_MID_LABEL: "//td[@id='labelBestMid']",
        LEAST_MID_LABEL: "//td[@id='labelLeastMid']",
        MID80_LABEL: "//td[@id='labelMid80']",
        MID20_LABEL: "//td[@id='labelMid20']",
        FINAL_INTERNAL_MARKS_LABEL: "//td[@id='labelFinalInternalMarks']",
        CEIL_FINAL_INTERNAL_MARKS_LABEL: "//td[@id='labelCeilFinalInternalMarks']",

        // Result
        obj1Result: "//td[@id='obj1Result']",
        obj2Result: "//td[@id='obj2Result']",
        des1Result: "//td[@id='des1Result']",
        des2Result: "//td[@id='des2Result']",
        assign1Result: "//td[@id='assign1Result']",
        assign2Result: "//td[@id='assign2Result']",
        mid1Result: "//td[@id='mid1Result']",
        mid2Result: "//td[@id='mid2Result']",
        bestMidResult: "//td[@id='bestMidResult']",
        leastMidResult: "//td[@id='leastMidResult']",
        mid80Result: "//td[@id='mid80Result']",
        mid20Result: "//td[@id='mid20Result']",
        finalInternalMarksResult: "//td[@id='finalInternalMarksResult']",
        ceilFinalInternalMarksResult: "//td[@id='ceilFinalInternalMarksResult']"

    },
};
