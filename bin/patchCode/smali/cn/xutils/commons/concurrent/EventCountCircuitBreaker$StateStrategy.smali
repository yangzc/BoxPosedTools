.class abstract Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategy;
.super Ljava/lang/Object;
.source "EventCountCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StateStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategy-IA;)V
    .locals 0

    invoke-direct {p0}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract fetchCheckInterval(Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;)J
.end method

.method public isCheckIntervalFinished(Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;J)Z
    .locals 4
    .param p1, "breaker"    # Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;
    .param p2, "currentData"    # Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    .param p3, "now"    # J

    .line 492
    invoke-virtual {p2}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getCheckIntervalStart()J

    move-result-wide v0

    sub-long v0, p3, v0

    invoke-virtual {p0, p1}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategy;->fetchCheckInterval(Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isStateTransition(Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;)Z
.end method
