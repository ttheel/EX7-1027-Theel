public aspect TraceAspectTheel {
    pointcut classToTrace(): within(*App);
    pointcut methodToTrace(): classToTrace() && execution(String getName());

    before(): methodToTrace() {
        System.out.println("[BGN] " + thisJoinPoint.getSignature() + ", " + thisJoinPoint.getSourceLocation().getLine());	
    }

    after(): methodToTrace() {
        System.out.println("[END] " + thisJoinPoint.getSourceLocation().getFileName());	
    }
}

