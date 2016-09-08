import java.util.logging.Logger;

public class FancyLib
{
	public static final String ROBOT_LIBRARY_SCOPE = "GLOBAL";
	final Logger fancyLibLogger = Logger.getLogger("FancyLibLogger");

	public void isThisFancy(int value)
	{
		if (42 != value)
		{
			fancyLibLogger.warning("Warning this is not so fancy");
		}
	}
}
