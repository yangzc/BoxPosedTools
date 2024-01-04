.class final enum Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State$2;
.super Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;
.source "AbstractCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;-><init>(Ljava/lang/String;ILcn/xutils/commons/concurrent/AbstractCircuitBreaker$State-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/xutils/commons/concurrent/AbstractCircuitBreaker$State$2-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State$2;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public oppositeState()Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;
    .locals 1

    .line 162
    sget-object v0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State$2;->CLOSED:Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    return-object v0
.end method
