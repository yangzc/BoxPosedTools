.class Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;
.super Ljava/lang/Object;
.source "EventCountCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckIntervalData"
.end annotation


# instance fields
.field private final checkIntervalStart:J

.field private final eventCount:I


# direct methods
.method constructor <init>(IJ)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "intervalStart"    # J

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput p1, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;->eventCount:I

    .line 442
    iput-wide p2, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;->checkIntervalStart:J

    .line 443
    return-void
.end method


# virtual methods
.method public getCheckIntervalStart()J
    .locals 2

    .line 460
    iget-wide v0, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;->checkIntervalStart:J

    return-wide v0
.end method

.method public getEventCount()I
    .locals 1

    .line 451
    iget v0, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;->eventCount:I

    return v0
.end method

.method public increment(I)Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    .locals 4
    .param p1, "delta"    # I

    .line 471
    if-nez p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getEventCount()I

    move-result v1

    add-int/2addr v1, p1

    .line 472
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getCheckIntervalStart()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    .line 471
    :goto_0
    return-object v0
.end method
