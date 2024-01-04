.class Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategyOpen;
.super Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategy;
.source "EventCountCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateStrategyOpen"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 544
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategy;-><init>(Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategy-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategyOpen-IA;)V
    .locals 0

    invoke-direct {p0}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategyOpen;-><init>()V

    return-void
.end method


# virtual methods
.method protected fetchCheckInterval(Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;)J
    .locals 2
    .param p1, "breaker"    # Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;

    .line 561
    invoke-virtual {p1}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->getClosingInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public isStateTransition(Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;)Z
    .locals 4
    .param p1, "breaker"    # Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;
    .param p2, "currentData"    # Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    .param p3, "nextData"    # Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    .line 551
    invoke-virtual {p3}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getCheckIntervalStart()J

    move-result-wide v0

    .line 552
    invoke-virtual {p2}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getCheckIntervalStart()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p2}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getEventCount()I

    move-result v0

    invoke-virtual {p1}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->getClosingThreshold()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 551
    :goto_0
    return v0
.end method
