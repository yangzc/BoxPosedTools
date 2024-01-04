.class public Lcn/xutils/commons/concurrent/TimedSemaphore;
.super Ljava/lang/Object;
.source "TimedSemaphore.java"


# static fields
.field public static final NO_LIMIT:I = 0x0

.field private static final THREAD_POOL_SIZE:I = 0x1


# instance fields
.field private acquireCount:I

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private lastCallsPerPeriod:I

.field private limit:I

.field private final ownExecutor:Z

.field private final period:J

.field private periodCount:J

.field private shutdown:Z

.field private task:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private totalAcquireCount:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;I)V
    .locals 6
    .param p1, "timePeriod"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "limit"    # I

    .line 196
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/xutils/commons/concurrent/TimedSemaphore;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;I)V

    .line 197
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;I)V
    .locals 7
    .param p1, "service"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "timePeriod"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "limit"    # I

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    const-string v6, "Time period must be greater than 0!"

    move-wide v4, p2

    invoke-static/range {v0 .. v6}, Lcn/xutils/commons/Validate;->inclusiveBetween(JJJLjava/lang/String;)V

    .line 215
    iput-wide p2, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->period:J

    .line 216
    iput-object p4, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->unit:Ljava/util/concurrent/TimeUnit;

    .line 218
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 219
    iput-object p1, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 220
    iput-boolean v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->ownExecutor:Z

    goto :goto_0

    .line 222
    :cond_0
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 224
    .local v1, "s":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setContinueExistingPeriodicTasksAfterShutdownPolicy(Z)V

    .line 225
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    .line 226
    iput-object v1, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 227
    iput-boolean v2, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->ownExecutor:Z

    .line 230
    .end local v1    # "s":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :goto_0
    invoke-virtual {p0, p5}, Lcn/xutils/commons/concurrent/TimedSemaphore;->setLimit(I)V

    .line 231
    return-void
.end method

.method private acquirePermit()Z
    .locals 2

    .line 458
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/TimedSemaphore;->getLimit()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->acquireCount:I

    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/TimedSemaphore;->getLimit()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 459
    :cond_1
    :goto_0
    iget v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->acquireCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->acquireCount:I

    .line 460
    return v1
.end method

.method private prepareAcquire()V
    .locals 2

    .line 440
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/TimedSemaphore;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    iget-object v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->task:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/TimedSemaphore;->startTimer()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->task:Ljava/util/concurrent/ScheduledFuture;

    .line 447
    :cond_0
    return-void

    .line 441
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TimedSemaphore is shut down!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 302
    :try_start_0
    invoke-direct {p0}, Lcn/xutils/commons/concurrent/TimedSemaphore;->prepareAcquire()V

    .line 306
    :cond_0
    invoke-direct {p0}, Lcn/xutils/commons/concurrent/TimedSemaphore;->acquirePermit()Z

    move-result v0

    .line 307
    .local v0, "canPass":Z
    if-nez v0, :cond_1

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local p0    # "this":Lcn/xutils/commons/concurrent/TimedSemaphore;
    :cond_1
    if-eqz v0, :cond_0

    .line 311
    monitor-exit p0

    return-void

    .line 301
    .end local v0    # "canPass":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized endOfPeriod()V
    .locals 5

    monitor-enter p0

    .line 428
    :try_start_0
    iget v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->acquireCount:I

    iput v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->lastCallsPerPeriod:I

    .line 429
    iget-wide v1, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->totalAcquireCount:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->totalAcquireCount:J

    .line 430
    iget-wide v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->periodCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->periodCount:J

    .line 431
    const/4 v0, 0x0

    iput v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->acquireCount:I

    .line 432
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    monitor-exit p0

    return-void

    .line 427
    .end local p0    # "this":Lcn/xutils/commons/concurrent/TimedSemaphore;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAcquireCount()I
    .locals 1

    monitor-enter p0

    .line 350
    :try_start_0
    iget v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->acquireCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 350
    .end local p0    # "this":Lcn/xutils/commons/concurrent/TimedSemaphore;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAvailablePermits()I
    .locals 2

    monitor-enter p0

    .line 365
    :try_start_0
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/TimedSemaphore;->getLimit()I

    move-result v0

    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/TimedSemaphore;->getAcquireCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 365
    .end local p0    # "this":Lcn/xutils/commons/concurrent/TimedSemaphore;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAverageCallsPerPeriod()D
    .locals 4

    monitor-enter p0

    .line 378
    :try_start_0
    iget-wide v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->periodCount:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 379
    :cond_0
    iget-wide v2, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->totalAcquireCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v2, v2

    long-to-double v0, v0

    div-double v0, v2, v0

    .line 378
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 377
    .end local p0    # "this":Lcn/xutils/commons/concurrent/TimedSemaphore;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 408
    iget-object v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public declared-synchronized getLastAcquiresPerPeriod()I
    .locals 1

    monitor-enter p0

    .line 340
    :try_start_0
    iget v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->lastCallsPerPeriod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 340
    .end local p0    # "this":Lcn/xutils/commons/concurrent/TimedSemaphore;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getLimit()I
    .locals 1

    monitor-enter p0

    .line 241
    :try_start_0
    iget v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->limit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 241
    .end local p0    # "this":Lcn/xutils/commons/concurrent/TimedSemaphore;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPeriod()J
    .locals 2

    .line 390
    iget-wide v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->period:J

    return-wide v0
.end method

.method public getUnit()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 399
    iget-object v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->unit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public declared-synchronized isShutdown()Z
    .locals 1

    monitor-enter p0

    .line 287
    :try_start_0
    iget-boolean v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 287
    .end local p0    # "this":Lcn/xutils/commons/concurrent/TimedSemaphore;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    monitor-enter p0

    .line 255
    :try_start_0
    iput p1, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->limit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 254
    .end local p0    # "this":Lcn/xutils/commons/concurrent/TimedSemaphore;
    .end local p1    # "limit":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    monitor-enter p0

    .line 264
    :try_start_0
    iget-boolean v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->shutdown:Z

    if-nez v0, :cond_2

    .line 266
    iget-boolean v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->ownExecutor:Z

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/TimedSemaphore;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 271
    .end local p0    # "this":Lcn/xutils/commons/concurrent/TimedSemaphore;
    :cond_0
    iget-object v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->task:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 272
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 275
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_2
    monitor-exit p0

    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected startTimer()Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/TimedSemaphore;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcn/xutils/commons/concurrent/TimedSemaphore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/xutils/commons/concurrent/TimedSemaphore$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/concurrent/TimedSemaphore;)V

    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/TimedSemaphore;->getPeriod()J

    move-result-wide v2

    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/TimedSemaphore;->getPeriod()J

    move-result-wide v4

    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/TimedSemaphore;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized tryAcquire()Z
    .locals 1

    monitor-enter p0

    .line 325
    :try_start_0
    invoke-direct {p0}, Lcn/xutils/commons/concurrent/TimedSemaphore;->prepareAcquire()V

    .line 326
    invoke-direct {p0}, Lcn/xutils/commons/concurrent/TimedSemaphore;->acquirePermit()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 324
    .end local p0    # "this":Lcn/xutils/commons/concurrent/TimedSemaphore;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
