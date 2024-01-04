.class final enum Lcn/xutils/commons/time/StopWatch$State$2;
.super Lcn/xutils/commons/time/StopWatch$State;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/time/StopWatch$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/xutils/commons/time/StopWatch$State;-><init>(Ljava/lang/String;ILcn/xutils/commons/time/StopWatch$State-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/xutils/commons/time/StopWatch$State$2-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/time/StopWatch$State$2;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method isStarted()Z
    .locals 1

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method isStopped()Z
    .locals 1

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method isSuspended()Z
    .locals 1

    .line 100
    const/4 v0, 0x0

    return v0
.end method
