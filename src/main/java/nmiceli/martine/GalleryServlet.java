package nmiceli.martine;

import org.apache.velocity.app.Velocity;
import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;

import java.io.IOException;
import java.io.StringWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class GalleryServlet extends HttpServlet {
  @Override
  public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
    Velocity.init();
    Template t = Velocity.getTemplate("ngmtest.vm");
    VelocityContext context = new VelocityContext();
    context.put("foo", "World");
    context.put("user-agent", req.getHeader("user-agent"));
    StringWriter writer = new StringWriter();
    t.merge(context, writer);
    resp.setContentType("text/html");
    resp.getWriter().println(writer.toString());
  }
}
