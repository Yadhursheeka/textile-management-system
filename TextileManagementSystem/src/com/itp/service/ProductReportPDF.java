package com.itp.service;

/*
 * @author V. Yahdhursheika - IT19186948
 *  
 * ITP 2020 Textile Management System
 */


import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.draw.VerticalPositionMark;
import com.itp.model.Product;


public class ProductReportPDF {

public int generateReport() {
		
		int status = 0;
		
		List<Product> list = new ArrayList<Product>();
		
		iProductService ip = new ProductServiceImpl();
		list = ip.listProduct();
		
		try {
		
			final Font font1 = new Font(Font.getFamily("TIMES_ROMAN"), 20, 
					Font.BOLD|Font.UNDERLINE);
			
			//file Location
			String fileName = "C:\\Users\\\\Vallaven\\\\Desktop\\\\product.pdf";
		
			//Create a document
			Document document = new Document();
			
			PdfWriter.getInstance(document, new FileOutputStream(fileName));
		
			//Open the document
			document.open();
			
			//====
			document.addTitle("Generate PDF Report");
			document.addSubject("Generate Product Report");
			document.addAuthor("Yahdhursheika");
			document.addCreator("Yahdhursheika");
			
			
			//Add image to pdf document
			document.add(Image.getInstance("C:\\Users\\Vallaven\\git\\TextileManagementSystem\\TextileManagementSystem\\WebContent\\images\\reportHeader.png"));
			
			//=======
			Paragraph para = new Paragraph(" ");
			
			Paragraph heading = new Paragraph();
			heading.setAlignment(Element.ALIGN_CENTER);
			heading.setFont(font1);
			heading.add(new Paragraph("Product Report"));
			
			para.add(" ");
			para.add(" ");
			
			document.add(para);
			document.add(heading);
			document.add(para);
			document.add(para);
			
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy");
			//Create a paragraph
			Paragraph para1 = new Paragraph("Report Created on "
					+ simpleDateFormat.format(new Date()));
			
			Paragraph para2 = new Paragraph(" ");
			
			//Create a table
			PdfPTable table = new PdfPTable(7);
			table.setWidthPercentage(100);
			
			//Create a cell
			
			PdfPCell c1 = new PdfPCell(new Paragraph("Product ID"));
			c1.setHorizontalAlignment(Element.ALIGN_CENTER);
			
			PdfPCell c2 = new PdfPCell(new Paragraph("Product Name"));
			c2.setHorizontalAlignment(Element.ALIGN_CENTER);
			
			PdfPCell c3 = new PdfPCell(new Paragraph("Category"));
			c3.setHorizontalAlignment(Element.ALIGN_CENTER);
			
			PdfPCell c4 = new PdfPCell(new Paragraph("Quantity"));
			c4.setHorizontalAlignment(Element.ALIGN_CENTER);
			
			PdfPCell c5 = new PdfPCell(new Paragraph("Size"));
			c5.setHorizontalAlignment(Element.ALIGN_CENTER);
			
			PdfPCell c6 = new PdfPCell(new Paragraph("Price"));
			c6.setHorizontalAlignment(Element.ALIGN_CENTER);
			
			PdfPCell c7 = new PdfPCell(new Paragraph("Re-Order Level"));
			c7.setHorizontalAlignment(Element.ALIGN_CENTER);
			
			//Add the cell to the table
			table.addCell(c1);
			table.addCell(c2);
			table.addCell(c3);
			table.addCell(c4);
			table.addCell(c5);
			table.addCell(c6);
			table.addCell(c7);
			
			
			for(Product p1: list) {
				
				c1 = new PdfPCell(new Paragraph(p1.getProductID()));
				c1.setHorizontalAlignment(Element.ALIGN_CENTER);
				
				c2 = new PdfPCell(new Paragraph(p1.getProductName()));
				c2.setHorizontalAlignment(Element.ALIGN_CENTER);
				
				c3 = new PdfPCell(new Paragraph(p1.getProductCategory()));
				c3.setHorizontalAlignment(Element.ALIGN_CENTER);
				
				c4 = new PdfPCell(new Paragraph(String.valueOf(p1.getProductQty())));
				c4.setHorizontalAlignment(Element.ALIGN_CENTER);
				
				c5 = new PdfPCell(new Paragraph(p1.getProductSize()));
				c5.setHorizontalAlignment(Element.ALIGN_CENTER);
				
				c6 = new PdfPCell(new Paragraph(String.valueOf(p1.getProductPrice())));
				c6.setHorizontalAlignment(Element.ALIGN_CENTER);
				
				c7 = new PdfPCell(new Paragraph(String.valueOf(p1.getProductReOrderLevel())));
				c7.setHorizontalAlignment(Element.ALIGN_CENTER);
				
				
				table.addCell(c1);
				table.addCell(c2);
				table.addCell(c3);
				table.addCell(c4);
				table.addCell(c5);
				table.addCell(c6);
				table.addCell(c7);
			}
			//Add objects to table
			document.add(para1);
			document.add(para2);
			document.add(table);
			
			document.close();
			
			System.out.println("Report generated Successfully!");
			status = 1;
		
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return status;
	}

}
