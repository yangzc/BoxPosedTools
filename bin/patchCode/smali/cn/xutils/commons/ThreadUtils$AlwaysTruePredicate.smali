.class final Lcn/xutils/commons/ThreadUtils$AlwaysTruePredicate;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Lcn/xutils/commons/ThreadUtils$ThreadPredicate;
.implements Lcn/xutils/commons/ThreadUtils$ThreadGroupPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlwaysTruePredicate"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcn/xutils/commons/ThreadUtils$AlwaysTruePredicate-IA;)V
    .locals 0

    invoke-direct {p0}, Lcn/xutils/commons/ThreadUtils$AlwaysTruePredicate;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Thread;)Z
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public test(Ljava/lang/ThreadGroup;)Z
    .locals 1
    .param p1, "threadGroup"    # Ljava/lang/ThreadGroup;

    .line 61
    const/4 v0, 0x1

    return v0
.end method
