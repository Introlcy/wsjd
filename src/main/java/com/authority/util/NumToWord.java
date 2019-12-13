package com.authority.util;

import com.authority.entity.TD0Stuff;
import com.authority.entity.vo.TD0StuffVo;

/**
 * User: authority
 * Date: 2019/12/13
 * Time: 9:34
 */
public class NumToWord {

    private NumToWord(){}
    public static String PerType(String perType){

        switch (perType){
            case "1": perType="监督人员";break;
            case "2": perType="协查人员";break;
            case "3": perType="不详";break;
        }
        return perType;
    }

    public static String Folk(String folk){
        switch (folk){
            case "1": folk="汉族";break;
            case "2": folk="其他";break;
        }
        return folk;

    }
    public static  String Pol(String pol){
        switch (pol){
            case "1": pol="党员";break;
            case "2": pol="团员";break;
            case "3": pol="人民";break;
        }
        return pol;

    }

    public static String PerPro(String  perpro){

        switch (perpro){
            case "1": perpro="聘用制干部";break;
            case "2": perpro="聘用制工人";break;
            case "3": perpro="固定干部";break;
            case "4": perpro="固定工人";break;
            case "5": perpro="其他";break;
        }
        return perpro;


    }


    public static String Title(String title){

        switch (title) {
            case "1":
                title = "初级医师";
                break;
            case "2":
                title = "初级助理政工师";
                break;
            case "3":
                title = "初级助理工程师";
                break;
            case "4":
                title = "初级助理会计师";
                break;
            case "5":
                title = "初级研究实习员";
                break;
            case "6":
                title = "中级主管医师";
                break;
            case "7":
                title = "中级政工师";
                break;
            case "8":
                title = "中级馆员";
                break;
            case "9":
                title = "中级工程师";
                break;
            case "10":
                title = "中级会计师";
                break;
            case "11":
                title = "副主任医师";
                break;
            case "12":
                title = "副高级政工师";
                break;
            case "13":
                title = "副高级会计师";
                break;
            case "14":
                title = "正高主任医师";
                break;
            case "15":
                title = "未聘任专业技术职务";
                break;
            case "16":
                title = "无职称";
                break;
            case "17":
                title = "不详";
                break;
        }
        return title;
    }


    public static String JobLevel(String joblevel){

        switch (joblevel){
            case "1": joblevel="省部级正职";break;
            case "2": joblevel="省部级副职";break;
            case "3": joblevel="厅局级正职";break;
            case "4": joblevel="厅局级副职";break;
            case "5": joblevel="乡科级正职";break;
            case "6": joblevel="乡科级副职";break;
            case "7": joblevel="县处级正职";break;
            case "8": joblevel="县处级副职";break;
            case "9": joblevel="科办员";break;
            case "": joblevel="无";break;
        }
        return joblevel;
    }

    public static String Sex(String sex){
        switch (sex){
            case "1": sex="男";break;
            case "0": sex="女";break;
        }
        return sex;
   }


   public static String Job(String job ){

       switch (job){
           case "1": job="所长";break;
           case "2": job="书记";break;
           case "3": job="副所长";break;
           case "4": job="副书记";break;
           case "5": job="主任";break;
           case "6": job="副主任";break;
           case "": job="无";break;
       }
       return job;
   }

   public static String Edu(String edu){
       switch (edu){
           case "1": edu="博士";break;
           case "2": edu="硕士";break;
           case "3": edu="本科";break;
           case "4": edu="大专";break;
           case "5": edu="中专";break;
           case "6": edu="高中";break;
           case "7": edu="初中";break;
           case "8": edu="小学";break;
           case "9": edu="无学历";break;
           case "10": edu="不详";break;
       }
       return edu;
   }
    public static String Spe(String spe){
        switch (spe){
            case "1": spe="工程";break;
            case "2": spe="法律";break;
            case "3": spe="医药";break;
            case "4": spe="公共卫生";break;
            case "5": spe="无专业";break;
            case "6": spe="其他专业";break;
            case "7": spe="不详";break;
        }
        return spe;
    }
}
