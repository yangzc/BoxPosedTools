.class public Lcn/xutils/commons/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/Functions$FailableBiConsumer;,
        Lcn/xutils/commons/Functions$FailableRunnable;,
        Lcn/xutils/commons/Functions$FailableConsumer;,
        Lcn/xutils/commons/Functions$FailableBiFunction;,
        Lcn/xutils/commons/Functions$FailableSupplier;,
        Lcn/xutils/commons/Functions$FailableFunction;,
        Lcn/xutils/commons/Functions$FailableBiPredicate;,
        Lcn/xutils/commons/Functions$FailableCallable;,
        Lcn/xutils/commons/Functions$FailablePredicate;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accept(Lcn/xutils/commons/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/Functions$FailableBiConsumer<",
            "TO1;TO2;TT;>;TO1;TO2;)V"
        }
    .end annotation

    .line 297
    .local p0, "consumer":Lcn/xutils/commons/Functions$FailableBiConsumer;, "Lcn/xutils/commons/Functions$FailableBiConsumer<TO1;TO2;TT;>;"
    .local p1, "object1":Ljava/lang/Object;, "TO1;"
    .local p2, "object2":Ljava/lang/Object;, "TO2;"
    new-instance v0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda5;-><init>(Lcn/xutils/commons/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcn/xutils/commons/Functions;->run(Lcn/xutils/commons/Functions$FailableRunnable;)V

    .line 298
    return-void
.end method

.method public static accept(Lcn/xutils/commons/Functions$FailableConsumer;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/Functions$FailableConsumer<",
            "TO;TT;>;TO;)V"
        }
    .end annotation

    .line 309
    .local p0, "consumer":Lcn/xutils/commons/Functions$FailableConsumer;, "Lcn/xutils/commons/Functions$FailableConsumer<TO;TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TO;"
    new-instance v0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda9;-><init>(Lcn/xutils/commons/Functions$FailableConsumer;Ljava/lang/Object;)V

    invoke-static {v0}, Lcn/xutils/commons/Functions;->run(Lcn/xutils/commons/Functions$FailableRunnable;)V

    .line 310
    return-void
.end method

.method public static apply(Lcn/xutils/commons/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/Functions$FailableBiFunction<",
            "TO1;TO2;TO;TT;>;TO1;TO2;)TO;"
        }
    .end annotation

    .line 326
    .local p0, "function":Lcn/xutils/commons/Functions$FailableBiFunction;, "Lcn/xutils/commons/Functions$FailableBiFunction<TO1;TO2;TO;TT;>;"
    .local p1, "input1":Ljava/lang/Object;, "TO1;"
    .local p2, "input2":Ljava/lang/Object;, "TO2;"
    new-instance v0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda7;-><init>(Lcn/xutils/commons/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcn/xutils/commons/Functions;->get(Lcn/xutils/commons/Functions$FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static apply(Lcn/xutils/commons/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/Functions$FailableFunction<",
            "TI;TO;TT;>;TI;)TO;"
        }
    .end annotation

    .line 340
    .local p0, "function":Lcn/xutils/commons/Functions$FailableFunction;, "Lcn/xutils/commons/Functions$FailableFunction<TI;TO;TT;>;"
    .local p1, "input":Ljava/lang/Object;, "TI;"
    new-instance v0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda19;-><init>(Lcn/xutils/commons/Functions$FailableFunction;Ljava/lang/Object;)V

    invoke-static {v0}, Lcn/xutils/commons/Functions;->get(Lcn/xutils/commons/Functions$FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static asBiConsumer(Lcn/xutils/commons/Functions$FailableBiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/Functions$FailableBiConsumer<",
            "TO1;TO2;*>;)",
            "Ljava/util/function/BiConsumer<",
            "TO1;TO2;>;"
        }
    .end annotation

    .line 353
    .local p0, "consumer":Lcn/xutils/commons/Functions$FailableBiConsumer;, "Lcn/xutils/commons/Functions$FailableBiConsumer<TO1;TO2;*>;"
    new-instance v0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda17;-><init>(Lcn/xutils/commons/Functions$FailableBiConsumer;)V

    return-object v0
.end method

.method public static asBiFunction(Lcn/xutils/commons/Functions$FailableBiFunction;)Ljava/util/function/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/Functions$FailableBiFunction<",
            "TO1;TO2;TO;*>;)",
            "Ljava/util/function/BiFunction<",
            "TO1;TO2;TO;>;"
        }
    .end annotation

    .line 367
    .local p0, "function":Lcn/xutils/commons/Functions$FailableBiFunction;, "Lcn/xutils/commons/Functions$FailableBiFunction<TO1;TO2;TO;*>;"
    new-instance v0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda2;-><init>(Lcn/xutils/commons/Functions$FailableBiFunction;)V

    return-object v0
.end method

.method public static asBiPredicate(Lcn/xutils/commons/Functions$FailableBiPredicate;)Ljava/util/function/BiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/Functions$FailableBiPredicate<",
            "TO1;TO2;*>;)",
            "Ljava/util/function/BiPredicate<",
            "TO1;TO2;>;"
        }
    .end annotation

    .line 380
    .local p0, "predicate":Lcn/xutils/commons/Functions$FailableBiPredicate;, "Lcn/xutils/commons/Functions$FailableBiPredicate<TO1;TO2;*>;"
    new-instance v0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda1;-><init>(Lcn/xutils/commons/Functions$FailableBiPredicate;)V

    return-object v0
.end method

.method public static asCallable(Lcn/xutils/commons/Functions$FailableCallable;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/Functions$FailableCallable<",
            "TO;*>;)",
            "Ljava/util/concurrent/Callable<",
            "TO;>;"
        }
    .end annotation

    .line 392
    .local p0, "callable":Lcn/xutils/commons/Functions$FailableCallable;, "Lcn/xutils/commons/Functions$FailableCallable<TO;*>;"
    new-instance v0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda16;-><init>(Lcn/xutils/commons/Functions$FailableCallable;)V

    return-object v0
.end method

.method public static asConsumer(Lcn/xutils/commons/Functions$FailableConsumer;)Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/Functions$FailableConsumer<",
            "TI;*>;)",
            "Ljava/util/function/Consumer<",
            "TI;>;"
        }
    .end annotation

    .line 404
    .local p0, "consumer":Lcn/xutils/commons/Functions$FailableConsumer;, "Lcn/xutils/commons/Functions$FailableConsumer<TI;*>;"
    new-instance v0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda11;-><init>(Lcn/xutils/commons/Functions$FailableConsumer;)V

    return-object v0
.end method

.method public static asFunction(Lcn/xutils/commons/Functions$FailableFunction;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/Functions$FailableFunction<",
            "TI;TO;*>;)",
            "Ljava/util/function/Function<",
            "TI;TO;>;"
        }
    .end annotation

    .line 417
    .local p0, "function":Lcn/xutils/commons/Functions$FailableFunction;, "Lcn/xutils/commons/Functions$FailableFunction<TI;TO;*>;"
    new-instance v0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda18;-><init>(Lcn/xutils/commons/Functions$FailableFunction;)V

    return-object v0
.end method

.method public static asPredicate(Lcn/xutils/commons/Functions$FailablePredicate;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/Functions$FailablePredicate<",
            "TI;*>;)",
            "Ljava/util/function/Predicate<",
            "TI;>;"
        }
    .end annotation

    .line 429
    .local p0, "predicate":Lcn/xutils/commons/Functions$FailablePredicate;, "Lcn/xutils/commons/Functions$FailablePredicate<TI;*>;"
    new-instance v0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda6;-><init>(Lcn/xutils/commons/Functions$FailablePredicate;)V

    return-object v0
.end method

.method public static asRunnable(Lcn/xutils/commons/Functions$FailableRunnable;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/Functions$FailableRunnable<",
            "*>;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 440
    .local p0, "runnable":Lcn/xutils/commons/Functions$FailableRunnable;, "Lcn/xutils/commons/Functions$FailableRunnable<*>;"
    new-instance v0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda3;-><init>(Lcn/xutils/commons/Functions$FailableRunnable;)V

    return-object v0
.end method

.method public static asSupplier(Lcn/xutils/commons/Functions$FailableSupplier;)Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/Functions$FailableSupplier<",
            "TO;*>;)",
            "Ljava/util/function/Supplier<",
            "TO;>;"
        }
    .end annotation

    .line 452
    .local p0, "supplier":Lcn/xutils/commons/Functions$FailableSupplier;, "Lcn/xutils/commons/Functions$FailableSupplier<TO;*>;"
    new-instance v0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda10;-><init>(Lcn/xutils/commons/Functions$FailableSupplier;)V

    return-object v0
.end method

.method public static call(Lcn/xutils/commons/Functions$FailableCallable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/Functions$FailableCallable<",
            "TO;TT;>;)TO;"
        }
    .end annotation

    .line 464
    .local p0, "callable":Lcn/xutils/commons/Functions$FailableCallable;, "Lcn/xutils/commons/Functions$FailableCallable<TO;TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda15;-><init>(Lcn/xutils/commons/Functions$FailableCallable;)V

    invoke-static {v0}, Lcn/xutils/commons/Functions;->get(Lcn/xutils/commons/Functions$FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get(Lcn/xutils/commons/Functions$FailableSupplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/Functions$FailableSupplier<",
            "TO;TT;>;)TO;"
        }
    .end annotation

    .line 478
    .local p0, "supplier":Lcn/xutils/commons/Functions$FailableSupplier;, "Lcn/xutils/commons/Functions$FailableSupplier<TO;TT;>;"
    :try_start_0
    invoke-interface {p0}, Lcn/xutils/commons/Functions$FailableSupplier;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 479
    :catchall_0
    move-exception v0

    .line 480
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcn/xutils/commons/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static getAsBoolean(Lcn/xutils/commons/function/FailableBooleanSupplier;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableBooleanSupplier<",
            "TT;>;)Z"
        }
    .end annotation

    .line 493
    .local p0, "supplier":Lcn/xutils/commons/function/FailableBooleanSupplier;, "Lcn/xutils/commons/function/FailableBooleanSupplier<TT;>;"
    :try_start_0
    invoke-interface {p0}, Lcn/xutils/commons/function/FailableBooleanSupplier;->getAsBoolean()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 494
    :catchall_0
    move-exception v0

    .line 495
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcn/xutils/commons/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static synthetic lambda$accept$0(Lcn/xutils/commons/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "consumer"    # Lcn/xutils/commons/Functions$FailableBiConsumer;
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 297
    invoke-interface {p0, p1, p2}, Lcn/xutils/commons/Functions$FailableBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$accept$1(Lcn/xutils/commons/Functions$FailableConsumer;Ljava/lang/Object;)V
    .locals 0
    .param p0, "consumer"    # Lcn/xutils/commons/Functions$FailableConsumer;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 309
    invoke-interface {p0, p1}, Lcn/xutils/commons/Functions$FailableConsumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$apply$2(Lcn/xutils/commons/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "function"    # Lcn/xutils/commons/Functions$FailableBiFunction;
    .param p1, "input1"    # Ljava/lang/Object;
    .param p2, "input2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 326
    invoke-interface {p0, p1, p2}, Lcn/xutils/commons/Functions$FailableBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$apply$3(Lcn/xutils/commons/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "function"    # Lcn/xutils/commons/Functions$FailableFunction;
    .param p1, "input"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 340
    invoke-interface {p0, p1}, Lcn/xutils/commons/Functions$FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$asBiConsumer$4(Lcn/xutils/commons/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "consumer"    # Lcn/xutils/commons/Functions$FailableBiConsumer;
    .param p1, "input1"    # Ljava/lang/Object;
    .param p2, "input2"    # Ljava/lang/Object;

    .line 353
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/Functions;->accept(Lcn/xutils/commons/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$asBiFunction$5(Lcn/xutils/commons/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "function"    # Lcn/xutils/commons/Functions$FailableBiFunction;
    .param p1, "input1"    # Ljava/lang/Object;
    .param p2, "input2"    # Ljava/lang/Object;

    .line 367
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/Functions;->apply(Lcn/xutils/commons/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$asBiPredicate$6(Lcn/xutils/commons/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "predicate"    # Lcn/xutils/commons/Functions$FailableBiPredicate;
    .param p1, "input1"    # Ljava/lang/Object;
    .param p2, "input2"    # Ljava/lang/Object;

    .line 380
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/Functions;->test(Lcn/xutils/commons/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$asCallable$7(Lcn/xutils/commons/Functions$FailableCallable;)Ljava/lang/Object;
    .locals 1
    .param p0, "callable"    # Lcn/xutils/commons/Functions$FailableCallable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 392
    invoke-static {p0}, Lcn/xutils/commons/Functions;->call(Lcn/xutils/commons/Functions$FailableCallable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$asConsumer$8(Lcn/xutils/commons/Functions$FailableConsumer;Ljava/lang/Object;)V
    .locals 0
    .param p0, "consumer"    # Lcn/xutils/commons/Functions$FailableConsumer;
    .param p1, "input"    # Ljava/lang/Object;

    .line 404
    invoke-static {p0, p1}, Lcn/xutils/commons/Functions;->accept(Lcn/xutils/commons/Functions$FailableConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$asFunction$9(Lcn/xutils/commons/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "function"    # Lcn/xutils/commons/Functions$FailableFunction;
    .param p1, "input"    # Ljava/lang/Object;

    .line 417
    invoke-static {p0, p1}, Lcn/xutils/commons/Functions;->apply(Lcn/xutils/commons/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$asPredicate$10(Lcn/xutils/commons/Functions$FailablePredicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "predicate"    # Lcn/xutils/commons/Functions$FailablePredicate;
    .param p1, "input"    # Ljava/lang/Object;

    .line 429
    invoke-static {p0, p1}, Lcn/xutils/commons/Functions;->test(Lcn/xutils/commons/Functions$FailablePredicate;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$asRunnable$11(Lcn/xutils/commons/Functions$FailableRunnable;)V
    .locals 0
    .param p0, "runnable"    # Lcn/xutils/commons/Functions$FailableRunnable;

    .line 440
    invoke-static {p0}, Lcn/xutils/commons/Functions;->run(Lcn/xutils/commons/Functions$FailableRunnable;)V

    return-void
.end method

.method static synthetic lambda$asSupplier$12(Lcn/xutils/commons/Functions$FailableSupplier;)Ljava/lang/Object;
    .locals 1
    .param p0, "supplier"    # Lcn/xutils/commons/Functions$FailableSupplier;

    .line 452
    invoke-static {p0}, Lcn/xutils/commons/Functions;->get(Lcn/xutils/commons/Functions$FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$test$13(Lcn/xutils/commons/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "predicate"    # Lcn/xutils/commons/Functions$FailableBiPredicate;
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 590
    invoke-interface {p0, p1, p2}, Lcn/xutils/commons/Functions$FailableBiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$test$14(Lcn/xutils/commons/Functions$FailablePredicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "predicate"    # Lcn/xutils/commons/Functions$FailablePredicate;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 603
    invoke-interface {p0, p1}, Lcn/xutils/commons/Functions$FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$tryWithResources$15([Lcn/xutils/commons/Functions$FailableRunnable;I)V
    .locals 1
    .param p0, "resources"    # [Lcn/xutils/commons/Functions$FailableRunnable;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 631
    aget-object v0, p0, p1

    invoke-interface {v0}, Lcn/xutils/commons/Functions$FailableRunnable;->run()V

    return-void
.end method

.method static synthetic lambda$tryWithResources$16([Lcn/xutils/commons/Functions$FailableRunnable;I)Lcn/xutils/commons/function/FailableRunnable;
    .locals 1
    .param p0, "resources"    # [Lcn/xutils/commons/Functions$FailableRunnable;
    .param p1, "i"    # I

    .line 631
    new-instance v0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda0;-><init>([Lcn/xutils/commons/Functions$FailableRunnable;I)V

    return-object v0
.end method

.method public static rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 524
    const-string v0, "throwable"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 525
    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->throwUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 527
    new-instance v0, Ljava/io/UncheckedIOException;

    move-object v1, p0

    check-cast v1, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 529
    :cond_0
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static run(Lcn/xutils/commons/Functions$FailableRunnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/Functions$FailableRunnable<",
            "TT;>;)V"
        }
    .end annotation

    .line 540
    .local p0, "runnable":Lcn/xutils/commons/Functions$FailableRunnable;, "Lcn/xutils/commons/Functions$FailableRunnable<TT;>;"
    :try_start_0
    invoke-interface {p0}, Lcn/xutils/commons/Functions$FailableRunnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    nop

    .line 544
    return-void

    .line 541
    :catchall_0
    move-exception v0

    .line 542
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcn/xutils/commons/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static stream(Ljava/util/Collection;)Lcn/xutils/commons/Streams$FailableStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TO;>;)",
            "Lcn/xutils/commons/Streams$FailableStream<",
            "TO;>;"
        }
    .end annotation

    .line 559
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TO;>;"
    new-instance v0, Lcn/xutils/commons/Streams$FailableStream;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/xutils/commons/Streams$FailableStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public static stream(Ljava/util/stream/Stream;)Lcn/xutils/commons/Streams$FailableStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TO;>;)",
            "Lcn/xutils/commons/Streams$FailableStream<",
            "TO;>;"
        }
    .end annotation

    .line 574
    .local p0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TO;>;"
    new-instance v0, Lcn/xutils/commons/Streams$FailableStream;

    invoke-direct {v0, p0}, Lcn/xutils/commons/Streams$FailableStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public static test(Lcn/xutils/commons/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/Functions$FailableBiPredicate<",
            "TO1;TO2;TT;>;TO1;TO2;)Z"
        }
    .end annotation

    .line 590
    .local p0, "predicate":Lcn/xutils/commons/Functions$FailableBiPredicate;, "Lcn/xutils/commons/Functions$FailableBiPredicate<TO1;TO2;TT;>;"
    .local p1, "object1":Ljava/lang/Object;, "TO1;"
    .local p2, "object2":Ljava/lang/Object;, "TO2;"
    new-instance v0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda8;-><init>(Lcn/xutils/commons/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcn/xutils/commons/Functions;->getAsBoolean(Lcn/xutils/commons/function/FailableBooleanSupplier;)Z

    move-result v0

    return v0
.end method

.method public static test(Lcn/xutils/commons/Functions$FailablePredicate;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/Functions$FailablePredicate<",
            "TO;TT;>;TO;)Z"
        }
    .end annotation

    .line 603
    .local p0, "predicate":Lcn/xutils/commons/Functions$FailablePredicate;, "Lcn/xutils/commons/Functions$FailablePredicate<TO;TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TO;"
    new-instance v0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda4;-><init>(Lcn/xutils/commons/Functions$FailablePredicate;Ljava/lang/Object;)V

    invoke-static {v0}, Lcn/xutils/commons/Functions;->getAsBoolean(Lcn/xutils/commons/function/FailableBooleanSupplier;)Z

    move-result v0

    return v0
.end method

.method public static varargs tryWithResources(Lcn/xutils/commons/Functions$FailableRunnable;Lcn/xutils/commons/Functions$FailableConsumer;[Lcn/xutils/commons/Functions$FailableRunnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/Functions$FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcn/xutils/commons/Functions$FailableConsumer<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;[",
            "Lcn/xutils/commons/Functions$FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 630
    .local p0, "action":Lcn/xutils/commons/Functions$FailableRunnable;, "Lcn/xutils/commons/Functions$FailableRunnable<+Ljava/lang/Throwable;>;"
    .local p1, "errorHandler":Lcn/xutils/commons/Functions$FailableConsumer;, "Lcn/xutils/commons/Functions$FailableConsumer<Ljava/lang/Throwable;+Ljava/lang/Throwable;>;"
    .local p2, "resources":[Lcn/xutils/commons/Functions$FailableRunnable;, "[Lcn/xutils/commons/Functions$FailableRunnable<+Ljava/lang/Throwable;>;"
    array-length v0, p2

    new-array v0, v0, [Lcn/xutils/commons/function/FailableRunnable;

    .line 631
    .local v0, "fr":[Lcn/xutils/commons/function/FailableRunnable;, "[Lcn/xutils/commons/function/FailableRunnable<*>;"
    new-instance v1, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda12;

    invoke-direct {v1, p2}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda12;-><init>([Lcn/xutils/commons/Functions$FailableRunnable;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 632
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda13;-><init>(Lcn/xutils/commons/Functions$FailableRunnable;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda14;

    invoke-direct {v2, p1}, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda14;-><init>(Lcn/xutils/commons/Functions$FailableConsumer;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Lcn/xutils/commons/function/Failable;->tryWithResources(Lcn/xutils/commons/function/FailableRunnable;Lcn/xutils/commons/function/FailableConsumer;[Lcn/xutils/commons/function/FailableRunnable;)V

    .line 633
    return-void
.end method

.method public static varargs tryWithResources(Lcn/xutils/commons/Functions$FailableRunnable;[Lcn/xutils/commons/Functions$FailableRunnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/Functions$FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;[",
            "Lcn/xutils/commons/Functions$FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 656
    .local p0, "action":Lcn/xutils/commons/Functions$FailableRunnable;, "Lcn/xutils/commons/Functions$FailableRunnable<+Ljava/lang/Throwable;>;"
    .local p1, "resources":[Lcn/xutils/commons/Functions$FailableRunnable;, "[Lcn/xutils/commons/Functions$FailableRunnable<+Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/Functions;->tryWithResources(Lcn/xutils/commons/Functions$FailableRunnable;Lcn/xutils/commons/Functions$FailableConsumer;[Lcn/xutils/commons/Functions$FailableRunnable;)V

    .line 657
    return-void
.end method
