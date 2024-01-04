.class Lcn/xutils/commons/concurrent/UncheckedFutureImpl;
.super Lcn/xutils/commons/concurrent/AbstractFutureProxy;
.source "UncheckedFutureImpl.java"

# interfaces
.implements Lcn/xutils/commons/concurrent/UncheckedFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/xutils/commons/concurrent/AbstractFutureProxy<",
        "TV;>;",
        "Lcn/xutils/commons/concurrent/UncheckedFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcn/xutils/commons/concurrent/UncheckedFutureImpl;, "Lcn/xutils/commons/concurrent/UncheckedFutureImpl<TV;>;"
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    invoke-direct {p0, p1}, Lcn/xutils/commons/concurrent/AbstractFutureProxy;-><init>(Ljava/util/concurrent/Future;)V

    .line 38
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcn/xutils/commons/concurrent/UncheckedFutureImpl;, "Lcn/xutils/commons/concurrent/UncheckedFutureImpl<TV;>;"
    :try_start_0
    invoke-super {p0}, Lcn/xutils/commons/concurrent/AbstractFutureProxy;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Lcn/xutils/commons/concurrent/UncheckedExecutionException;

    invoke-direct {v1, v0}, Lcn/xutils/commons/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 44
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcn/xutils/commons/exception/UncheckedInterruptedException;

    invoke-direct {v1, v0}, Lcn/xutils/commons/exception/UncheckedInterruptedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcn/xutils/commons/concurrent/UncheckedFutureImpl;, "Lcn/xutils/commons/concurrent/UncheckedFutureImpl<TV;>;"
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcn/xutils/commons/concurrent/AbstractFutureProxy;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Lcn/xutils/commons/concurrent/UncheckedTimeoutException;

    invoke-direct {v1, v0}, Lcn/xutils/commons/concurrent/UncheckedTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 57
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 58
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Lcn/xutils/commons/concurrent/UncheckedExecutionException;

    invoke-direct {v1, v0}, Lcn/xutils/commons/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 55
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcn/xutils/commons/exception/UncheckedInterruptedException;

    invoke-direct {v1, v0}, Lcn/xutils/commons/exception/UncheckedInterruptedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
