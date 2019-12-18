package edu.fzu.sm.util;

import com.sun.org.apache.bcel.internal.generic.IADD;
import sun.awt.image.BufferedImageGraphicsConfig;
import sun.nio.ch.IOUtil;

import javax.imageio.ImageIO;
import javax.swing.*;
import javax.swing.filechooser.FileNameExtensionFilter;
import java.awt.*;
import java.awt.geom.Arc2D;
import java.awt.geom.Ellipse2D;
import java.awt.geom.RoundRectangle2D;
import java.awt.image.BufferedImage;
import java.io.*;

/*
    图形工具类
*/
public class ImageUtil extends JFrame {


    //平滑拉伸图片
    public static BufferedImage StretchImage(ImageIcon icon, int width, int height) {
        int wid = icon.getIconWidth();
        int hei = icon.getIconHeight();

        BufferedImage bi = new BufferedImage(wid, hei, BufferedImage.TYPE_INT_RGB);
        Graphics g = bi.getGraphics();
        //将图像复制到缓冲区处理 避免损坏
        g.drawImage(icon.getImage(), 0, 0, null);

        Image scaledImage = bi.getScaledInstance(width, height, Image.SCALE_SMOOTH);
        bi = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
         g = bi.getGraphics();
        //将图像复制到缓冲区处理 避免损坏
        g.drawImage(scaledImage ,0, 0, null);
//        ImageIO.write(ret, dname, bos);
        return bi;
    }

    //拉伸png图片
    public static BufferedImage StretchPngImage(ImageIcon icon, int width, int height) {
        int wid = icon.getIconWidth();
        int hei = icon.getIconHeight();

        BufferedImage bi = new BufferedImage(wid, hei, BufferedImage.TYPE_INT_RGB);

        Graphics2D g;
        g = bi.createGraphics();
        bi = g.getDeviceConfiguration().createCompatibleImage(wid, hei, Transparency.TRANSLUCENT);
        g.dispose();
        g = bi.createGraphics();
        g.drawImage(icon.getImage(), 0, 0, null);

        Image image = bi.getScaledInstance(width, height, Image.SCALE_SMOOTH);

        bi = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        g = bi.createGraphics();
        bi = g.getDeviceConfiguration().createCompatibleImage(width, height, Transparency.TRANSLUCENT);
        g.dispose();
        g = bi.createGraphics();
        g.drawImage(image, 0, 0, null);
        return bi;
    }



}
