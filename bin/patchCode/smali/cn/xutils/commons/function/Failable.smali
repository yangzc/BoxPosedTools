.class public Lcn/xutils/commons/function/Failable;
.super Ljava/lang/Object;
.source "Failable.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    return-void
.end method

.method public static accept(Lcn/xutils/commons/function/FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableBiConsumer<",
            "TT;TU;TE;>;TT;TU;)V"
        }
    .end annotation

    .line 86
    .local p0, "consumer":Lcn/xutils/commons/function/FailableBiConsumer;, "Lcn/xutils/commons/function/FailableBiConsumer<TT;TU;TE;>;"
    .local p1, "object1":Ljava/lang/Object;, "TT;"
    .local p2, "object2":Ljava/lang/Object;, "TU;"
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1, p2}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda18;-><init>(Lcn/xutils/commons/function/FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcn/xutils/commons/function/Failable;->run(Lcn/xutils/commons/function/FailableRunnable;)V

    .line 87
    return-void
.end method

.method public static accept(Lcn/xutils/commons/function/FailableConsumer;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableConsumer<",
            "TT;TE;>;TT;)V"
        }
    .end annotation

    .line 98
    .local p0, "consumer":Lcn/xutils/commons/function/FailableConsumer;, "Lcn/xutils/commons/function/FailableConsumer<TT;TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/function/FailableConsumer;Ljava/lang/Object;)V

    invoke-static {v0}, Lcn/xutils/commons/function/Failable;->run(Lcn/xutils/commons/function/FailableRunnable;)V

    .line 99
    return-void
.end method

.method public static accept(Lcn/xutils/commons/function/FailableDoubleConsumer;D)V
    .locals 1
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableDoubleConsumer<",
            "TE;>;D)V"
        }
    .end annotation

    .line 109
    .local p0, "consumer":Lcn/xutils/commons/function/FailableDoubleConsumer;, "Lcn/xutils/commons/function/FailableDoubleConsumer<TE;>;"
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1, p2}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda20;-><init>(Lcn/xutils/commons/function/FailableDoubleConsumer;D)V

    invoke-static {v0}, Lcn/xutils/commons/function/Failable;->run(Lcn/xutils/commons/function/FailableRunnable;)V

    .line 110
    return-void
.end method

.method public static accept(Lcn/xutils/commons/function/FailableIntConsumer;I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableIntConsumer<",
            "TE;>;I)V"
        }
    .end annotation

    .line 120
    .local p0, "consumer":Lcn/xutils/commons/function/FailableIntConsumer;, "Lcn/xutils/commons/function/FailableIntConsumer<TE;>;"
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda4;-><init>(Lcn/xutils/commons/function/FailableIntConsumer;I)V

    invoke-static {v0}, Lcn/xutils/commons/function/Failable;->run(Lcn/xutils/commons/function/FailableRunnable;)V

    .line 121
    return-void
.end method

.method public static accept(Lcn/xutils/commons/function/FailableLongConsumer;J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableLongConsumer<",
            "TE;>;J)V"
        }
    .end annotation

    .line 131
    .local p0, "consumer":Lcn/xutils/commons/function/FailableLongConsumer;, "Lcn/xutils/commons/function/FailableLongConsumer<TE;>;"
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1, p2}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda19;-><init>(Lcn/xutils/commons/function/FailableLongConsumer;J)V

    invoke-static {v0}, Lcn/xutils/commons/function/Failable;->run(Lcn/xutils/commons/function/FailableRunnable;)V

    .line 132
    return-void
.end method

