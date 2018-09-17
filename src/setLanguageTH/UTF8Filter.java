package setLanguageTH;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class UTF8Filter implements Filter {

	FilterConfig filterConfig;

	public UTF8Filter() {
		super();
	}

	public void init(FilterConfig arg0) throws ServletException {
		filterConfig = arg0;

	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		if (chain != null)
			chain.doFilter(request, response);
	}

	public void destroy() {
		filterConfig = null;
	}

}
