.class public abstract Lcn/xutils/commons/concurrent/BackgroundInitializer;
.super Ljava/lang/Object;
.source "BackgroundInitializer.java"

# interfaces
.implements Lcn/xutils/commons/concurrent/ConcurrentInitializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/concurrent/BackgroundInitializer$InitializationTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/xutils/commons/concurrent/ConcurrentInitializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;

.field private externalExecutor:Ljava/util/concurrent/ExecutorService;

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 100
    .local p0, "this":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/xutils/commons/concurrent/BackgroundInitializer;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 101
    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "exec"    # Ljava/util/concurrent/ExecutorService;

    .line 113
    .local p0, "this":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p0, p1}, Lcn/xutils/commons/concurrent/BackgroundInitializer;->setExternalExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 115
    return-void
.end method

.method private createExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 299
    .local p0, "this":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>;"
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/BackgroundInitializer;->getTaskCount()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private createTask(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p1, "execDestroy"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    .line 289
    .local p0, "this":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>;"
    new-instance v0, Lcn/xutils/commons/concurrent/BackgroundInitializer$InitializationTask;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/concurrent/BackgroundInitializer$InitializationTask;-><init>(Lcn/xutils/commons/concurrent/BackgroundInitializer;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/xutils/commons/concurrent/ConcurrentException;
        }
    .end annotation

    .line 210
    .local p0, "this":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/BackgroundInitializer;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 216
    .local v0, "iex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 217
    new-instance v1, Lcn/xutils/commons/concurrent/ConcurrentException;

    invoke-direct {v1, v0}, Lcn/xutils/commons/concurrent/ConcurrentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 211
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 212
    .local v0, "execex":Ljava/util/concurrent/ExecutionException;
    invoke-static {v0}, Lcn/xutils/commons/concurrent/ConcurrentUtils;->handleCause(Ljava/util/concurrent/ExecutionException;)V

    .line 213
    const/4 v1, 0x0

    return-object v1
.end method

.method protected final declared-synchronized getActiveExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .local p0, "this":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>;"
    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcn/xutils/commons/concurrent/BackgroundInitializer;->executor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 247
    .end local p0    # "this":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getExternalExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .local p0, "this":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>;"
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcn/xutils/commons/concurrent/BackgroundInitializer;->externalExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 123
    .end local p0    # "this":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFuture()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>;"
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcn/xutils/commons/concurrent/BackgroundInitializer;->future:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 234
    monitor-exit p0

    return-object v0

    .line 231
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "start() must be called first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    .end local p0    # "this":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getTaskCount()I
    .locals 1

    .line 262
    .local p0, "this":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract initialize()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public declared-synchronized isStarted()Z
    .locals 1

    .local p0, "this":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>;"
    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcn/xutils/commons/concurrent/BackgroundInitializer;->future:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 134
    .end local p0    # "this":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setExternalExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "externalExecutor"    # Ljava/util/concurrent/ExecutorService;

    .local p0, "this":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>;"
    monitor-enter p0

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/BackgroundInitializer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iput-object p1, p0, Lcn/xutils/commons/concurrent/BackgroundInitializer;->externalExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 154
    .end local p0    # "this":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>;"
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set ExecutorService after start()!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .end local p1    # "externalExecutor":Ljava/util/concurrent/ExecutorService;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()Z
    .locals 3

    .local p0, "this":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>;"
    monitor-enter p0

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/BackgroundInitializer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/BackgroundInitializer;->getExternalExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/concurrent/BackgroundInitializer;->executor:Ljava/util/concurrent/ExecutorService;

    .line 179
    if-nez v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcn/xutils/commons/concurrent/BackgroundInitializer;->createExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    move-object v1, v0

    .local v1, "tempExec":Ljava/util/concurrent/ExecutorService;
    iput-object v0, p0, Lcn/xutils/commons/concurrent/BackgroundInitializer;->executor:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 182
    .end local v1    # "tempExec":Ljava/util/concurrent/ExecutorService;
    .end local p0    # "this":Lcn/xutils/commons/concurrent/BackgroundInitializer;, "Lcn/xutils/commons/concurrent/BackgroundInitializer<TT;>;"
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    .line 185
    .restart local v1    # "tempExec":Ljava/util/concurrent/ExecutorService;
    :goto_0
    iget-object v0, p0, Lcn/xutils/commons/concurrent/BackgroundInitializer;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v1}, Lcn/xutils/commons/concurrent/BackgroundInitializer;->createTask(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Callable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/concurrent/BackgroundInitializer;->future:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 190
    .end local v1    # "tempExec":Ljava/util/concurrent/ExecutorService;
    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