.method public static apply(Lcn/xutils/commons/function/FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableBiFunction<",
            "TT;TU;TR;TE;>;TT;TU;)TR;"
        }
    .end annotation

    .line 148
    .local p0, "function":Lcn/xutils/commons/function/FailableBiFunction;, "Lcn/xutils/commons/function/FailableBiFunction<TT;TU;TR;TE;>;"
    .local p1, "input1":Ljava/lang/Object;, "TT;"
    .local p2, "input2":Ljava/lang/Object;, "TU;"
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda13;-><init>(Lcn/xutils/commons/function/FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcn/xutils/commons/function/Failable;->get(Lcn/xutils/commons/function/FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static apply(Lcn/xutils/commons/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableFunction<",
            "TT;TR;TE;>;TT;)TR;"
        }
    .end annotation

    .line 162
    .local p0, "function":Lcn/xutils/commons/function/FailableFunction;, "Lcn/xutils/commons/function/FailableFunction<TT;TR;TE;>;"
    .local p1, "input":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda7;-><init>(Lcn/xutils/commons/function/FailableFunction;Ljava/lang/Object;)V

    invoke-static {v0}, Lcn/xutils/commons/function/Failable;->get(Lcn/xutils/commons/function/FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static applyAsDouble(Lcn/xutils/commons/function/FailableDoubleBinaryOperator;DD)D
    .locals 7
    .param p1, "left"    # D
    .param p3, "right"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableDoubleBinaryOperator<",
            "TE;>;DD)D"
        }
    .end annotation

    .line 176
    .local p0, "function":Lcn/xutils/commons/function/FailableDoubleBinaryOperator;, "Lcn/xutils/commons/function/FailableDoubleBinaryOperator<TE;>;"
    new-instance v6, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda8;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda8;-><init>(Lcn/xutils/commons/function/FailableDoubleBinaryOperator;DD)V

    invoke-static {v6}, Lcn/xutils/commons/function/Failable;->getAsDouble(Lcn/xutils/commons/function/FailableDoubleSupplier;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static asBiConsumer(Lcn/xutils/commons/function/FailableBiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/function/FailableBiConsumer<",
            "TT;TU;*>;)",
            "Ljava/util/function/BiConsumer<",
            "TT;TU;>;"
        }
    .end annotation

    .line 188
    .local p0, "consumer":Lcn/xutils/commons/function/FailableBiConsumer;, "Lcn/xutils/commons/function/FailableBiConsumer<TT;TU;*>;"
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda14;-><init>(Lcn/xutils/commons/function/FailableBiConsumer;)V

    return-object v0
.end method

.method public static asBiFunction(Lcn/xutils/commons/function/FailableBiFunction;)Ljava/util/function/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/function/FailableBiFunction<",
            "TT;TU;TR;*>;)",
            "Ljava/util/function/BiFunction<",
            "TT;TU;TR;>;"
        }
    .end annotation

    .line 201
    .local p0, "function":Lcn/xutils/commons/function/FailableBiFunction;, "Lcn/xutils/commons/function/FailableBiFunction<TT;TU;TR;*>;"
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda16;-><init>(Lcn/xutils/commons/function/FailableBiFunction;)V

    return-object v0
.end method

.method public static asBiPredicate(Lcn/xutils/commons/function/FailableBiPredicate;)Ljava/util/function/BiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/function/FailableBiPredicate<",
            "TT;TU;*>;)",
            "Ljava/util/function/BiPredicate<",
            "TT;TU;>;"
        }
    .end annotation

    .line 213
    .local p0, "predicate":Lcn/xutils/commons/function/FailableBiPredicate;, "Lcn/xutils/commons/function/FailableBiPredicate<TT;TU;*>;"
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda5;-><init>(Lcn/xutils/commons/function/FailableBiPredicate;)V

    return-object v0
.end method

.method public static asCallable(Lcn/xutils/commons/function/FailableCallable;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/function/FailableCallable<",
            "TV;*>;)",
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation

    .line 224
    .local p0, "callable":Lcn/xutils/commons/function/FailableCallable;, "Lcn/xutils/commons/function/FailableCallable<TV;*>;"
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda12;-><init>(Lcn/xutils/commons/function/FailableCallable;)V

    return-object v0
.end method

.method public static asConsumer(Lcn/xutils/commons/function/FailableConsumer;)Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/function/FailableConsumer<",
            "TT;*>;)",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 235
    .local p0, "consumer":Lcn/xutils/commons/function/FailableConsumer;, "Lcn/xutils/commons/function/FailableConsumer<TT;*>;"
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda3;-><init>(Lcn/xutils/commons/function/FailableConsumer;)V

    return-object v0
.end method

.method public static asFunction(Lcn/xutils/commons/function/FailableFunction;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/function/FailableFunction<",
            "TT;TR;*>;)",
            "Ljava/util/function/Function<",
            "TT;TR;>;"
        }
    .end annotation

    .line 247
    .local p0, "function":Lcn/xutils/commons/function/FailableFunction;, "Lcn/xutils/commons/function/FailableFunction<TT;TR;*>;"
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda17;-><init>(Lcn/xutils/commons/function/FailableFunction;)V

    return-object v0
.end method

.method public static asPredicate(Lcn/xutils/commons/function/FailablePredicate;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/function/FailablePredicate<",
            "TT;*>;)",
            "Ljava/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 258
    .local p0, "predicate":Lcn/xutils/commons/function/FailablePredicate;, "Lcn/xutils/commons/function/FailablePredicate<TT;*>;"
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda6;-><init>(Lcn/xutils/commons/function/FailablePredicate;)V

    return-object v0
.end method

.method public static asRunnable(Lcn/xutils/commons/function/FailableRunnable;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/FailableRunnable<",
            "*>;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 268
    .local p0, "runnable":Lcn/xutils/commons/function/FailableRunnable;, "Lcn/xutils/commons/function/FailableRunnable<*>;"
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda11;-><init>(Lcn/xutils/commons/function/FailableRunnable;)V

    return-object v0
.end method

.method public static asSupplier(Lcn/xutils/commons/function/FailableSupplier;)Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/function/FailableSupplier<",
            "TT;*>;)",
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 279
    .local p0, "supplier":Lcn/xutils/commons/function/FailableSupplier;, "Lcn/xutils/commons/function/FailableSupplier<TT;*>;"
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda10;-><init>(Lcn/xutils/commons/function/FailableSupplier;)V

    return-object v0
.end method

.method public static call(Lcn/xutils/commons/function/FailableCallable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableCallable<",
            "TV;TE;>;)TV;"
        }
    .end annotation

    .line 291
    .local p0, "callable":Lcn/xutils/commons/function/FailableCallable;, "Lcn/xutils/commons/function/FailableCallable<TV;TE;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda21;-><init>(Lcn/xutils/commons/function/FailableCallable;)V

    invoke-static {v0}, Lcn/xutils/commons/function/Failable;->get(Lcn/xutils/commons/function/FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get(Lcn/xutils/commons/function/FailableSupplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableSupplier<",
            "TT;TE;>;)TT;"
        }
    .end annotation

    .line 304
    .local p0, "supplier":Lcn/xutils/commons/function/FailableSupplier;, "Lcn/xutils/commons/function/FailableSupplier<TT;TE;>;"
    :try_start_0
    invoke-interface {p0}, Lcn/xutils/commons/function/FailableSupplier;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 305
    :catchall_0
    move-exception v0

    .line 306
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcn/xutils/commons/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getAsBoolean(Lcn/xutils/commons/function/FailableBooleanSupplier;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableBooleanSupplier<",
            "TE;>;)Z"
        }
    .end annotation

    .line 319
    .local p0, "supplier":Lcn/xutils/commons/function/FailableBooleanSupplier;, "Lcn/xutils/commons/function/FailableBooleanSupplier<TE;>;"
    :try_start_0
    invoke-interface {p0}, Lcn/xutils/commons/function/FailableBooleanSupplier;->getAsBoolean()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 320
    :catchall_0
    move-exception v0

    .line 321
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcn/xutils/commons/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getAsDouble(Lcn/xutils/commons/function/FailableDoubleSupplier;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableDoubleSupplier<",
            "TE;>;)D"
        }
    .end annotation

    .line 334
    .local p0, "supplier":Lcn/xutils/commons/function/FailableDoubleSupplier;, "Lcn/xutils/commons/function/FailableDoubleSupplier<TE;>;"
    :try_start_0
    invoke-interface {p0}, Lcn/xutils/commons/function/FailableDoubleSupplier;->getAsDouble()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 335
    :catchall_0
    move-exception v0

    .line 336
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcn/xutils/commons/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getAsInt(Lcn/xutils/commons/function/FailableIntSupplier;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableIntSupplier<",
            "TE;>;)I"
        }
    .end annotation

    .line 349
    .local p0, "supplier":Lcn/xutils/commons/function/FailableIntSupplier;, "Lcn/xutils/commons/function/FailableIntSupplier<TE;>;"
    :try_start_0
    invoke-interface {p0}, Lcn/xutils/commons/function/FailableIntSupplier;->getAsInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 350
    :catchall_0
    move-exception v0

    .line 351
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcn/xutils/commons/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getAsLong(Lcn/xutils/commons/function/FailableLongSupplier;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableLongSupplier<",
            "TE;>;)J"
        }
    .end annotation

    .line 364
    .local p0, "supplier":Lcn/xutils/commons/function/FailableLongSupplier;, "Lcn/xutils/commons/function/FailableLongSupplier<TE;>;"
    :try_start_0
    invoke-interface {p0}, Lcn/xutils/commons/function/FailableLongSupplier;->getAsLong()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 365
    :catchall_0
    move-exception v0

    .line 366
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcn/xutils/commons/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getAsShort(Lcn/xutils/commons/function/FailableShortSupplier;)S
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableShortSupplier<",
            "TE;>;)S"
        }
    .end annotation

    .line 379
    .local p0, "supplier":Lcn/xutils/commons/function/FailableShortSupplier;, "Lcn/xutils/commons/function/FailableShortSupplier<TE;>;"
    :try_start_0
    invoke-interface {p0}, Lcn/xutils/commons/function/FailableShortSupplier;->getAsShort()S

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 380
    :catchall_0
    move-exception v0

    .line 381
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcn/xutils/commons/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static synthetic lambda$accept$0(Lcn/xutils/commons/function/FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "consumer"    # Lcn/xutils/commons/function/FailableBiConsumer;
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 86
    invoke-interface {p0, p1, p2}, Lcn/xutils/commons/function/FailableBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$accept$1(Lcn/xutils/commons/function/FailableConsumer;Ljava/lang/Object;)V
    .locals 0
    .param p0, "consumer"    # Lcn/xutils/commons/function/FailableConsumer;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 98
    invoke-interface {p0, p1}, Lcn/xutils/commons/function/FailableConsumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$accept$2(Lcn/xutils/commons/function/FailableDoubleConsumer;D)V
    .locals 0
    .param p0, "consumer"    # Lcn/xutils/commons/function/FailableDoubleConsumer;
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 109
    invoke-interface {p0, p1, p2}, Lcn/xutils/commons/function/FailableDoubleConsumer;->accept(D)V

    return-void
.end method

.method static synthetic lambda$accept$3(Lcn/xutils/commons/function/FailableIntConsumer;I)V
    .locals 0
    .param p0, "consumer"    # Lcn/xutils/commons/function/FailableIntConsumer;
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 120
    invoke-interface {p0, p1}, Lcn/xutils/commons/function/FailableIntConsumer;->accept(I)V

    return-void
.end method

.method static synthetic lambda$accept$4(Lcn/xutils/commons/function/FailableLongConsumer;J)V
    .locals 0
    .param p0, "consumer"    # Lcn/xutils/commons/function/FailableLongConsumer;
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 131
    invoke-interface {p0, p1, p2}, Lcn/xutils/commons/function/FailableLongConsumer;->accept(J)V

    return-void
.end method

.method static synthetic lambda$apply$5(Lcn/xutils/commons/function/FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "function"    # Lcn/xutils/commons/function/FailableBiFunction;
    .param p1, "input1"    # Ljava/lang/Object;
    .param p2, "input2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 148
    invoke-interface {p0, p1, p2}, Lcn/xutils/commons/function/FailableBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$apply$6(Lcn/xutils/commons/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "function"    # Lcn/xutils/commons/function/FailableFunction;
    .param p1, "input"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 162
    invoke-interface {p0, p1}, Lcn/xutils/commons/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$applyAsDouble$7(Lcn/xutils/commons/function/FailableDoubleBinaryOperator;DD)D
    .locals 2
    .param p0, "function"    # Lcn/xutils/commons/function/FailableDoubleBinaryOperator;
    .param p1, "left"    # D
    .param p3, "right"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 176
    invoke-interface {p0, p1, p2, p3, p4}, Lcn/xutils/commons/function/FailableDoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$asBiConsumer$8(Lcn/xutils/commons/function/FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "consumer"    # Lcn/xutils/commons/function/FailableBiConsumer;
    .param p1, "input1"    # Ljava/lang/Object;
    .param p2, "input2"    # Ljava/lang/Object;

    .line 188
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/function/Failable;->accept(Lcn/xutils/commons/function/FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$asBiFunction$9(Lcn/xutils/commons/function/FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "function"    # Lcn/xutils/commons/function/FailableBiFunction;
    .param p1, "input1"    # Ljava/lang/Object;
    .param p2, "input2"    # Ljava/lang/Object;

    .line 201
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/function/Failable;->apply(Lcn/xutils/commons/function/FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$asBiPredicate$10(Lcn/xutils/commons/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "predicate"    # Lcn/xutils/commons/function/FailableBiPredicate;
    .param p1, "input1"    # Ljava/lang/Object;
    .param p2, "input2"    # Ljava/lang/Object;

    .line 213
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/function/Failable;->test(Lcn/xutils/commons/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$asCallable$11(Lcn/xutils/commons/function/FailableCallable;)Ljava/lang/Object;
    .locals 1
    .param p0, "callable"    # Lcn/xutils/commons/function/FailableCallable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    invoke-static {p0}, Lcn/xutils/commons/function/Failable;->call(Lcn/xutils/commons/function/FailableCallable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$asConsumer$12(Lcn/xutils/commons/function/FailableConsumer;Ljava/lang/Object;)V
    .locals 0
    .param p0, "consumer"    # Lcn/xutils/commons/function/FailableConsumer;
    .param p1, "input"    # Ljava/lang/Object;

    .line 235
    invoke-static {p0, p1}, Lcn/xutils/commons/function/Failable;->accept(Lcn/xutils/commons/function/FailableConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$asFunction$13(Lcn/xutils/commons/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "function"    # Lcn/xutils/commons/function/FailableFunction;
    .param p1, "input"    # Ljava/lang/Object;

    .line 247
    invoke-static {p0, p1}, Lcn/xutils/commons/function/Failable;->apply(Lcn/xutils/commons/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$asPredicate$14(Lcn/xutils/commons/function/FailablePredicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "predicate"    # Lcn/xutils/commons/function/FailablePredicate;
    .param p1, "input"    # Ljava/lang/Object;

    .line 258
    invoke-static {p0, p1}, Lcn/xutils/commons/function/Failable;->test(Lcn/xutils/commons/function/FailablePredicate;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$asRunnable$15(Lcn/xutils/commons/function/FailableRunnable;)V
    .locals 0
    .param p0, "runnable"    # Lcn/xutils/commons/function/FailableRunnable;

    .line 268
    invoke-static {p0}, Lcn/xutils/commons/function/Failable;->run(Lcn/xutils/commons/function/FailableRunnable;)V

    return-void
.end method

.method static synthetic lambda$asSupplier$16(Lcn/xutils/commons/function/FailableSupplier;)Ljava/lang/Object;
    .locals 1
    .param p0, "supplier"    # Lcn/xutils/commons/function/FailableSupplier;

    .line 279
    invoke-static {p0}, Lcn/xutils/commons/function/Failable;->get(Lcn/xutils/commons/function/FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$test$17(Lcn/xutils/commons/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "predicate"    # Lcn/xutils/commons/function/FailableBiPredicate;
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 476
    invoke-interface {p0, p1, p2}, Lcn/xutils/commons/function/FailableBiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$test$18(Lcn/xutils/commons/function/FailablePredicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "predicate"    # Lcn/xutils/commons/function/FailablePredicate;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 489
    invoke-interface {p0, p1}, Lcn/xutils/commons/function/FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$tryWithResources$19(Lcn/xutils/commons/function/FailableRunnable;)V
    .locals 1
    .param p0, "r"    # Lcn/xutils/commons/function/FailableRunnable;

    .line 521
    const-string v0, "runnable"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public static rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 411
    const-string v0, "throwable"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 412
    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->throwUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 414
    new-instance v0, Ljava/io/UncheckedIOException;

    move-object v1, p0

    check-cast v1, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static run(Lcn/xutils/commons/function/FailableRunnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableRunnable<",
            "TE;>;)V"
        }
    .end annotation

    .line 427
    .local p0, "runnable":Lcn/xutils/commons/function/FailableRunnable;, "Lcn/xutils/commons/function/FailableRunnable<TE;>;"
    :try_start_0
    invoke-interface {p0}, Lcn/xutils/commons/function/FailableRunnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    nop

    .line 431
    return-void

    .line 428
    :catchall_0
    move-exception v0

    .line 429
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcn/xutils/commons/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static stream(Ljava/util/Collection;)Lcn/xutils/commons/stream/Streams$FailableStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Lcn/xutils/commons/stream/Streams$FailableStream<",
            "TE;>;"
        }
    .end annotation

    .line 446
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Lcn/xutils/commons/stream/Streams$FailableStream;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/xutils/commons/stream/Streams$FailableStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public static stream(Ljava/util/stream/Stream;)Lcn/xutils/commons/stream/Streams$FailableStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Lcn/xutils/commons/stream/Streams$FailableStream<",
            "TT;>;"
        }
    .end annotation

    .line 460
    .local p0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    new-instance v0, Lcn/xutils/commons/stream/Streams$FailableStream;

    invoke-direct {v0, p0}, Lcn/xutils/commons/stream/Streams$FailableStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public static test(Lcn/xutils/commons/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableBiPredicate<",
            "TT;TU;TE;>;TT;TU;)Z"
        }
    .end annotation

    .line 476
    .local p0, "predicate":Lcn/xutils/commons/function/FailableBiPredicate;, "Lcn/xutils/commons/function/FailableBiPredicate<TT;TU;TE;>;"
    .local p1, "object1":Ljava/lang/Object;, "TT;"
    .local p2, "object2":Ljava/lang/Object;, "TU;"
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda15;-><init>(Lcn/xutils/commons/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcn/xutils/commons/function/Failable;->getAsBoolean(Lcn/xutils/commons/function/FailableBooleanSupplier;)Z

    move-result v0

    return v0
.end method

.method public static test(Lcn/xutils/commons/function/FailablePredicate;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailablePredicate<",
            "TT;TE;>;TT;)Z"
        }
    .end annotation

    .line 489
    .local p0, "predicate":Lcn/xutils/commons/function/FailablePredicate;, "Lcn/xutils/commons/function/FailablePredicate<TT;TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda9;-><init>(Lcn/xutils/commons/function/FailablePredicate;Ljava/lang/Object;)V

    invoke-static {v0}, Lcn/xutils/commons/function/Failable;->getAsBoolean(Lcn/xutils/commons/function/FailableBooleanSupplier;)Z

    move-result v0

    return v0
.end method

.method public static varargs tryWithResources(Lcn/xutils/commons/function/FailableRunnable;Lcn/xutils/commons/function/FailableConsumer;[Lcn/xutils/commons/function/FailableRunnable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcn/xutils/commons/function/FailableConsumer<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;[",
            "Lcn/xutils/commons/function/FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 516
    .local p0, "action":Lcn/xutils/commons/function/FailableRunnable;, "Lcn/xutils/commons/function/FailableRunnable<+Ljava/lang/Throwable;>;"
    .local p1, "errorHandler":Lcn/xutils/commons/function/FailableConsumer;, "Lcn/xutils/commons/function/FailableConsumer<Ljava/lang/Throwable;+Ljava/lang/Throwable;>;"
    .local p2, "resources":[Lcn/xutils/commons/function/FailableRunnable;, "[Lcn/xutils/commons/function/FailableRunnable<+Ljava/lang/Throwable;>;"
    if-nez p1, :cond_0

    .line 517
    new-instance v0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda1;-><init>()V

    .local v0, "actualErrorHandler":Lcn/xutils/commons/function/FailableConsumer;, "Lcn/xutils/commons/function/FailableConsumer<Ljava/lang/Throwable;+Ljava/lang/Throwable;>;"
    goto :goto_0

    .line 519
    .end local v0    # "actualErrorHandler":Lcn/xutils/commons/function/FailableConsumer;, "Lcn/xutils/commons/function/FailableConsumer<Ljava/lang/Throwable;+Ljava/lang/Throwable;>;"
    :cond_0
    move-object v0, p1

    .line 521
    .restart local v0    # "actualErrorHandler":Lcn/xutils/commons/function/FailableConsumer;, "Lcn/xutils/commons/function/FailableConsumer<Ljava/lang/Throwable;+Ljava/lang/Throwable;>;"
    :goto_0
    invoke-static {p2}, Lcn/xutils/commons/stream/Streams;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 522
    const/4 v1, 0x0

    .line 524
    .local v1, "th":Ljava/lang/Throwable;
    :try_start_0
    invoke-interface {p0}, Lcn/xutils/commons/function/FailableRunnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    goto :goto_1

    .line 525
    :catchall_0
    move-exception v2

    .line 526
    .local v2, "t":Ljava/lang/Throwable;
    move-object v1, v2

    .line 528
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz p2, :cond_2

    .line 529
    array-length v2, p2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 531
    .local v4, "runnable":Lcn/xutils/commons/function/FailableRunnable;, "Lcn/xutils/commons/function/FailableRunnable<*>;"
    :try_start_1
    invoke-interface {v4}, Lcn/xutils/commons/function/FailableRunnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 536
    goto :goto_3

    .line 532
    :catchall_1
    move-exception v5

    .line 533
    .local v5, "t":Ljava/lang/Throwable;
    if-nez v1, :cond_1

    .line 534
    move-object v1, v5

    .line 529
    .end local v4    # "runnable":Lcn/xutils/commons/function/FailableRunnable;, "Lcn/xutils/commons/function/FailableRunnable<*>;"
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 539
    :cond_2
    if-eqz v1, :cond_3

    .line 541
    :try_start_2
    invoke-interface {v0, v1}, Lcn/xutils/commons/function/FailableConsumer;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 544
    goto :goto_4

    .line 542
    :catchall_2
    move-exception v2

    .line 543
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-static {v2}, Lcn/xutils/commons/function/Failable;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 546
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_4
    return-void
.end method

.method public static varargs tryWithResources(Lcn/xutils/commons/function/FailableRunnable;[Lcn/xutils/commons/function/FailableRunnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;[",
            "Lcn/xutils/commons/function/FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 568
    .local p0, "action":Lcn/xutils/commons/function/FailableRunnable;, "Lcn/xutils/commons/function/FailableRunnable<+Ljava/lang/Throwable;>;"
    .local p1, "resources":[Lcn/xutils/commons/function/FailableRunnable;, "[Lcn/xutils/commons/function/FailableRunnable<+Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/function/Failable;->tryWithResources(Lcn/xutils/commons/function/FailableRunnable;Lcn/xutils/commons/function/FailableConsumer;[Lcn/xutils/commons/function/FailableRunnable;)V

    .line 569
    return-void
.end method
