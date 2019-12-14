package edu.fzu.sm.util.JDBCQuery;



import java.util.List;


public class MysqlQuery extends Query {
    public static MysqlQuery query = new MysqlQuery();
    @Override
    public List queryPagenate(String sql, Class clazz,Object[] params,int pagenum,int size){
        pagenum-=1;
        sql+=" limit ?,?";
        Object[] newparams=new Object[params.length+2];
        for(int i=0;i<params.length;i++) {
            newparams[i] = params[i];
        }
        newparams[params.length]=pagenum*size;
        newparams[params.length+1]=size;

        return  queryRows(sql,clazz,newparams);
    }



    }

