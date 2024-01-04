.class public Lcn/xutils/commons/time/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/time/StopWatch$State;,
        Lcn/xutils/commons/time/StopWatch$SplitState;
    }
.end annotation


# static fields
.field private static final NANO_2_MILLIS:J = 0xf4240L


# instance fields
.field private final message:Ljava/lang/String;

.field private runningState:Lcn/xutils/commons/time/StopWatch$State;

.field private splitState:Lcn/xutils/commons/time/StopWatch$SplitState;

.field private startTimeMillis:J

.field private startTimeNanos:J

.field private stopTimeMillis:J

.field private stopTimeNanos:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/xutils/commons/time/StopWatch;-><init>(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    sget-object v0, Lcn/xutils/commons/time/StopWatch$State;->UNSTARTED:Lcn/xutils/commons/time/StopWatch$State;

    iput-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    .line 197
    sget-object v0, Lcn/xutils/commons/time/StopWatch$SplitState;->UNSPLIT:Lcn/xutils/commons/time/StopWatch$SplitState;

    iput-object v0, p0, Lcn/xutils/commons/time/StopWatch;->splitState:Lcn/xutils/commons/time/StopWatch$SplitState;

    .line 238
    iput-object p1, p0, Lcn/xutils/commons/time/StopWatch;->message:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public static create()Lcn/xutils/commons/time/StopWatch;
    .locals 1

    .line 166
    new-instance v0, Lcn/xutils/commons/time/StopWatch;

    invoke-direct {v0}, Lcn/xutils/commons/time/StopWatch;-><init>()V

    return-object v0
.end method

.method public static createStarted()Lcn/xutils/commons/time/StopWatch;
    .locals 1

    .line 177
    new-instance v0, Lcn/xutils/commons/time/StopWatch;

    invoke-direct {v0}, Lcn/xutils/commons/time/StopWatch;-><init>()V

    .line 178
    .local v0, "sw":Lcn/xutils/commons/time/StopWatch;
    invoke-virtual {v0}, Lcn/xutils/commons/time/StopWatch;->start()V

    .line 179
    return-object v0
.end method


# virtual methods
.method public formatSplitTime()Ljava/lang/String;
    .locals 2

    .line 248
    invoke-virtual {p0}, Lcn/xutils/commons/time/StopWatch;->getSplitTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/xutils/commons/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatTime()Ljava/lang/String;
    .locals 2

    .line 258
    invoke-virtual {p0}, Lcn/xutils/commons/time/StopWatch;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/xutils/commons/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getNanoTime()J
    .locals 4

    .line 284
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    sget-object v1, Lcn/xutils/commons/time/StopWatch$State;->STOPPED:Lcn/xutils/commons/time/StopWatch$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    sget-object v1, Lcn/xutils/commons/time/StopWatch$State;->SUSPENDED:Lcn/xutils/commons/time/StopWatch$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    sget-object v1, Lcn/xutils/commons/time/StopWatch$State;->UNSTARTED:Lcn/xutils/commons/time/StopWatch$State;

    if-ne v0, v1, :cond_1

    .line 288
    const-wide/16 v0, 0x0

    return-wide v0

    .line 290
    :cond_1
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    sget-object v1, Lcn/xutils/commons/time/StopWatch$State;->RUNNING:Lcn/xutils/commons/time/StopWatch$State;

    if-ne v0, v1, :cond_2

    .line 291
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/xutils/commons/time/StopWatch;->startTimeNanos:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 293
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal running state has occurred."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_3
    :goto_0
    iget-wide v0, p0, Lcn/xutils/commons/time/StopWatch;->stopTimeNanos:J

    iget-wide v2, p0, Lcn/xutils/commons/time/StopWatch;->startTimeNanos:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getSplitNanoTime()J
    .locals 4

    .line 310
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->splitState:Lcn/xutils/commons/time/StopWatch$SplitState;

    sget-object v1, Lcn/xutils/commons/time/StopWatch$SplitState;->SPLIT:Lcn/xutils/commons/time/StopWatch$SplitState;

    if-ne v0, v1, :cond_0

    .line 313
    iget-wide v0, p0, Lcn/xutils/commons/time/StopWatch;->stopTimeNanos:J

    iget-wide v2, p0, Lcn/xutils/commons/time/StopWatch;->startTimeNanos:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be split to get the split time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSplitTime()J
    .locals 4

    .line 330
    invoke-virtual {p0}, Lcn/xutils/commons/time/StopWatch;->getSplitNanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 343
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    sget-object v1, Lcn/xutils/commons/time/StopWatch$State;->UNSTARTED:Lcn/xutils/commons/time/StopWatch$State;

    if-eq v0, v1, :cond_0

    .line 347
    iget-wide v0, p0, Lcn/xutils/commons/time/StopWatch;->startTimeMillis:J

    return-wide v0

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStopTime()J
    .locals 2

    .line 360
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    sget-object v1, Lcn/xutils/commons/time/StopWatch$State;->UNSTARTED:Lcn/xutils/commons/time/StopWatch$State;

    if-eq v0, v1, :cond_0

    .line 364
    iget-wide v0, p0, Lcn/xutils/commons/time/StopWatch;->stopTimeMillis:J

    return-wide v0

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTime()J
    .locals 4

    .line 378
    invoke-virtual {p0}, Lcn/xutils/commons/time/StopWatch;->getNanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 396
    invoke-virtual {p0}, Lcn/xutils/commons/time/StopWatch;->getNanoTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isStarted()Z
    .locals 1

    .line 406
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    invoke-virtual {v0}, Lcn/xutils/commons/time/StopWatch$State;->isStarted()Z

    move-result v0

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .line 417
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    invoke-virtual {v0}, Lcn/xutils/commons/time/StopWatch$State;->isStopped()Z

    move-result v0

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .line 428
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    invoke-virtual {v0}, Lcn/xutils/commons/time/StopWatch$State;->isSuspended()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 439
    sget-object v0, Lcn/xutils/commons/time/StopWatch$State;->UNSTARTED:Lcn/xutils/commons/time/StopWatch$State;

    iput-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    .line 440
    sget-object v0, Lcn/xutils/commons/time/StopWatch$SplitState;->UNSPLIT:Lcn/xutils/commons/time/StopWatch$SplitState;

    iput-object v0, p0, Lcn/xutils/commons/time/StopWatch;->splitState:Lcn/xutils/commons/time/StopWatch$SplitState;

    .line 441
    return-void
.end method

.method public resume()V
    .locals 6

    .line 455
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    sget-object v1, Lcn/xutils/commons/time/StopWatch$State;->SUSPENDED:Lcn/xutils/commons/time/StopWatch$State;

    if-ne v0, v1, :cond_0

    .line 458
    iget-wide v0, p0, Lcn/xutils/commons/time/StopWatch;->startTimeNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/xutils/commons/time/StopWatch;->stopTimeNanos:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/xutils/commons/time/StopWatch;->startTimeNanos:J

    .line 459
    sget-object v0, Lcn/xutils/commons/time/StopWatch$State;->RUNNING:Lcn/xutils/commons/time/StopWatch$State;

    iput-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    .line 460
    return-void

    .line 456
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be suspended to resume. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public split()V
    .locals 2

    .line 474
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    sget-object v1, Lcn/xutils/commons/time/StopWatch$State;->RUNNING:Lcn/xutils/commons/time/StopWatch$State;

    if-ne v0, v1, :cond_0

    .line 477
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/xutils/commons/time/StopWatch;->stopTimeNanos:J

    .line 478
    sget-object v0, Lcn/xutils/commons/time/StopWatch$SplitState;->SPLIT:Lcn/xutils/commons/time/StopWatch$SplitState;

    iput-object v0, p0, Lcn/xutils/commons/time/StopWatch;->splitState:Lcn/xutils/commons/time/StopWatch$SplitState;

    .line 479
    return-void

    .line 475
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 2

    .line 492
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    sget-object v1, Lcn/xutils/commons/time/StopWatch$State;->STOPPED:Lcn/xutils/commons/time/StopWatch$State;

    if-eq v0, v1, :cond_1

    .line 495
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    sget-object v1, Lcn/xutils/commons/time/StopWatch$State;->UNSTARTED:Lcn/xutils/commons/time/StopWatch$State;

    if-ne v0, v1, :cond_0

    .line 498
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/xutils/commons/time/StopWatch;->startTimeNanos:J

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/xutils/commons/time/StopWatch;->startTimeMillis:J

    .line 500
    sget-object v0, Lcn/xutils/commons/time/StopWatch$State;->RUNNING:Lcn/xutils/commons/time/StopWatch$State;

    iput-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    .line 501
    return-void

    .line 496
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch already started. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be reset before being restarted. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 2

    .line 514
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    sget-object v1, Lcn/xutils/commons/time/StopWatch$State;->RUNNING:Lcn/xutils/commons/time/StopWatch$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    sget-object v1, Lcn/xutils/commons/time/StopWatch$State;->SUSPENDED:Lcn/xutils/commons/time/StopWatch$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 515
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    sget-object v1, Lcn/xutils/commons/time/StopWatch$State;->RUNNING:Lcn/xutils/commons/time/StopWatch$State;

    if-ne v0, v1, :cond_2

    .line 518
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/xutils/commons/time/StopWatch;->stopTimeNanos:J

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/xutils/commons/time/StopWatch;->stopTimeMillis:J

    .line 521
    :cond_2
    sget-object v0, Lcn/xutils/commons/time/StopWatch$State;->STOPPED:Lcn/xutils/commons/time/StopWatch$State;

    iput-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    .line 522
    return-void
.end method

.method public suspend()V
    .locals 2

    .line 536
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    sget-object v1, Lcn/xutils/commons/time/StopWatch$State;->RUNNING:Lcn/xutils/commons/time/StopWatch$State;

    if-ne v0, v1, :cond_0

    .line 539
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/xutils/commons/time/StopWatch;->stopTimeNanos:J

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/xutils/commons/time/StopWatch;->stopTimeMillis:J

    .line 541
    sget-object v0, Lcn/xutils/commons/time/StopWatch$State;->SUSPENDED:Lcn/xutils/commons/time/StopWatch$State;

    iput-object v0, p0, Lcn/xutils/commons/time/StopWatch;->runningState:Lcn/xutils/commons/time/StopWatch$State;

    .line 542
    return-void

    .line 537
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be running to suspend. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toSplitString()Ljava/lang/String;
    .locals 4

    .line 556
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->message:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "msgStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/xutils/commons/time/StopWatch;->formatSplitTime()Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, "formattedTime":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 573
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->message:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "msgStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/xutils/commons/time/StopWatch;->formatTime()Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "formattedTime":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public unsplit()V
    .locals 2

    .line 590
    iget-object v0, p0, Lcn/xutils/commons/time/StopWatch;->splitState:Lcn/xutils/commons/time/StopWatch$SplitState;

    sget-object v1, Lcn/xutils/commons/time/StopWatch$SplitState;->SPLIT:Lcn/xutils/commons/time/StopWatch$SplitState;

    if-ne v0, v1, :cond_0

    .line 593
    sget-object v0, Lcn/xutils/commons/time/StopWatch$SplitState;->UNSPLIT:Lcn/xutils/commons/time/StopWatch$SplitState;

    iput-object v0, p0, Lcn/xutils/commons/time/StopWatch;->splitState:Lcn/xutils/commons/time/StopWatch$SplitState;

    .line 594
    return-void

    .line 591
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been split. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
