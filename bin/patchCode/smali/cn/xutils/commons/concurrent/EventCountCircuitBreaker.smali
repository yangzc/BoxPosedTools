.class public Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;
.super Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;
.source "EventCountCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;,
        Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategy;,
        Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategyClosed;,
        Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategyOpen;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/xutils/commons/concurrent/AbstractCircuitBreaker<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final STRATEGY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;",
            "Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;",
            ">;"
        }
    .end annotation
.end field

.field private final closingInterval:J

.field private final closingThreshold:I

.field private final openingInterval:J

.field private final openingThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 141
    invoke-static {}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->createStrategyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->STRATEGY_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1, "threshold"    # I
    .param p2, "checkInterval"    # J
    .param p4, "checkUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 214
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;-><init>(IJLjava/util/concurrent/TimeUnit;I)V

    .line 215
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;I)V
    .locals 9
    .param p1, "openingThreshold"    # I
    .param p2, "checkInterval"    # J
    .param p4, "checkUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "closingThreshold"    # I

    .line 199
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;-><init>(IJLjava/util/concurrent/TimeUnit;IJLjava/util/concurrent/TimeUnit;)V

    .line 201
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;IJLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "openingThreshold"    # I
    .param p2, "openingInterval"    # J
    .param p4, "openingUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "closingThreshold"    # I
    .param p6, "closingInterval"    # J
    .param p8, "closingUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 176
    invoke-direct {p0}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;-><init>()V

    .line 177
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;

    .line 178
    iput p1, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->openingThreshold:I

    .line 179
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->openingInterval:J

    .line 180
    iput p5, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->closingThreshold:I

    .line 181
    invoke-virtual {p8, p6, p7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->closingInterval:J

    .line 182
    return-void
.end method

.method private changeStateAndStartNewCheckInterval(Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;)V
    .locals 5
    .param p1, "newState"    # Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    .line 362
    invoke-virtual {p0, p1}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->changeState(Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;)V

    .line 363
    iget-object v0, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->nanoTime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 364
    return-void
.end method

.method private static createStrategyMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;",
            "Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategy;",
            ">;"
        }
    .end annotation

    .line 416
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 417
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategy;>;"
    sget-object v1, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;->CLOSED:Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    new-instance v2, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategyClosed;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategyClosed;-><init>(Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategyClosed-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v1, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;->OPEN:Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    new-instance v2, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategyOpen;

    invoke-direct {v2, v3}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategyOpen;-><init>(Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategyOpen-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-object v0
.end method

.method private nextCheckIntervalData(ILcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;J)Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    .locals 1
    .param p1, "increment"    # I
    .param p2, "currentData"    # Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    .param p3, "currentState"    # Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;
    .param p4, "time"    # J

    .line 380
    invoke-static {p3}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->stateStrategy(Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;)Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategy;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p4, p5}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategy;->isCheckIntervalFinished(Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    invoke-direct {v0, p1, p4, p5}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    .local v0, "nextData":Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    goto :goto_0

    .line 383
    .end local v0    # "nextData":Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    :cond_0
    invoke-virtual {p2, p1}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;->increment(I)Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    move-result-object v0

    .line 385
    .restart local v0    # "nextData":Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    :goto_0
    return-object v0
.end method

.method private performStateCheck(I)Z
    .locals 10
    .param p1, "increment"    # I

    .line 324
    nop

    :cond_0
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->nanoTime()J

    move-result-wide v6

    .line 325
    .local v6, "time":J
    iget-object v0, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    .line 326
    .local v8, "currentState":Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;
    iget-object v0, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    .line 327
    .local v9, "currentData":Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    move-object v0, p0

    move v1, p1

    move-object v2, v9

    move-object v3, v8

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->nextCheckIntervalData(ILcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;J)Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    move-result-object v0

    .line 328
    .end local v6    # "time":J
    .local v0, "nextData":Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    invoke-direct {p0, v9, v0}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->updateCheckIntervalData(Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    invoke-static {v8}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->stateStrategy(Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;)Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategy;

    move-result-object v1

    invoke-virtual {v1, p0, v9, v0}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategy;->isStateTransition(Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    invoke-virtual {v8}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;->oppositeState()Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    move-result-object v8

    .line 334
    invoke-direct {p0, v8}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->changeStateAndStartNewCheckInterval(Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;)V

    .line 336
    :cond_1
    invoke-static {v8}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->isOpen(Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static stateStrategy(Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;)Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategy;
    .locals 1
    .param p0, "state"    # Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    .line 406
    sget-object v0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->STRATEGY_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$StateStrategy;

    return-object v0
.end method

.method private updateCheckIntervalData(Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;)Z
    .locals 1
    .param p1, "currentData"    # Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    .param p2, "nextData"    # Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    .line 351
    if-eq p1, p2, :cond_1

    iget-object v0, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;

    .line 352
    invoke-static {v0, p1, p2}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 351
    :goto_1
    return v0
.end method


# virtual methods
.method public checkState()Z
    .locals 1

    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->performStateCheck(I)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 5

    .line 307
    invoke-super {p0}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;->close()V

    .line 308
    iget-object v0, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->nanoTime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 309
    return-void
.end method

.method public getClosingInterval()J
    .locals 2

    .line 254
    iget-wide v0, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->closingInterval:J

    return-wide v0
.end method

.method public getClosingThreshold()I
    .locals 1

    .line 245
    iget v0, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->closingThreshold:I

    return v0
.end method

.method public getOpeningInterval()J
    .locals 2

    .line 234
    iget-wide v0, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->openingInterval:J

    return-wide v0
.end method

.method public getOpeningThreshold()I
    .locals 1

    .line 225
    iget v0, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->openingThreshold:I

    return v0
.end method

.method public incrementAndCheckState()Z
    .locals 1

    .line 284
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->incrementAndCheckState(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public incrementAndCheckState(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "increment"    # Ljava/lang/Integer;

    .line 272
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->performStateCheck(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic incrementAndCheckState(Ljava/lang/Object;)Z
    .locals 0

    .line 138
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->incrementAndCheckState(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method nanoTime()J
    .locals 2

    .line 395
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public open()V
    .locals 5

    .line 295
    invoke-super {p0}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;->open()V

    .line 296
    iget-object v0, p0, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker;->nanoTime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcn/xutils/commons/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 297
    return-void
.end method
