package edu.fzu.sm.servlet;

import edu.fzu.sm.CONST;
import edu.fzu.sm.entity.User;
import edu.fzu.sm.service.UserService;
import edu.fzu.sm.util.ImageUtil;
import edu.fzu.sm.util.JDBCManager.DBManager;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

@WebServlet("/UpdatePhotoServlet")
public class UpdatePhotoServlet extends HttpServlet {
    private UserService service = new UserService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /**
         * 接收上传文件，保存文件，改变用户头像地址
         */
        User user = (User) req.getSession().getAttribute("user");

        //上传
        //如果没有该字段 则不能处理
        try {
            DiskFileItemFactory factory = new DiskFileItemFactory();
            boolean isMultPart = ServletFileUpload.isMultipartContent(req);

            if (isMultPart) {
                //负责处理上传的文件数据 并将表单中每个输入项封装为一个FileItem
                ServletFileUpload upload = new ServletFileUpload(factory);

                //控制单个文件大小 ServletFileupLoad
                upload.setSizeMax(10000 * 1024); //单位是B

                //解析前端传来的所有数据 并保存在items中
                List<FileItem> items = upload.parseRequest(req);
                //遍历items
                Iterator<FileItem> itor = items.iterator();

                int sno = -1;
                String sname = null;
                if(!itor.hasNext())
                {
                    req.setAttribute("msg","failed");
                }
                while (itor.hasNext()) {
                    FileItem file = itor.next();
                    String fieldName = file.getFieldName();
                    if (file.isFormField()) //如果是表单字段
                    {
                        req.setAttribute("msg","failed");
                    } else {
                        //是文件字段就处理文件上传
                        //文件名
                        /*
                         * 后缀过滤
                         */
                        String photo = file.getName().substring(file.getName().lastIndexOf("."), file.getName().length());
                        if (photo.equals(".jpg") || photo.equals(".png") || photo.equals(".jpeg")) {





                            String filename = user.getName() +photo;
                            //文件上传
                            //定义文件路径
                            //获取服务器路径
                            String path = DBManager.getConf().getImgPath();

                            String savepaths = "photos/" + filename;
                            File saveFile = new File(path, filename);
                            file.write(saveFile);
                            /**
                             * 处理图片
                             */
                            ImageIcon img=new ImageIcon(path+"/"+filename);
                            if(photo.equals(".png")) {
                                BufferedImage buffImg;
                                buffImg = ImageUtil.StretchPngImage(img,200,200);
                                ImageIO.write(buffImg, photo.substring(1,photo.length()),new File(path+"/"+filename));
                            }
                            else{
                                BufferedImage buffImg;
                                buffImg = ImageUtil.StretchImage(img,200,200);
                                ImageIO.write(buffImg, photo.substring(1,photo.length()),new File(path+"/"+filename));
                            }
                            /**
                             * 用户的photo路径固定 只改图片 如果路径不相等（刚注册），则改路径
                             */
                            if (user.getPhoto().equals(savepaths)) {
                                req.setAttribute("msg","success");
                            } else {
                                if (service.updatePhoto(user.getName(), savepaths) == 1) {
                                    req.setAttribute("msg","success");
                                    user.setPhoto(savepaths);
                                    req.getSession().setAttribute("user",user);
                                } else {
                                    req.setAttribute("msg","failed");
                                }
                            }

                        }

                        else{
                            req.setAttribute("msg","error");
                        }

                    }
                }

            }

            if(user.getState().equals(CONST.ADMIN)) {
                req.getRequestDispatcher("/jsp/backs/Update.jsp").forward(req, resp);
            }
            else{
                req.getRequestDispatcher("/jsp/users/Update.jsp").forward(req,resp);
            }
        } catch (FileUploadException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req,resp);
    }
}