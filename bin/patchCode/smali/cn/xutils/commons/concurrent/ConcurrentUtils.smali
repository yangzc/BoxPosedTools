.class public Lcn/xutils/commons/concurrent/ConcurrentUtils;
.super Ljava/lang/Object;
.source "ConcurrentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static checkedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 143
    invoke-static {p0}, Lcn/xutils/commons/exception/ExceptionUtils;->isChecked(Ljava/lang/Throwable;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a checked exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/xutils/commons/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 144
    return-object p0
.end method

.method public static constantFuture(Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 299
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture;

    invoke-direct {v0, p0}, Lcn/xutils/commons/concurrent/ConcurrentUtils$ConstantFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lcn/xutils/commons/concurrent/ConcurrentInitializer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;TK;",
            "Lcn/xutils/commons/concurrent/ConcurrentInitializer<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/xutils/commons/concurrent/ConcurrentException;
        }
    .end annotation

    .line 249
    .local p0, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "init":Lcn/xutils/commons/concurrent/ConcurrentInitializer;, "Lcn/xutils/commons/concurrent/ConcurrentInitializer<TV;>;"
    if-eqz p0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 254
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_1

    .line 255
    invoke-interface {p2}, Lcn/xutils/commons/concurrent/ConcurrentInitializer;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcn/xutils/commons/concurrent/ConcurrentUtils;->putIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 257
    :cond_1
    return-object v0

    .line 250
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createIfAbsentUnchecked(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lcn/xutils/commons/concurrent/ConcurrentInitializer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;TK;",
            "Lcn/xutils/commons/concurrent/ConcurrentInitializer<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 278
    .local p0, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "init":Lcn/xutils/commons/concurrent/ConcurrentInitializer;, "Lcn/xutils/commons/concurrent/ConcurrentInitializer<TV;>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/concurrent/ConcurrentUtils;->createIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lcn/xutils/commons/concurrent/ConcurrentInitializer;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcn/xutils/commons/concurrent/ConcurrentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "cex":Lcn/xutils/commons/concurrent/ConcurrentException;
    new-instance v1, Lcn/xutils/commons/concurrent/ConcurrentRuntimeException;

    invoke-virtual {v0}, Lcn/xutils/commons/concurrent/ConcurrentException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/xutils/commons/concurrent/ConcurrentRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static extractCause(Ljava/util/concurrent/ExecutionException;)Lcn/xutils/commons/concurrent/ConcurrentException;
    .locals 3
    .param p0, "ex"    # Ljava/util/concurrent/ExecutionException;

    .line 61
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/exception/ExceptionUtils;->throwUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lcn/xutils/commons/concurrent/ConcurrentException;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/concurrent/ConcurrentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 62
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static extractCauseUnchecked(Ljava/util/concurrent/ExecutionException;)Lcn/xutils/commons/concurrent/ConcurrentRuntimeException;
    .locals 3
    .param p0, "ex"    # Ljava/util/concurrent/ExecutionException;

    .line 82
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/exception/ExceptionUtils;->throwUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lcn/xutils/commons/concurrent/ConcurrentRuntimeException;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/concurrent/ConcurrentRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 83
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static handleCause(Ljava/util/concurrent/ExecutionException;)V
    .locals 1
    .param p0, "ex"    # Ljava/util/concurrent/ExecutionException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/xutils/commons/concurrent/ConcurrentException;
        }
    .end annotation

    .line 105
    invoke-static {p0}, Lcn/xutils/commons/concurrent/ConcurrentUtils;->extractCause(Ljava/util/concurrent/ExecutionException;)Lcn/xutils/commons/concurrent/ConcurrentException;

    move-result-object v0

    .line 107
    .local v0, "cex":Lcn/xutils/commons/concurrent/ConcurrentException;
    if-nez v0, :cond_0

    .line 110
    return-void

    .line 108
    :cond_0
    throw v0
.end method

.method public static handleCauseUnchecked(Ljava/util/concurrent/ExecutionException;)V
    .locals 1
    .param p0, "ex"    # Ljava/util/concurrent/ExecutionException;

    .line 126
    invoke-static {p0}, Lcn/xutils/commons/concurrent/ConcurrentUtils;->extractCauseUnchecked(Ljava/util/concurrent/ExecutionException;)Lcn/xutils/commons/concurrent/ConcurrentRuntimeException;

    move-result-object v0

    .line 128
    .local v0, "crex":Lcn/xutils/commons/concurrent/ConcurrentRuntimeException;
    if-nez v0, :cond_0

    .line 131
    return-void

    .line 129
    :cond_0
    throw v0
.end method

.method public static initialize(Lcn/xutils/commons/concurrent/ConcurrentInitializer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/concurrent/ConcurrentInitializer<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/xutils/commons/concurrent/ConcurrentException;
        }
    .end annotation

    .line 162
    .local p0, "initializer":Lcn/xutils/commons/concurrent/ConcurrentInitializer;, "Lcn/xutils/commons/concurrent/ConcurrentInitializer<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcn/xutils/commons/concurrent/ConcurrentInitializer;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static initializeUnchecked(Lcn/xutils/commons/concurrent/ConcurrentInitializer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/concurrent/ConcurrentInitializer<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 180
    .local p0, "initializer":Lcn/xutils/commons/concurrent/ConcurrentInitializer;, "Lcn/xutils/commons/concurrent/ConcurrentInitializer<TT;>;"
    :try_start_0
    invoke-static {p0}, Lcn/xutils/commons/concurrent/ConcurrentUtils;->initialize(Lcn/xutils/commons/concurrent/ConcurrentInitializer;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcn/xutils/commons/concurrent/ConcurrentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "cex":Lcn/xutils/commons/concurrent/ConcurrentException;
    new-instance v1, Lcn/xutils/commons/concurrent/ConcurrentRuntimeException;

    invoke-virtual {v0}, Lcn/xutils/commons/concurrent/ConcurrentException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/xutils/commons/concurrent/ConcurrentRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static putIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    .line 219
    .local p0, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p0, :cond_0

    .line 220
    const/4 v0, 0x0

    return-object v0

    .line 223
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    .local v0, "result":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    return-object v1
.end method
