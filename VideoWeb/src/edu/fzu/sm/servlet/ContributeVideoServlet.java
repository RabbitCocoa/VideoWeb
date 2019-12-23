package edu.fzu.sm.servlet;

import edu.fzu.sm.CONST;
import edu.fzu.sm.entity.User;
import edu.fzu.sm.entity.Videos;
import edu.fzu.sm.service.UserService;
import edu.fzu.sm.util.ImageUtil;
import edu.fzu.sm.util.JDBCManager.DBManager;
import edu.fzu.sm.util.JDBCQuery.MysqlQuery;
import edu.fzu.sm.util.PublicUtil;
import org.apache.commons.fileupload.FileItem;
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
import java.util.Iterator;
import java.util.List;

@WebServlet("/ContributeVideoServlet")
public class ContributeVideoServlet extends HttpServlet {
    public UserService service=new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /**
         * 接收上传文件，保存文件，改变用户头像地址
         */

        /*编码处理*/
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html; charset=UTF-8");

        User user = (User) req.getSession().getAttribute("user");
        Videos videos  =new Videos();

        videos.setVid(PublicUtil.getU20());
        File saveFile1=null; //封面
        File saveFile=null; //视频
        //上传
        //如果没有该字段 则不能处理
        try {
            DiskFileItemFactory factory = new DiskFileItemFactory();
            boolean isMultPart = ServletFileUpload.isMultipartContent(req);

            if (isMultPart) {
                //负责处理上传的文件数据 并将表单中每个输入项封装为一个FileItem
                ServletFileUpload upload = new ServletFileUpload(factory);

                //控制单个文件大小 ServletFileupLoad
                upload.setSizeMax(1024 * 1024000); //单位是B

                //解析前端传来的所有数据 并保存在items中
                List<FileItem> items = upload.parseRequest(req);
                //遍历items
                Iterator<FileItem> itor = items.iterator();

                int sno = -1;
                String sname = null;
                if (!itor.hasNext()) {
                    req.setAttribute("msg", "failed");
                    req.getRequestDispatcher("/jsp/users/Contribute.jsp").forward(req, resp);
                    return ;
                }

                while (itor.hasNext()) {
                    FileItem file = itor.next();
                    String fieldName = file.getFieldName();
                    //如果是表单字段
                    if (file.isFormField()) {
                      if(file.getFieldName().equals("Title"))
                      {
                          videos.setTitle(file.getString("UTF-8"));
                      }else if(file.getFieldName().equals("Dec"))
                      {
                          videos.setDection(file.getString("UTF-8"));
                      }
                      else if(file.getFieldName().equals("Area"))
                      {
                          videos.setArea(file.getString("UTF-8"));
                      }

                    } else {
                        /**处理封面
                         *
                         *
                         */
                        if (fieldName.equals("Cover")) {
                            String photo = file.getName().substring(file.getName().lastIndexOf("."), file.getName().length()).toLowerCase();

                            /**
                             * 筛选图片格式和名字长度
                             */
                            if ( (file.getName().length()<100)&&(photo.equals(".jpg") || photo.equals(".png") || photo.equals(".jpeg"))) {
                                String filename = PublicUtil.getU20() + "_" + file.getName();
                                //文件存储路径
                                //定义文件保存路径
                                String path = DBManager.getConf().getCovPath();

                                String savepaths = "covers/" + filename;
                                /**
                                 *  设置路径
                                 */
                                videos.setPsrc(savepaths);

                                saveFile1 = new File(path, filename);
                                file.write(saveFile1);
                                /**
                                 * 处理图片
                                 */
                                ImageIcon img = new ImageIcon(path + "/" + filename);
                                if (photo.equals(".png")) {
                                    BufferedImage buffImg;
                                    buffImg = ImageUtil.StretchPngImage(img, 854, 478);
                                    ImageIO.write(buffImg, photo.substring(1, photo.length()), new File(path + "/" + filename));
                                } else {
                                    BufferedImage buffImg;
                                    buffImg = ImageUtil.StretchImage(img, 854, 478);
                                    ImageIO.write(buffImg, photo.substring(1, photo.length()), new File(path + "/" + filename));
                                }

                            } else {
                                req.setAttribute("msg", "imgerror");
                                break;
                            }

                        }
                        /**
                         * 处理视频
                         */
                        else {
                            String videostr = file.getName().substring
                                    (file.getName().lastIndexOf("."), file.getName().length()).toLowerCase();
                            /**
                             * 筛选视频格式 和 长度
                             */

                            if ( (file.getName().length()<100)&& (videostr.equals(".mp4") || videostr.equals(".avi") || videostr.equals(".mov")
                            ||videostr.equals("rmvb") || videostr.equals(".mpeg")) )  {

                                String filename = PublicUtil.getU20()+ "_" + file.getName();
                                String path = DBManager.getConf().getVdoPath();
                                String savepaths = "videos/" + filename;
                                /**
                                 * 设置视频存储路径
                                 */
                                videos.setVsrc(savepaths);
                                saveFile = new File(path, filename);
                                file.write(saveFile);

                                videos.setCreatetime(PublicUtil.getCurrentTimeStr());
                                videos.setState(CONST.VIDEO_EXAMINE);
                                videos.setZan(0);
                                videos.setAutor(user.getName());

                            }
                            else{
                                req.setAttribute("msg", "videoerror");
                                break;
                            }
                        }

                    }

                }
                //之前没有错误信息
                if(req.getAttribute("msg")==null&&MysqlQuery.query.insert(videos)==1)
                {
                    req.setAttribute("msg", "success");
                }
                else{
                    //如果是插入时出错
                    if(req.getAttribute("msg")==null){
                        req.setAttribute("msg", "failed");
                    }

                    //添加视频就删除文件
                    if(saveFile!=null)
                    {
                        saveFile.delete();
                    }
                    if(saveFile1!=null)
                    {
                        saveFile1.delete();
                    }

                }
                req.getRequestDispatcher("/jsp/users/Contribute.jsp").forward(req, resp);

            }
        }
            catch(Exception e){
                e.printStackTrace();
            }
        }
    }