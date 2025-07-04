public class SingletonPatternExample {
    public static void main(String[] args) {
        // Get the singleton logger instance
        Logger logger = Logger.getInstance();

        // Log messages
        logger.log("Application started");
        logger.log("Application running smoothly");
    }
}

class Logger {
    // Singleton instance
    private static final Logger instance = new Logger();

    // Private constructor to prevent instantiation
    private Logger() {
    }

    // Method to get the singleton instance
    public static Logger getInstance() {
        return instance;
    }

    // Log method
    public void log(String message) {
        System.out.println("Log: " + message);
    }
}