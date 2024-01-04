.class public Lcn/xutils/commons/concurrent/ThresholdCircuitBreaker;
.super Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;
.source "ThresholdCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/xutils/commons/concurrent/AbstractCircuitBreaker<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final INITIAL_COUNT:J


# instance fields
.field private final threshold:J

.field private final used:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "threshold"    # J

    .line 73
    invoke-direct {p0}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcn/xutils/commons/concurrent/ThresholdCircuitBreaker;->used:Ljava/util/concurrent/atomic/AtomicLong;

    .line 75
    iput-wide p1, p0, Lcn/xutils/commons/concurrent/ThresholdCircuitBreaker;->threshold:J

    .line 76
    return-void
.end method


# virtual methods
.method public checkState()Z
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/ThresholdCircuitBreaker;->isOpen()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 3

    .line 102
    invoke-super {p0}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;->close()V

    .line 103
    iget-object v0, p0, Lcn/xutils/commons/concurrent/ThresholdCircuitBreaker;->used:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 104
    return-void
.end method

.method public getThreshold()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcn/xutils/commons/concurrent/ThresholdCircuitBreaker;->threshold:J

    return-wide v0
.end method

.method public incrementAndCheckState(Ljava/lang/Long;)Z
    .locals 4
    .param p1, "increment"    # Ljava/lang/Long;

    .line 113
    iget-wide v0, p0, Lcn/xutils/commons/concurrent/ThresholdCircuitBreaker;->threshold:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/ThresholdCircuitBreaker;->open()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcn/xutils/commons/concurrent/ThresholdCircuitBreaker;->used:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    .line 118
    .local v0, "used":J
    iget-wide v2, p0, Lcn/xutils/commons/concurrent/ThresholdCircuitBreaker;->threshold:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 119
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/ThresholdCircuitBreaker;->open()V

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/ThresholdCircuitBreaker;->checkState()Z

    move-result v2

    return v2
.end method

.method public bridge synthetic incrementAndCheckState(Ljava/lang/Object;)Z
    .locals 0

    .line 52
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/concurrent/ThresholdCircuitBreaker;->incrementAndCheckState(Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method
