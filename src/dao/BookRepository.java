package dao;

import java.util.ArrayList;

import dto.Book;

public class BookRepository {
	
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	private static BookRepository instance = new BookRepository();
	
	public static BookRepository getInstance() {
		return instance;
	}
	
	public BookRepository() {
		Book one = new Book();
		one.setDescription("���峪 PPT ������ ���� �� �ֳ���? �׷��� ���� �����ϴ�. ���� �ٷ� �������� ���ۿ� �����غ�����."
				+ " ���� ���� ��ǻ�Ͱ� ��� �������ϴ�. �ڵ�� ���� ȭ���� �ٷ� ������ �����θ� �о ��� �۵��ϴ��� ���� �ľ��� �� �ִ� ���� �⺻�̰�,"
				+ "�߰��߰� ��� �߰��Ͽ� ����ְ� �����ϵ� ������ �� �ֽ��ϴ�.");
		one.setBookId("ISBN1234");
		one.setUnitInStock(1000);
		one.setTotalPages(288);
		one.setReleaseDate("2018/03/02");
		one.setName("HTML5+CSS3");
		one.setCategory("Hello Coding");
		one.setAuthor("Ȳ��ȣ");
		one.setPublisher("�Ѻ��̵��");
		one.setUnitPrice(15000);
		one.setCondition("New");
		one.setFilename("ISBN1234.jpg");
	
		Book two = new Book();
		two.setDescription("��ü ������ �ٽɰ� �ڹ��� ������ ����� ����� �ٷ�鼭�� �ʺ��ڰ� ���� �н��� �� �ְ� �����߽��ϴ�."
				+ "�ð�ȭ ������ Ȱ���� ���� ����� �������� ���� �ٽ� �ڵ带 ���� ����� ����...");
		two.setBookId("ISBN1235");
		two.setUnitInStock(100);
		two.setTotalPages(100);
		two.setReleaseDate("2018/03/02");
		two.setName("���� ���� �ڹ� ���α׷���");
		two.setCategory("IT �����");
		two.setAuthor("������");
		two.setPublisher("�Ѻ���ī����");
		two.setUnitPrice(27000);
		two.setCondition("Old");
		two.setFilename("ISBN1235.jpg");
		
		Book thr = new Book();
		thr.setDescription("�������� �ܼ��� ��� ����� ������ �ͺ��� ��Ű��ó�� ��� �����ϰ� �����ϴ����� �� �߿��մϴ�."
				+ "������ ������ �ٿ��ִ� �����δ� ���� ���߿��� �������� ����� Ȱ���� �� �����ϴ�...");
		thr.setBookId("ISBN1236");
		thr.setUnitInStock(50);
		thr.setTotalPages(498);
		thr.setReleaseDate("2018/03/02");
		thr.setName("������4 �Թ�");
		thr.setCategory("IT �����");
		thr.setAuthor("�ϼ����� ����ġ, ������ ��Ÿ��, ��Ű ������(����ö, ���μ�)");
		thr.setPublisher("�Ѻ��̵��");
		thr.setUnitPrice(27000);
		thr.setCondition("E-book");
		thr.setFilename("ISBN1236.jpg");
		
		listOfBooks.add(one);
		listOfBooks.add(two);
		listOfBooks.add(thr);
	}
	
	public ArrayList<Book> getAllBooks() {
		return listOfBooks;
	}
	
	public Book getBookById(String bookId) {
		Book bookById = null;
		
		for (int i = 0; i < listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
			if (book != null && book.getBookId() != null && book.getBookId().equals(bookId)) {
				bookById = book;
				break;
			}
		}
		return bookById;
	}
	
	public void addBook (Book book) {
		listOfBooks.add(book);
	}
}
